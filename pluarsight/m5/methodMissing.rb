class Cargo

  def method_missing(name,*args)
    case name
      when /^find_by_([a-z]+)_and_([a-z]+)$/
        # $1=weight $2=volume
        find($1.to_sym=>args[0],$2.to_sym=>args[1])
      when /^find_by_([a-z]+)$/
        # $1=destination
        find($1.to_sym=>args[0])
      else
        #default method
        super
    end
  end


  def respond_to?(name, *args)
    return true if name =~ /^find_by_([a-z]+|[a-z]+_and_[a-z]+)$/
    super
  end

  private
  def find(attrs)
    puts "Finding cargo by #{attrs.inspect}"
  end

end

class SpaceShip
  attr_reader :cargo

  def initialize
    @cargo = Cargo.new
  end

end

ship = SpaceShip.new

#no such method then will call method_missing method
ship.cargo.find_by_destination("Earth")
ship.cargo.find_by_weight_and_volume(100,10)
# will be exception
# ship.cargo.find_by_weight_or_volume(100,10)

#return true as we overwrite the respond_to
puts ship.cargo.respond_to? :find_by_destination
#return false, no regex match the method name
puts ship.cargo.respond_to? :find_by_destination_or_volume
