class String
  def space_out
    chars.join(" ")
  end

  #rename String.size to String.original_size
  alias_method :original_size, :size

  def size
    #invoke original String.size
    original_size * 2 -1
  end

end

puts "abc".space_out
puts "abc".size