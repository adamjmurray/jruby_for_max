require 'midilib/sequence'

VALID_BEAT_UNITS = [1,2,4,8,16]
TICKS_PER_QUARTER_NOTE = 480

inlet_assist 'read/timesig/quantize'
outlet_assist 'note data in coll format', 'track index', 'number of tracks'

def timesig(beats_per_bar, beat_unit)
  beats_per_bar = beats_per_bar.to_i
  beat_unit = beat_unit.to_i
  valid = true
  if beats_per_bar < 1 then
    error "Invalid beats per bar '#{beats_per_bar}'. Must be a positive number."
    valid = false
  end
  if not VALID_BEAT_UNITS.include? beat_unit then
    error "Invalid beat unit '#{beat_unit}'. " + 
          "Beat unit must be one of the following: #{VALID_BEAT_UNITS.inspect}"
    valid = false
  end
  if valid
    set_local(:beats_per_bar, beats_per_bar)
    set_local(:beat_unit, beat_unit)
  end
end

def quantize(ticks)
  set_local(:quantize, ticks)
end

def ccfilter(state=nil)
  state = false if not state or state == 0
  set_local(:cc_filter, state)
end

def read(midi_file)
  midi_file.strip!
  if midi_file =~ /^[^:]{2,}:(.*)/ then midi_file = $1 end # Fixes cross platform issues with drive letters (strip off drive name on OS X)
  if File.exists?(midi_file) then
    # Settings are stored as local variables to this instance,
    # because I am using a shared context for this object to improve performance
    # (if not used shared context, these could be globals)
    beats_per_bar = get_local(:beats_per_bar) || 4
    beat_unit = get_local(:beat_unit) || 4
    quantize = get_local(:quantize)
    cc_filter = get_local(:cc_filter)   
    midi2coll = Midi2Coll.new(midi_file, beats_per_bar, beat_unit, quantize, cc_filter)
    
    num_tracks = midi2coll.number_of_tracks
    if num_tracks > 1
      has_metadata_track = true
      out2 num_tracks-1 # ignore metadata track
    else
      has_metadata_track = false
      out2 1
    end
    
    midi2coll.coll_entries.each_with_index do |entries_for_track, track_index|
      next if has_metadata_track and track_index == 0
      out1 track_index
      out0 'clear'
      entries_for_track.each do |note_data|
        out0 note_data
      end
    end
  else
    error "Cannot find file: #{midi_file}"
  end
end


class Midi2Coll
  
  def initialize(midi_file, beats_per_bar=4, beat_unit=4, quantize_in_ticks=nil, cc_filter=false)
    @midi_file = midi_file # TODO validate (meh, currently this is handled by the ajm.cosy abstraction)
    @track_tick_maps = []
    @ticks_per_beat = (4.0/beat_unit * TICKS_PER_QUARTER_NOTE).to_i
    @beats_per_bar = beats_per_bar.to_i
    @quantize = quantize_in_ticks
    @cc_filter = cc_filter
    
    # use midilib to parse the input file
    @sequence = MIDI::Sequence.new()
    File.open(@midi_file, 'rb') do |file|
      @sequence.read(file) 
    end
    
    @sequence.tracks.each_with_index do |track,index|
      @track_tick_maps[index] = @tick_map = {}
      @pitch_map = {}
      track.each do |event|
        case event
        when MIDI::NoteOnEvent
          start_note(event)
        when MIDI::NoteOffEvent 
          end_note(event)
        when MIDI::Controller 
          simple_event(event) if not @cc_filter
        end
        # TODO: support other event types? Pitch Bends? Program changes? Time Signature changes?
      end
    end    
  end
  
  def number_of_tracks
    @sequence.tracks.length
  end
  
  def coll_entries
    coll_entries = []
    @track_tick_maps.each do |tick_map|
      coll_entries_for_track = []
      onset_times = tick_map.keys.sort
      onset_times.each do |onset|
        events = tick_map[onset]
        bbu = ticks_to_bbu(onset) # onset is in ticks
        coll_entry = ['store', bbu] # the index for [coll]

        events.each do |event|
          case event
          when Array
            on, off = event
            pitch = on.note
            velocity = on.velocity
            offset = off.time_from_start # in ticks
            duration = ticks_to_beats(offset - onset)
            coll_entry << "#{pitch} #{velocity} #{duration}"
            
          when MIDI::Controller
            ccval = event.value
            ccnum = event.controller
            coll_entry << "cc #{ccval} #{ccnum}"
            
          end
        end
        coll_entries_for_track << coll_entry
      end  
      coll_entries << coll_entries_for_track  
    end
    return coll_entries
  end

  #############################
  private
  
  def start_note(on_event)
    pitch = on_event.note
    @pitch_map[pitch] = on_event
  end
  
  def end_note(off_event)
    pitch = off_event.note
    on_event = @pitch_map[pitch]
    if on_event then
      note = [on_event, off_event]
      add_event(note, on_event.time_from_start)
    else
      # This will happen if multiple note ons occur at the
      # same pitch before the first note off. 
      # TODO: handle this case by making pitch_map smarter
      error "Warning: unmatched note off for pitch #{pitch} at #{ticks_to_bbu(off_time)}"
    end
  end
  
  def simple_event(event) 
    add_event(event, event.time_from_start)
  end
  
  def add_event(event, time_in_ticks)
    time_in_ticks = quantize(time_in_ticks)
    # Map time to list of events occuring at that time:
    events = @tick_map[time_in_ticks]
    if events then
      events << event 
    else
      @tick_map[time_in_ticks] = [event]
    end
  end

  def ticks_to_bbu(ticks)
    ticks = ticks.to_i
    units = ticks % @ticks_per_beat
    beats = ticks / @ticks_per_beat    # total beat offset
    bars  = beats / @beats_per_bar + 1 
    beats = beats % @beats_per_bar + 1 # beats relative to start of measure
    return "#{bars}.#{beats}.#{units}"
  end
  
  def ticks_to_beats(ticks, sig_digits_multiplier=1000.0)
    beats = ticks/480.0
    # limit digits for readability:
    beats = (beats*sig_digits_multiplier).round / sig_digits_multiplier if sig_digits_multiplier  
    return beats
  end
  
  def quantize(ticks) 
    if @quantize
      diff = ticks % @quantize
      ticks -= diff
      if diff >= @quantize / 2
        ticks += @quantize
      end
    end
    return ticks
  end
    
end


