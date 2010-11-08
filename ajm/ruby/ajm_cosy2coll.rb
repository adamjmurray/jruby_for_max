$DEBUG=true
require 'cosy'
include Cosy

OBJECT_NAME = 'ajm.cosy'
TICKS_PER_QUARTER_NOTE = 480

def render(input)
  Cosy::CollRenderer.new({:input => input}).render
rescue Exception => e
  puts e
end

inlet_assist 'cosy sequence'
outlet_assist 'to midi coll','other messages','bang when done','parsed successfully?'

module Cosy

  class CollRenderer < AbstractRenderer  

    def initialize(options={})
      super
      @ticks_per_beat = (4.0/options.fetch(:beat_unit, 4) * TICKS_PER_QUARTER_NOTE).to_i
      @beats_per_bar = options.fetch(:beats_per_bar, 4)
      @quantize_in_ticks = options[:quantize]
    end

    def render()
      out0 'clear'    
      @timeline.times.each do |time|
        events = @timeline[time]
        start_coll_entry(time)
        events.each do |event|
          case event
          when Event::Note
            note(event.pitch, event.velocity, event.duration)
          end
        end
        end_coll_entry
      end
      out2 'bang'
    end


    #################
    protected

    def time
      @time
    end


    #################
    private
    
    def start_coll_entry(time)
      @coll_entry = ['store', time] # the index for [coll]
      # we could optionally do ticks to bbu here
    end  
    
    def end_coll_entry
      puts @coll_entry.inspect
      out0 @coll_entry
      @coll_entry = nil
    end

    def note(pitch, velocity, duration)
      duration_in_beats = duration.to_f/@ticks_per_beat
      duration_in_beats = (duration_in_beats*1000).round / 1000.0  # limit digits for readability
      @coll_entry << "#{pitch} #{velocity} #{duration_in_beats}"
    end

    def ticks_to_bbu(ticks)
      ticks = ticks.to_i
      if @quantize
        diff = ticks % @quantize 
        ticks -= diff
        if diff >= @quantize / 2
          ticks += @quantize
        end
      end
      units = ticks % @ticks_per_beat
      beats = ticks / @ticks_per_beat    # total beat offset
      bars  = beats / @beats_per_bar + 1 
      beats = beats % @beats_per_bar + 1 # beats relative to start of measure
      return "#{bars}.#{beats}.#{units}"
    end

  end

end

