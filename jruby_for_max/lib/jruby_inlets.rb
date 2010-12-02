def in0(*params)
  out0 'sum', params.inject(:+)
end

# use of the splat (*params) is optionally
# it's recommended because it makes the method more flexible
def in2(param1, param2, param3, param4)
  params = [param1, param2, param3, param4]
  out0 'average', params.inject(:+).to_f/params.length
end

# when a convenience method (in1 in this case) is not
# defined, it will call the inlet() method
def inlet(inlet_index, *params)
  out0 'product', params.inject(:*)  
end