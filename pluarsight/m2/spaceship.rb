
class Spaceship

  #constructor
  def initialize(name,cargo_module_count)
    @name = name
    # @cargo_hold = CargoHold.new(cargo_module_count)
    @power_level = 100
  end


  def capture(unit)
    unit.dock
    puts "it works with docking"
  end


  def launch(destination)
    @destination = destination
    # go towards destination
  end

  #access instance variable
  def destination
    @destination
  end


  #shortcut to get or set instance variable
  attr_accessor :destination, :name


  #under the hood of attr_accessor

  # def destination=(new_destination)
  #   @destination=new_destination
  # end
  #
  # def destination
  #   @destination
  # end



  #attr_accessor include both of below read&write
  # attr_reader :name
  # attr_writer :name

  def cancel_launch
    destination = ""  #just create local variable
    self.destination = "" #here self refers to instance
  end


  #class variable = static in java
  @@thruster_count = 2

  #class method = static in java
  # CANNOT be called from instance!!!
  def self.thruster_count
    @@thruster_count
  end

end

ship = Spaceship.new("Dreadnought",4)
ship.launch "Earth"
p ship.inspect

ship.destination = "Mars"

puts ship.destination

ship.name = "Dreadnought"
puts ship.name

puts Spaceship.thruster_count



#how to import MinerlProbe
# ship.capture(MineralProbe.new)


