module JRubyForMax

  # A module for scheduling a callback to occur later, using the Max scheduler.
  # Most uses of this module can ignore the classes and just use the after() method.
  module Delay

    # Provides a simpler interface into com.cycling74.max.MaxClock
    class DelayedCallback
      attr_reader :clock, :executable
      def initialize(&callback)
        @executable = MaxExecutable.new(&callback)
        @clock = com.cycling74.max.MaxClock.new(@executable)
      end
      def execute_after(delay_in_ms)
        @clock.delay(delay_in_ms)
        at_exit { cancel }
      end
      def cancel
        @clock.release
      end      
    end


    # JRuby implementation of com.cycling74.max.Executable
    class MaxExecutable
      include com.cycling74.max.Executable
      def initialize(&callback)
        @callback = callback
      end
      def execute()
        @callback.call()
      end
    end
    

    # Execute the callback block after the given delay in milliseconds.
    def after(delay_in_ms, &callback)
      delayed_callback = DelayedCallback.new(&callback)
      delayed_callback.execute_after delay_in_ms
      return delayed_callback # the callback is returned so it can be canceled
    end

    module_function :after

  end
end