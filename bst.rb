class Node
  attr_accessor :value, :left, :right
  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end
end

class BST
  attr_accessor :root
  def initialize(value_for_root)
    puts "Tree root set to #{value_for_root}"
    @root = Node.new(value_for_root)
  end
  
  def add_child(new_value, current_node = @root)
    if current_node.value > new_value
      if current_node.left.nil?
        current_node.left = Node.new(new_value)
      else
        add_child(new_value, @root.left)
      end
    elsif current_node.value < new_value
      if current_node.right.nil?
        current_node.right = Node.new(new_value)
      else
        add_child(new_value, @root.right)
      end
    else 
      puts "This value is already present here, I'm afraid. Cannot add to tree."
    end
  end
  
  def in_order_traverse(node = @root)
    current_node = node
    unless current_node.nil?
      in_order_traverse(current_node.left)
      p current_node.value
      in_order_traverse(current_node.right)
    end
  end    
   
  def pre_order_traversal(node = @root)
    current_node = node
    unless current_node.nil?
      p current_node.value
      pre_order_traversal(current_node.left)
      pre_order_traversal(current_node.right)
    end
  end
  
  def post_order_traversal(node = @root)
    current_node = node
    unless current_node.nil?
      post_order_traversal(current_node.left)
      post_order_traversal(current_node.right)
      p current_node.value
    end
  end
end




