module ToFile

  def filename
    "obejct_#{self.object_id}.txt"
  end

  def to_f
    File.open(filename,'w'){|f|f.write(to_s)}
    self
  end

  def read_f
    File.open(filename,'r') do |f|
      (line=f.gets)&&puts(line)
    end
  end

  def read_inner
    puts File.read(filename)
  end

end


class Person
  #here is mixin, works like abstract class,but no extends
  include ToFile
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

end

#invoke mixin method
p = Person.new('matz').to_f
p.read_f
