MAX_SPEED = 1000


TYPES = []

TYPES << "freighter"

TYPES.freeze
#will be exception
TYPES << "freighter" unless TYPES.frozen?

class A; MIN_SPEED = 0; end
#access constant variable
puts A::MIN_SPEED

# add a new constant
A::MAX_SPEED = 100

puts A::MAX_SPEED