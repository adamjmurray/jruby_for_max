def custom_method
  out0 "Hello from a custom method defined in a file"
end

def bang
  out0 'Hello from a custom handler for bang'
end

def list(*args)
  out0 'check the Max window'
  puts "received a list with #{args.length} items: ", args
end