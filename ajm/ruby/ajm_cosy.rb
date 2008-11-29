require 'cosy'
include Cosy

OBJECT_NAME = 'ajm.cosy'

module Cosy
  
  class MaxRenderer < AbstractRenderer  
    attr_accessor :seq, :time_to_next, :prev_duration, :end, :ticks_per_bang
  
    def initialize
      super({:input => ''})
      restart
      @ticks_per_bang = DURATION['sixtyfourth'].to_f
    end

    def sequence(cosy_syntax)
      begin
        parse cosy_syntax
        restart
        return true
      rescue Exception
        error "#{OBJECT_NAME}: #{$!}"
        return false
      end
    end
    
    def define(name, cosy_syntax)
      begin
        define_sequence(name, cosy_syntax)
        return true
      rescue Exception
        error "#{OBJECT_NAME}: #{$!}"
        return false
      end
    end

    def play(name)
      begin
        load_sequence(name)
        restart
      rescue Exception
        error "#{OBJECT_NAME}: #{$!}"
      end
    end

    def restart
      init
      @sequencer.restart
      @time_to_next = 1
      @prev_duration = DURATION['sixtyfourth']
      @end = false
      @suppress_rebang = @rebang = false
    end
    
    # like restart but with inifinite loop prevention
    # should be used whenever automatically restarting at the end of a sequence
    # TODO: maybe loops are better handled in here
    def autorestart   
      rebang = @rebang   
      restart
      @suppress_rebang = rebang
    end
    
    def ticks_to_bangs(ticks)
      ticks / @ticks_per_bang if ticks
    end

    def bang
      if not @end
        @time_to_next -= 1
        if @time_to_next <= 0
          event = next_event
          
          if not event
            @end = true
            out4 'bang'
          
          elsif event.is_a? NoteEvent
            pitches, velocity, duration = event.pitches, event.velocity, ticks_to_bangs(event.duration)
            if duration >= 0  
              # output in standard Max right-to-left order:
              out2 duration
              out1 velocity
              out0 pitches
              
              if duration == 0
                # prevent infinite loops
                if not @suppress_rebang
                  @rebang = true
                  bang
                else
                  @suppress_rebang = false
                end
              else
                @suppress_rebang = @rebang = false
              end
              
            end
            @time_to_next = duration.abs
          
          else
            if event.is_a? Chain
              # this is kind of nasty, but I don't want to try to flatten
              # things in this way in AbstractRenderer#next_event because
              # other renderers may need to interpret Labels or
              # do handle chords of non-pitches differently
              raw = event
              event = []
              raw.each do |e|
                case e
                when Label then event.insert(0, e.value)
                when Value then event << e.value
                when Chord then event += e
                else event << e
                end
              end
            end
            out3 event
          end
          
        end
      end
    end
    
  end
end

RENDERER = Cosy::MaxRenderer.new

################################################
# The interface for Max (the supported messages)

def sequence(input)
  out5 RENDERER.sequence(input)
end

def define(name, input)
  out5 RENDERER.define(name, input)
end

def play(name)
  RENDERER.play(name)
end

def restart
  RENDERER.restart
end

def autorestart
  RENDERER.autorestart
end

def bang
  RENDERER.bang
end

inlet_assist 'sequence/define/play'
outlet_assist 'pitch','velocity','duration','other','bang when done','parsed successfully?'

