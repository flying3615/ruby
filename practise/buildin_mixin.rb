puts 'begin'<=>'end'
puts 'same'<=>'same'

a=[6,5,4,3,2,1]

a.each_slice(3).to_a.each{|group| puts "each group = #{group}"}

puts a.sort

puts "anyone in a>6 = #{a.any?{|i|i>6}}"
puts "anyone in a<4 = #{a.any?{|i|i<4}}"
puts "all in a>4 = #{a.all?{|i|i>4}}"
puts "all in a>0 = #{a.all?{|i|i>0}}"

puts "2 times of a=#{a.collect{|i| i*2}}"

puts "even = #{a.select{|i| i%2==0}}" #even

puts "odd = #{a.select{|i| i%2==1}}" #odd

puts a.max

puts "2 in a ?  #{a.member?(2)}"


puts "sum of a = #{a.inject{|sum,i| sum+i}}"
puts "product of a = #{a.inject{|product,i| product*i}}"


a.inject(0) do |sum, i|
  puts "sum:#{sum} i:#{i} sum+i:#{sum+i}"
  sum+i
end