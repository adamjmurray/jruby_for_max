require 'rubygems'
require 'midilib/sequence'

VALID_BEAT_UNITS = [1,2,4,8,16]
TICKS_PER_QUARTER_NOTE = 480
TICKS_PER_WHOLE_NOTE = TICKS_PER_QUARTER_NOTE*4

$beats_per_bar = 4
$beat_unit = 4
$quantize = nil

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
    $beats_per_bar = beats_per_bar
    $beat_unit = beat_unit
  end
end

def quantize(ticks)
  puts "SET QUANTIZE to #{ticks}"
  $quantize = ticks
end

def read(midi_file)
  if File.exists?(midi_file) then
    midi2coll = Midi2Coll.new(midi_file, $beats_per_bar, $beat_unit, $quantize)
    
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
  
  def initialize(midi_file, beats_per_bar=4, beat_unit=4, quantize_in_ticks=nil)
    @midi_file = midi_file # TODO validate
    @track_tick_maps = []
    @beats_per_bar = beats_per_bar
    @ticks_per_unit = TICKS_PER_WHOLE_NOTE/beat_unit
    @quantize = quantize_in_ticks
    
    # use midilib to parse the input file
    @sequence = MIDI::Sequence.new()
    File.open(@midi_file, 'rb') do |file|
      @sequence.read(file) 
    end
    
    @sequence.tracks.each_with_index do |track,index|
      # I expect quantization is done to make sure ajm.relmetro can hit all the
      # note ons. I don't see a reason to also quantize note offs, but it could
      # be supported as an additional option for this object...
      # track.quantize_events_of_type(@quantize, MIDI::NoteOnEvent) if @quantize
      
      @track_tick_maps[index] = @tick_map = {}
      @pitch_map = {}
      track.each do |event| 
        if event.note? then 
          if event.note_on? then
            start_note(event)
          elsif event.note_off? then
            end_note(event)
          end
        end
        # TODO: support other event types? CC messages? Program changes? Time Signature changes?
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
        note_pairs = tick_map[onset]
        bbu = ticks_to_bbu(onset) # onset is in ticks
        coll_entry = ['store', bbu] # the index for [coll]

        note_pairs.each do |note_pair|
          on, off = note_pair
          pitch = on.note
          velocity = on.velocity

          offset = off.time_from_start # in ticks
          duration_in_ticks = offset - onset
          duration_in_beats = duration_in_ticks/480.0

          coll_entry << pitch
          coll_entry << velocity
          coll_entry << (duration_in_beats*1000).round / 1000.0 # limit digits for readability
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
      note_pair = [on_event, off_event]
      ticks = quantize(on_event.time_from_start)

      # Map onset time to list of note on/off pairs occuring at that time
      simultaneous_notes = @tick_map[ticks]
      if simultaneous_notes then
        simultaneous_notes << note_pair 
      else
        @tick_map[ticks] = [note_pair]
      end

    else
      # This will happen if multiple note ons occur at the
      # same pitch before the first note off. 
      error "Warning: unmatched note off for pitch #{pitch} at #{ticks_to_bbu(off_time)}"
    end
  end

  def ticks_to_bbu(ticks)
    ticks = ticks.to_i
    units = ticks % @ticks_per_unit
    beats = ticks / @ticks_per_unit    # total beat offset
    bars  = beats / @beats_per_bar + 1 
    beats = beats % @beats_per_bar + 1 # beats relative to start of measure
    return "#{bars}.#{beats}.#{units}"
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


