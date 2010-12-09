require 'java'

def inlet_assist(*params)
  $max_object.setInletAssist params.to_java(:string)
end

def outlet_assist(*params)
  $max_object.setOutletAssist params.to_java(:string)
end

def atom(obj=nil)
  if obj
    $max_ruby_adapter.toAtoms(obj)
  else
    com.cycling74.max.Atom.emptyArray
  end
end

# Placeholders for Max hooks:
def bang
  'bang'
end

def list(*array)
  array
end

def yield_atoms(*params,&block)
  params.each do |param|
    begin
      atoms_or_atom = $max_ruby_adapter.toAtoms(param)
    rescue # this compensates for http://jira.codehaus.org/browse/JRUBY-4998
      atoms_or_atom = param.to_s
    end
    if atoms_or_atom.respond_to? :each
      atoms_or_atom.each{|atom| yield atom}
    else
      yield atoms_or_atom
    end
  end
end

def puts(*params)
  yield_atoms(*params) {|atom| java.lang.System.out.println(atom)}
  nil
end  

def print(*params)
  yield_atoms(*params) {|atom| java.lang.System.out.print(atom)}
  nil
end  

def error(*params)
  yield_atoms(*params) {|atom| java.lang.System.err.println(atom)}
  nil
end

def flush
  java.lang.System.out.println
  nil
end

def outlet(outlet_index, *params)
  if (outlet_index >= $max_object.numOutlets)
    error("Invalid outlet index #{outletIdx}")
  else
    begin
      if params.length == 1
        # avoid unnecessary nested arrays for things like "outlet 0, [1,2]"
        atoms = $max_ruby_adapter.toAtoms(params[0])
      else
        atoms = $max_ruby_adapter.toAtoms(params)
      end
    rescue # this compensates for http://jira.codehaus.org/browse/JRUBY-4998
      if params.length == 1
        atoms = $max_ruby_adapter.toAtoms(params[0].to_s)
      else
        atoms = $max_ruby_adapter.toAtoms( params.map{|p| p.to_s} )
      end
    end
    $max_object.outlet(outlet_index, atoms)
  end
  nil
end

def inlet(inlet_index, *params)
  params
end

def inlet_index
  $max_object.getInlet
end

module Kernel
  # define_method must be called inside a module or class
  (0..9).each do |index|
    define_method "out#{index}" do |*params|
      outlet(index, *params)
    end
    define_method "in#{index}" do |*params|
      inlet(index, *params)
    end    
  end
end

def max_object(namespace=nil)
  return $max_object if not namespace
  names = namespace.split '.'
  if(names.length > 1)
    context = names[0]
    id = names[1]
  else
    context = $max_object.context
    id = names[0]
  end
  $max_object_map[context][id]    
end

# for use with shared contexts:
LOCAL_STORAGE = {}
def set_local(name,obj)
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

def set_global( name, obj )
  $global_variable_store[name.to_s] = obj
end
def get_global( name )
  $global_variable_store[name.to_s]
end
def init_global( name, initial_value )
  $global_variable_store[name.to_s] ||= initial_value
end
def delete_global( name )
  $global_variable_store.remove name.to_s
end
def has_global?( name )
  $global_variable_store.contains_key? name.to_s
end


###########################

module SendReceive

  def receiver_registry
    @registry ||= init_global( 'JRuby_for_Max.SEND_RECEIVE_REGISTRY',
      # using the global variable store so any jruby instances can communicate
      Hash.new{|hash,key| hash[key] = [] }      # initialize missing entries to an empty list
    )
  end

  # Registers a receiver of a message by way of a callback, and records the binding for $max_object.
  def receive( message, &callback )
    # It seems that if we are going to use the global variable store, then the keys
    # need to be converted to Strings. Identical symbols are apparently not equal across Ruby evaluators.
    # (If we were doing a context-local send/receive, then we wouldn't have to worry about this.)
    receiver_registry[message.to_s] << [callback, $max_object]
  end

  # Notify all receivers of a message.
  def send( message, *args )
    for callback, max_object in receiver_registry[message.to_s] do
      # Now we have to swap some variable references around in order to restore the binding
      # for $max_object that existed at the time the receive callback was registered.
      # This ensures the outlet methods work correctly.
      current_max_object = $max_object
      $max_object = max_object
      callback.call( *args )
      $max_object = current_max_object
    end
  end

  at_exit do
    # cleanup max_objects which were deleted
    for message, receivers in receiver_registry
      # when this code runs, $max_object is the current max object that's being deleted, so remove
      # it from the registry:
      receivers.delete_if{|_,max_object| max_object == $max_object}
    end
  end

end
