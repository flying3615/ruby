def run
  puts "run"
end

# run until 1<0

begin
  run
end until 1>0


#for loop
puts "counting down to launch"
for i in [3,2,1]
  puts i
end

for i in (1..10)
  puts i
end


#each is better than for loop
[1,2,3].each do
  puts "This is Serenity, please respond"
end

ships = Spaceship.all
ships.each{|ship|puts ship.name}

loop do
  #this is an infinite loop
end


#some help from numbers
10.upto(20){|i|puts i}
20.downto(10){|i| puts i}
3.times{puts "this is serenity, please respond"}


#next starts the next interation of the loop
#same as continue in java
while message = comms.get_message
  next if message.type == "sync"
  message.process
end

#break exits out the loop
while message = comms.get_message
  message.process
  break if message.type == "voice"
end

#it can be a expression for break
text = while message = comms.get_message
         message.process
         break message.txt if message.type=="voice"
       end

#redo repeats the iteration without re-evaluating loop condition
i=0
while i<3
  print "Please enter a positive number: "
  input = gets.to_i
  redo if input<=0 # will jump to the first line of loop
  i+=1
end
