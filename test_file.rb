require 'minitest/autorun'
require_relative 'bst.rb'

class TestBST < Minitest::Test
  def setup
    @tree = BST.new(8)
  end
  
  def test_to_add_child
    @tree.add_child(7)
    assert_equal @tree.root.left.value, 7
    @tree.add_child(9)
    assert_equal @tree.root.right.value, 9
  end
end