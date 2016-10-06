/\w+: \d+/


m = /(\d+):(\d+)/.match("Time is 12:13am")
puts m.pre_match
puts m[0]
puts m[1]+" "+m[2]
puts m.post_match

p "Time is 12:13am".scan(/\d+/)


#swap
puts "Alex Korban".gsub(/([a-zA-Z]+) ([a-zA-Z]+)/,'\2,\1')

#
s = "Password: bla12"
puts s.gsub(/(Password:)\s+(\w+)/){|match| "#{$1} "+"*"*$2.length}