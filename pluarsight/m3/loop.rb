
# while loop
while high_alert?
  sound_system.play_siren_cycle
end

#one line version
while high_alert? do sound_system.play_siren_cycle end

#better version of while
sound_system.play_siren_cycle while high_alert?


#until loop
until ship.at_cruising_velocity?
  ship.accelerate
end

#better version of until
ship.accelerate until ship.at_cruising_velocity?


#do more things in begin/end for while/until loop
#NOTIC!!! code will be run once even if condition is false
begin
  lighting.start_flashing
  sound_system.play_siren_cycle
end while high_alert?

begin
  ship.accelerate
  make_fake_enging_noise
end until ship.at_cruising_velocity?