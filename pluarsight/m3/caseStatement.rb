case distance_to_dock
  when "far away"
    lander.maintain_thrust
  when "coasting time"
    lander.kill_thrust
  when "collision imminent"
    lander.reverse_thrust
end


#use as an expression

thrust_power = case distanc_to_dock
                 when "far away"
                   100
                 when "coasting time"
                   0
                 when "collision imminent"
                   -100
               end
#short version of expression
thrust_power = case distance_to_dock
                 when "far away" then 100
                 when "coasting time" then 0
                 when "collision imminent" then -100
               end

#none of clause match
case unit
  when Lander
    lander.park
  when Probe
    probe.retrieve_sample
    probe.transport_to_storage
  else
    activate_alarm("Unidentified unit")
end