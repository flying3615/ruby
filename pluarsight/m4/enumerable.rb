#map
puts "#{[1,2,3].map{|v|v*10}}"
#reduce
puts "#{[1,2,3].reduce(0){|sum,v|sum+v}}"

puts "#{[3,1,3].sort}"

#like filter in java
puts "#{[1,2,3,4,5].select{|n|n.even?}}"