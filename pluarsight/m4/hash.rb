#empty hash
h = {}

h1 = {"min"=>0,"max"=>100}

#using symbol as key,: can be afterwards
h2 = {min: 0,max: 100}

p h1
puts h2
puts h2[:min]
h2[:max] = 200

#add elements
h2[:mid] = 100
puts h2[:max]
puts h2[:mid]

h2.each{|v| p v}
h2.each{|k,v| puts "#{k}: #{v}"}