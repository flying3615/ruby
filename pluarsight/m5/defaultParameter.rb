#default parameter using =

def produce_spaceship1(type=:ferighter,size=:xl)

end

def produce_spaceship2(type=:freighter,size=calc_default_size(type))

end

def produce_spaceship3(type=:freighter,size=(type==:freight ? :xl : :m))

end

def produce_spaceship(type=:freightert,size= :xl,engine_count)

end

factory.produce_spaceship(4) #sets engine_count to 4