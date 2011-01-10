def inlet(inlet_index, *params)
  out0 *params # params.map{|p| p.to_s + " (#{p.class})"}.join('  ')
end