#This code opens up an existing class and adds a method.
# In this case, the method called my_times loops a set number of times,
# invoking the code block with yield.
class Fixnum
  def my_times
    i=self
    while i>0
      i=i-1
      yield i
    end
  end
end

3.my_times{|time| puts time; puts "mangy moose"}


class Tree

  attr_accessor :children, :node_name

  def initialize(name,children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each{|c| c.visit_all &block}
  end

  #&block can be replaced by yield
  # & is refer to block code
  def visit(&block)
    # block.call self
    yield self
  end

end


ruby_tree = Tree.new("Ruby",
                     [Tree.new("Reia"),Tree.new("MacRuby")])
puts
puts "Visitint a node"
ruby_tree.visit{|node| puts node.node_name}

puts
puts "visiting entire tree"
ruby_tree.visit_all{|node| puts node.node_name}

