#!/usr/bin/env ruby
require 'rubygems'
require 'midilib/sequence'

$beats_per_bar = 4
$beat_unit = 4
VALID_BEAT_UNITS = [1,2,4,8,16]
TICKS_PER_WHOLE_NOTE = 1920

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

def read(midi_file)
  if File.exists?(midi_file) then
    midi2coll = Midi2Coll.new(midi_file, $beats_per_bar, $beat_unit)
    out0 'clear'
    midi2coll.coll_entries.each do |entry|
      out0 entry
    end
  else
    error "Cannot find file: #{midi_file}"
  end
end


class Midi2Coll
  
  def initialize(midi_file, beats_per_bar=4, beat_unit=4)
    @midi_file = midi_file # TODO validate
    @pitch_map = {}
    @tick_map = {}
    @beats_per_bar = beats_per_bar
    @ticks_per_unit = TICKS_PER_WHOLE_NOTE/beat_unit
    
    # use midilib to parse the input file
    seq = MIDI::Sequence.new()
    File.open(@midi_file, 'rb') do |file|
      seq.read(file) 
    end

    tracks = seq.tracks
    if tracks.length > 1 then 
      error 'More than one track. Ignoring all but the first.'
    end
    track = seq.tracks[0]
    track.each do |event| 
      if event.note? then 
        if event.note_on? then
          start_note(event)
        elsif event.note_off? then
          end_note(event)
        end
      end
    end
  end
  
  def coll_entries
    coll_entries = []
    onset_times = @tick_map.keys.sort
    onset_times.each do |onset|
      note_pairs = @tick_map[onset]
      bbu = ticks_to_bbu(onset) # onset is in tick
      coll_entry = ['store', bbu] # the index for [coll]

      note_pairs.each do |note_pair|
        on = note_pair[:on]
        off = note_pair[:off]

        pitch = on.note
        velocity = on.velocity

        offset = off.time_from_start # in ticks
        duration_in_ticks = offset - onset
        duration_in_beats = duration_in_ticks/480.0

        coll_entry << pitch
        coll_entry << velocity
        coll_entry << (duration_in_beats*1000).round / 1000.0 # limit digits for readability
      end
    
      coll_entries << coll_entry
    end    
    
    return coll_entries
  end

  #############################
  private
  
  def start_note(on)
    pitch = on.note
    @pitch_map[pitch] = on
  end
  
  def end_note(off)
    pitch = off.note
    on = @pitch_map[pitch]
    if on then
      note_pair = {:on => on, :off => off}
      ticks = on.time_from_start

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
    units = ticks % @ticks_per_unit
    beats = ticks / @ticks_per_unit    # total beat offset
    bars  = beats / @beats_per_bar + 1 
    beats = beats % @beats_per_bar + 1 # beats relative to start of measure
    return "#{bars}.#{beats}.#{units}"
  end
    
end


