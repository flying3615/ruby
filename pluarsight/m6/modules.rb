#syntax
module SpaceStuff
end

# one way is to work as namespacing, like helper class in java
module API
  def self.hatch_list
    #retrieve hatch list
  end
end

hatches = API.hatch_list

# namespacing
module SpaceStuff
  class Spaceship

  end
end

ship = SpaceStuff::Spaceship.new

module SpaceStuff
  module API
    def self.hatch_list
      #retrieve hatch list
    end
  end
end

hatches = SpaceStuff::API.hatch_list



# another way is to Mixins, can achieve multiple inheritance
# worked as a superclass
module AirControl

  attr_accessor :oxygen_level

  def measure_oxygen
    #...
    self.oxygen_level = measured_oxygen
  end
end

module Docking
  module ClassMethods
    def get_docking_params
      # returns params common to all spaceships
    end
  end

  def self.included(base)
    #target will extend ClassMethods once it includes this module
    base.extend(ClassMethods)
  end

  def dock

  end

end

# include my_module will allow this: A.new.foo
# extend my_module will allow this: A.foo

class Spaceship
  include AirControl
  include Docking
  #...
end
ship = Spaceship.new
#instance can access the methods defined in module
ship.measure_oxygen


