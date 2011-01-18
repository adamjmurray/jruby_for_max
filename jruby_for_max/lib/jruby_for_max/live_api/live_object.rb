module JRubyForMax::LiveAPI

  # A generic representation of a Live object
  class LiveObject

    attr_reader :object_path

    def initialize options={}
      @live_object_outlet = options.fetch :live_object_outlet, 0
      @live_path_outlet = options.fetch :live_path_outlet, 1
      @callbacks = {}
    end

    def exists?
      not @live_id.nil? and not @live_id == 0
    end

    def object_not_found &block
      @object_not_found_callback = block
    end

    def goto *object_path, &block
      @object_path = object_path
      attribute = init_variable :live_id
      @callbacks[attribute] = block
      # given input like :a, :b, :c
      # output 'goto', 'a', 'b', 'c'
      outlet @live_path_outlet, object_path.map { |subpath| subpath.to_s }.unshift('goto')
    end

    def call function, *args, &block
      @callbacks[function] = block
      outlet @live_object_outlet, 'call', function.to_s, *args
    end

    def get property, &block
      attribute = init_variable property
      @callbacks[attribute] = block
      outlet @live_object_outlet, 'get', property.to_s
    end

    # Handler for the results of both call() and get().
    def set live_property, *data
      #puts "set #{live_property} = #{data.inspect}"
      attribute, variable = attribute_for live_property
      value = data.first

      # We rely on get() initializing an instance variable to determine
      # if we're actually setting a property or just handling the results of a call()
      if instance_variables.include? variable
        instance_variable_set variable, value
      end

      if attribute == :live_id and not exists?
        @object_not_found_callback.call(@object_path) if @object_not_found_callback
      else
        callback = @callbacks[attribute]
        callback.call(*data) if callback
      end
    end

    ############################
    private

    def init_variable live_property
      attribute, variable = attribute_for live_property
      if not instance_variables.include? variable
        # if we're defining a property for the first time, create an accessor method
        self.class.instance_eval do
          attr_reader attribute
        end
      end
      instance_variable_set variable, nil
      return attribute
    end

    # Get the Ruby attribute name and instance variable name for a live_property
    def attribute_for live_property
      live_property = live_property.to_sym
      attribute =
          case live_property
            when :id
              :live_id # avoid conflicts with Ruby's Object#id()
            else
              live_property
          end
      return attribute, "@#{attribute}"
    end
  end

end

