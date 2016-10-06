# Proc represents a block


def debug_only(param=nil, &block)
  puts "Param class: #{param.class}"
  puts "Block class: #{block.class}" if block_given?
end

debug_only {}
puts "---"

p = Proc.new {|bla| puts "I'm a proc that says #{bla}!"}
p.call "yay1"

debug_only p

# & will triggers p as a block rather than param
# & triggers to_proc method
puts "---"
debug_only &p

puts "---"
p = proc{|bla| puts "I'm a proc that says #{bla}"}
p.call "yay2"

puts "---"
names = ["flying","viking","vagabond"]
#normal...
p names.map{|name| name.upcase}
#tricky !!!
p names.map(&:upcase)

#because & will invoke Symbol.to_proc

# class Symbol
#
#   def to_proc
#     Proc.new {|obj| obj.send(self) }
#   end
#
# end