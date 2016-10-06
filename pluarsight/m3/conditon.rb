lander_cnt = 20
message = if lander_cnt>10 then "launching" else nil end
puts message

def launch
  puts "launch"
end

launch if message

fuel_level = 26
launch unless fuel_level<25

#if not = unless

class Spaceship

end

# new a spaceship only if the ship is false or null
ship ||= Spaceship.new
#same as
ship = Spaceship.new unless ship



#lander.reall only be called if the lander is located and isn't nil
lander = Lander.locate(lander_id) and lander.recall

#same as
lander = Lander.locate(lander_id)
lander.recall if lander

#use or to construct a series of fall back operations
if engine.cut_out?
  #if the engine restart failed then enable emergency power
  engine.restart or enable_emergency_power
  # same as
  enable_emergency_power unless engine.restart
end


# A and B means if A succeed then do B
# A or B means if A failed then do B




