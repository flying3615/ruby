#begin..rescue.. = try.. catch.. in java
def launch1
  begin
    batten_hatched
  rescue
    puts "Couldn't batten hatches"
    false
  end
  light_seatbelt_sign
end


#rescue the whole method
def launch2
  batten_hatches
  light_seatbelt_sign
  true
rescue StandardError => e
  puts e.message
  puts "Exception intercepted"
  false
end

#multi exception with different type
def launch3
  batten_hatches
  light_seatbelt_sign
  true
rescue LightError
  puts "Lights not working, still launching"
  true
rescue StandardError => e
  puts $!.message #refers to the same exception object as e
  raise #raise the error again
  false
end


def batten_hatches
  raise "Doors jammed" #RuntimeError
end


#ensure = finally in java
def batten_hatches2
  hatch_file = File.open("hatches.txt")
  raise HatchError, "Doors jammed" if door.jammed?
  true
rescue SystemCallError => e
  #handle file errors
  false
else
  puts "well done, no exceptions"
ensure
  hatch_file.close if hatch_file
end

