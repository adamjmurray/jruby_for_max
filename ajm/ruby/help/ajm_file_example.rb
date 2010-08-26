def custom_method
  out0 "Hello from a custom method defined in a file"
end

def bang
  # out0 is a shortcut for:
  outlet(0, 'Hello from a custom handler for bang')
end

def inlet(inlet_index, *args)
  out0 'check the Max window'
  puts "received a list from inlet #{inlet_index} with #{args.length} items: ", args
end