require 'jruby_for_max/send_receive'
include JRubyForMax::SendReceive

def in0 pitch, velocity
  send :note, pitch, velocity
end

