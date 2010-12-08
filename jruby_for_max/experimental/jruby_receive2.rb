include SendReceive

receive :note do |pitch, velocity|
  out0 "Receiver 2 got pitch=#{pitch}, velocity=#{velocity}"
end
