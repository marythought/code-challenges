require "test_helper"
require "2018/binary_tree"

describe 'build a binary tree' do
  #              n1
  #             /  \
  #           n2    n3
  #          /     /  \
  #        n4    n5    n6
  #       /     /
  #     n7    n8
  before do
    @n1 = BinaryTree.new('n1')
    @n1.left = BinaryTree.new("n2")
    @n1.left.left = BinaryTree.new('n4')
    @n1.left.left.left = BinaryTree.new('n7')
    @n1.right = BinaryTree.new('n3')
    @n1.right.right = BinaryTree.new('n6')
    @n1.right.left = BinaryTree.new('n5')
    @n1.right.left.left = BinaryTree.new('n8')
  end

  it "makes a new binary tree" do
    a = BinaryTree.new('n1')
    assert_equal("n1", a.value)
    assert_nil(a.left)
    assert_nil(a.right)
  end

  it "counts descendants" do
    assert_equal(7, @n1.count_descendants)
    assert_equal(3, @n1.right.count_descendants)
    assert_equal(0, @n1.left.left.left.count_descendants)
  end

  it "prints in order" do
    assert_equal("n7, n4, n2, n1, n8, n5, n3, n6", @n1.print_in_order)
  end
end
