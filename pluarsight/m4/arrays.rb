[1,2,3]

#create an empty array
arr1 = []

#using array.new to init array
arr2 = Array.new(3,"abc") #create a 3 elements but are the same object
puts "#{arr2}"
puts arr2.first.upcase!
puts "#{arr2}" #all elements changed

arr3 = Array.new(3){"abc"} #create a 3 elements but are different objects
puts "#{arr3}"
puts arr3.first.upcase!
puts "#{arr3}"

#from string to array
puts "#{%w(array of words)}"

puts arr3.size
puts arr3.empty?
puts "access an element doesn't exist #{arr3[4]}"
puts arr3[-3]
puts arr3[1..3]

#append element to array
arr3 << 10

#join two arrays
[1,2]+[3,4]

#3 times of array
[1,2]*3

#eliminate elements appereal in the second
[1,2,3,2,5]-[2,5]
