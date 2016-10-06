class Spaceship
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  #overwrite equal
  def ==(other)
    name == other.name
  end

end

ship1 = Spaceship.new("Serenity")
ship2 = Spaceship.new("Serenity")

puts ship1.equal?(ship2)
puts ship1 == ship2
puts ship1.name == ship2.name
