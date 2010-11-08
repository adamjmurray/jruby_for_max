$DEBUG=true
require 'cosy'
include Cosy

OBJECT_NAME = 'ajm.cosy2clip'
TICKS_PER_QUARTER_NOTE = 480

def render(input)
  Cosy::ClipRenderer.new({:input => input}).render
rescue Exception => e
  puts e
end

inlet_assist 'cosy sequence'
outlet_assist 'to live.object','other messages','bang when done','parsed successfully?'

module Cosy

  class ClipRenderer < AbstractRenderer  

    def initialize(options={})
      super

      @clip_duration = 0.0
      @notes = []
      @timeline.each_event do |time,event|
        case event
        when Event::Note
          start_time = to_beats(time)
          duration = to_beats(event.duration)
          end_time = start_time + duration
          @clip_duration = end_time if end_time > @clip_duration
          @notes << [event.pitch, start_time, duration, event.velocity, 0]
        end
      end
      @clip_duration = @clip_duration.ceil.to_f
    end

    def render()
      call :select_all_notes
      call :replace_selected_notes
      call :notes, @notes.length
      @notes.each{|note| call :note, *note }
      call :done
      set :loop_end, @clip_duration 
    end
    
    def call(command, *args)
      out0 :call, command, *args
    end
    
    def set(param, *args)
      out0 :set, param, *args
    end
    
    def to_beats(ticks)
      ticks / 480.0
    end

  end

end