#symbols is as enum in java, is object
#symbol is good substitution of String tag
# good way to use symbol is key in hash


:"abc"
:"3"

direction = "west"
:"turn_#{direction}"

#symbol to string
puts :abc.to_s
puts "abc".to_sym