require 'java'
#
# Core interface for JRuby for Max
#
# The code in this file is available to every instance of [mxj jruby]
# Think of this file as automatically required by your script

###############################################################################
# predefined GLOBAL VARIABLES
#
# $max_object : the current [mxj jruby] Max object
# $max_object_map : lookup table {context => {id => max_object}} which contains all [mxj jruby] objects in Max
# $global_variable_store : a singleton Map stored at the JVM level and shared across all instances
# $max_ruby_adapter : the bridge between the max object and ruby, see the Java class MaxRubyAdapter

###############################################################################
# Interface to the containing patcher

# Handler for input received at an inlet
# Intended to be overridden. Default implementation passes the input through to the output
def inlet(inlet_index, *params)
  outlet inlet_index, *params if inlet_index < $max_object.numOutlets
  return *params
end

# Sends output to an outlet
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

# 10 convenience methods for inlet and outlet
module Kernel
  10.times do |index|

    # in0, in1, ..., in9 handlers are called when input is received in one of the first 10 inlets
    # These are intended to be overridden. Default implementation calls inlet()
    define_method "in#{index}" do |*params|
      inlet(index, *params)
    end

    # out0, out1, ..., out9 methods send output to one of the first 10 inlets
    define_method "out#{index}" do |*params|
      outlet(index, *params)
    end

  end
end

# The index of the inlet that most recently received input
def inlet_index
  $max_object.getInlet
end

# The handler for bang messages received at any inlet
# This is intended to be overridden. Default implementation calls in0()-in9() or inlet() with the argument :bang
def bang
  if inlet_index <= 9
    # prefer the short form:
    eval "in#{inlet_index}( 'bang' )"
  else
    inlet( inlet_index, 'bang' )
  end
  'bang'
end

# Sets the tooltips for the inlets of this [mxj jruby] object
def inlet_assist(*params)
  $max_object.setInletAssist params.to_java(:string)  
end

# Sets the tooltips for the outlets of this [mxj jruby] object
def outlet_assist(*params)
  $max_object.setOutletAssist params.to_java(:string)
end


###############################################################################
# Object registries and storage

# get the current max_object or lookup one by namespace
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

# local storage methods, for separate data per object while sharing context
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

# global storage methods, for sharing data across contexts
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

# Communicate between objects: _send_ a message to any objects that have registered to _receive_ that message
module SendReceive

  def self.registry
    @registry ||= init_global( 'JRuby_for_Max.SEND_RECEIVE_REGISTRY',
      # using the global variable store so any jruby instances can communicate
      Hash.new{|hash,key| hash[key] = [] }      # initialize missing entries to an empty list
    )
  end

  # Registers to receive a message by way of a callback
  def receive( message, &callback )
    # It seems that if we are going to use the global variable store, then the key (the message)
    # needs to be converted to a String (identical symbols are apparently not equal across Ruby evaluators.)
    SendReceive.registry[message.to_s] << [callback, $max_object] # and records the binding for the current $max_object.
  end

  # Notify all receivers of a message and any additional arguments.
  def send( message, *args )
    # Now we have to swap some variable references around in order to restore the binding
    # for $max_object that existed at the time the receive callback was registered.
     # This ensures the outlet methods work correctly.
    current_max_object = $max_object
    for callback, $max_object in SendReceive.registry[message.to_s] do
      begin
        # $max_object.getNumOutlets # this blows up after deleting receivers in a shared context
        callback.call( *args )
      rescue

      end
    end
  ensure
    $max_object = current_max_object
  end

  at_exit do
    # cleanup max_objects which were deleted
    for message, receivers in SendReceive.registry
      # when this code runs, $max_object is the current max object that's being deleted, so remove
      # it from the registry:
      receivers.delete_if{|_,max_object| max_object == $max_object}
    end
  end

end


###############################################################################
# Interface to Max console

# Print the arguments to the Max console separated by newlines
def puts(*params)
  yield_atoms(*params) {|atom| java.lang.System.out.println(atom)}
  nil
end  

# Prints the arguments to the Max console
def print(*params)
  yield_atoms(*params) {|atom| java.lang.System.out.print(atom)}
  nil
end  

# Prints an error message to the Max console
def error(*params)
  yield_atoms(*params) {|atom| java.lang.System.err.println(atom)}
  nil
end

# Flush the Max console, use after print()
def flush
  java.lang.System.out.println
  nil
end


###############################################################################
# Datatype conversion

# Converts a Ruby object to a Max Atom (the core datatype in Max)
def atom( obj=nil )
  if obj
    $max_ruby_adapter.toAtoms(obj)
  else
    com.cycling74.max.Atom.emptyArray
  end
end

# Converts a list of parameters to a list of Max Atoms and yields those Atoms to the block
def yield_atoms( *params, &block )
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

