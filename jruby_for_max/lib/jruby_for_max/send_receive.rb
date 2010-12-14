module JRubyForMax

  # Methods for communicating between [mxj jruby] objects
  # _send_ a message to any objects that have registered to _receive_ that message
  module SendReceive

    # The list of all receivers registered to receive a message
    def self.registry
      @registry ||= init_global('JRubyForMax::SendReceive.registry',
                                # using the global variable store so any jruby instances can communicate
                                Hash.new { |hash, key| hash[key] = [] } # initialize missing entries to an empty list
      )
    end


    # Registers to receive a message by way of a callback
    def receive(message, &callback)
      # It seems that if we are going to use the global variable store, then the key (the message)
      # needs to be converted to a String (identical symbols are apparently not equal across Ruby evaluators.)
      SendReceive.registry[message.to_s] << [callback, $max_object] # and records the binding for the current $max_object.
    end

    module_function :receive


    # Notify all receivers of a message and any additional arguments.
    def send(message, *args)
      # Now we have to swap some variable references around in order to restore the binding
      # for $max_object that existed at the time the receive callback was registered.
      # This ensures the outlet methods work correctly.
      current_max_object = $max_object
      for callback, $max_object in SendReceive.registry[message.to_s] do
        begin
          # $max_object.getNumOutlets # this blows up after deleting receivers in a shared context
          callback.call(*args)
        rescue

        end
      end
    ensure
      $max_object = current_max_object
    end

    module_function :send


    # remove receivers from the registry when they are removed from the Max environment
    at_exit do
      # cleanup max_objects which were deleted
      for message, receivers in SendReceive.registry
        # when this code runs, $max_object is the current max object that's being deleted, so remove
        # it from the registry:
        receivers.delete_if { |_, max_object| max_object == $max_object }
      end
    end


  end

end
