class Spaceship
  @thruster_count = 2


  #here self refers to class
  def self.thruster_count
    @thruster_count
  end


  def batten_hatches
    puts "Batten the hatched!"
  end

  #all methods below private are private
  private

  def light_seatbelt_sign
    puts "the seatbelt sign is now on"
  end

  #or methods' names can be declared as private
  # private :batten_hatches
end

class SpitelySpaceship < Spaceship
  @thruster_count = 4
end

class EconolineSpaceship < Spaceship
  @thruster_count = 1
end

puts SpitelySpaceship.thruster_count
puts EconolineSpaceship.thruster_count
puts Spaceship.thruster_count

spaceship = Spaceship.new

spaceship.batten_hatches
# spaceship.light_seatbelt_sign