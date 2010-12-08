include SendReceive

receive :note do |pitch, velocity|
  out0 pitch, velocity
end
