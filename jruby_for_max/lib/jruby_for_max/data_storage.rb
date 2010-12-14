module JRubyForMax

  # Methods for storage and retrieving data in various scopes when using multiple objects with shared @context
  module DataStorage

    #############################################################################
    # local storage methods, for separate data per object while sharing context
    LOCAL_STORAGE = {}

    def set_local(name, obj)
      storage = LOCAL_STORAGE[$max_object]
      LOCAL_STORAGE[$max_object] = storage = {} if not storage
      storage[name] = obj
    end

    def get_local(name)
      storage = LOCAL_STORAGE[$max_object]
      storage[name] if storage
    end

    def delete_local(name)
      storage = LOCAL_STORAGE[$max_object]
      storage.delete(name) if storage
    end

    def has_local?(name)
      storage = LOCAL_STORAGE[$max_object]
      if storage
        storage.has_key?(name)
      else
        false
      end
    end

    module_function :set_local
    module_function :get_local
    module_function :delete_local
    module_function :has_local?


    #############################################################################
    # global storage methods, for sharing data across contexts
    def set_global(name, obj)
      $global_variable_store[name.to_s] = obj
    end

    def get_global(name)
      $global_variable_store[name.to_s]
    end

    # get_global unless the data does not yet exist, in which case it will be set and then returned
    def init_global(name, initial_value)
      $global_variable_store[name.to_s] ||= initial_value
    end

    def delete_global(name)
      $global_variable_store.remove name.to_s
    end

    def has_global?(name)
      $global_variable_store.contains_key? name.to_s
    end

    module_function :set_global
    module_function :get_global
    module_function :init_global
    module_function :delete_global
    module_function :has_global?


  end

end
