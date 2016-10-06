#key word argument using : (symbol)

produce_spaceship(:freighter,:m,100,4)

produce_spaceship(type: :freighter,size: :m,
                  fuel_tank_volumn: 100, engine_count: 4)

def produce_spaceship(type: :freighter,size: :xl,
                      fuel_tank_volumn: 400, engine_count: 2)
end

#using hash passing in
def produce_spaceship(type = :freighter, size: :m, **custom_components)
  components = {enging: :standard,
                seats: :standard,
                subwoofer: :none
                }
  components.merge!(custom_components)
end

produce_spaceship(:yacht,size: :s,
                  enginge: :rolls_royce, seats: :leather)#as the custom_components

build_params = {size: :s, engine: :rolls_royce, seats: :leather}

produce_spaceship(:yacht,build_params)