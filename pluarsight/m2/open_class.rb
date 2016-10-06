class Spaceship
  def batten_hatches
    puts "Batten the hatches"
  end
end

ship = Spaceship.new

#reopen the class and add new method
class Spaceship

  def batten_hatches
    puts "overwirte batten_hatches"
  end

  def launch
    batten_hatches
    puts "Launched!"
  end
end

ship.launch