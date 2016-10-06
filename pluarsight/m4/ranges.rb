#include 5
1..5

#don't include 5
1...5

p (1..10).class
p (1..10).begin
p (1..10).end
p (1..10).include?(11)
p (1..10).map{|v|v*2}

sample_reading = 110

puts case sample_reading
       when 0..100 then "below normal"
       when 101..150 then "normal"
       else "excessive"
     end

#Parallel Assignment

a,b = 1,2
p a==1
p b==2

# array assign to variables
def get_values
  [1,2,3,4]
end
#only care about the first and the last
# _ as the wildcard in ruby we don't care
first,_, _,last = get_values
p first
p last

#a==1,b==[2,3,4]
a,*b = get_values
p a
p b

#a==1,b==[2,3],c==4
a,*b,c = get_values

r = (1..10)
# expand r
p [1,2,*r]

h={a: "a",b: "b"}
#expand hash into a array
p [*h]