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
      lock = $_LOCK_ # get a reference to the receiver's lock
      # and use it to synchronize the callback with any other input that may be happening at that receiver
      synchronized_callback = lambda do |*args|
        lock.synchronize do
          callback.call(*args)
        end
      end
      # It seems that if we are going to use the global variable store, then the key (the message)
      # needs to be converted to a String (identical symbols are apparently not equal across Ruby evaluators.)
      SendReceive.registry[message.to_s] << [synchronized_callback, $max_object] # and records the binding for the current $max_object.
    end

    module_function :receive

    # Unregister to receive a message.
    # If no message is provided, then unregister all receivers for this max object.
    def unreceive(message=nil)
      for msg, receivers in SendReceive.registry
        next if message and message.to_s != msg
        receivers.delete_if { |_, max_object| max_object == $max_object } # $max_object is the current max object
      end
    end

    module_function :unreceive


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


    at_exit do
      unreceive # cleanup max_objects which were deleted
    end


  end

end
