class Spaceship

  def initialize
    @debug = true
    #this will be modified
    @debug_attrs = {containment_status: :ok, core_temp: 350}
  end


  def launch
    #can access the outer variable
    debug_only {p @debug_attrs}
  end

  def debug_only
    return nil unless @debug
    return nil unless block_given?
    puts "Running debug code..."
    #this where it is modified
    yield @debug_attrs
  end

  def locate_cargo
    attrs = {weight: 10,destination: "Earth"}
    #shadow the attrs from inner to outer
    debug_only do |attrs|
      #this is what it is modified
      attrs[:cargo_accessed] = true
    end
    p attrs
    p @debug_attrs
  end


  def produce
    yield :spaceship, :freighter, :yacht, size: :s, seats: :leather
  end

end

ship = Spaceship.new

# ship.debug_only
#
# ship.debug_only do |attrs|
#   #can print out the attrs
#   puts "This is debug output #{attrs.inspect}"
# end


ship.locate_cargo

ship.launch


# ship.produce do |what= :spaceship, *types,
#                   size: :m, engine_count:2, **custom_components|
#   puts "Producing #{what}"
#   print "types: "
#   p types
#   puts "Engine count: #{engine_count}"
#   print "Custom components: "
#   p custom_components
# end