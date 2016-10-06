class SpaceshiP
  attr_reader :name
  attr_reader :speed

  def initialize(name)
    @name = name
    @cargo = []
    @speed = 0
    @vessels = Hash.new{[]}
  end

  def [](type)
    @vessels[type]
  end

  def []=(type,vehicles)
    @vessels[type] = vehicles
  end

  #add cargo
  def <<(cargo)
    @cargo << cargo
  end

  #comparable
  def <=>(other)
    name<=>other.name
  end

  def +@
    @speed+=10
  end

  def -@
    @speed-=10
  end

  def !
    puts "Self destruct sequence initiated"
  end

end

ship1 = SpaceshiP.new("Serenity")
ship2 = SpaceshiP.new("Dreadnought")
ship3 = SpaceshiP.new("Tranquillity")

class Lander; end

class CargoPod;end



ship1[:landers] = [Lander.new,Lander.new]
puts "Landers: #{ship1[:landers].inspect}"


cargo_pod = CargoPod.new
ship1 << cargo_pod
p ship1

p [ship1,ship2,ship3].sort.map{|s| s.name}

# +@ -@
+ship1
puts "Speed #{ship1.speed}"
-ship1
puts "Speed #{ship1.speed}"

if !ship1
  puts "Ship isn't there"
end