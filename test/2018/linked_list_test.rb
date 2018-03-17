require "test_helper"
require "2018/linked_list"

describe 'intialize a linked list' do
  it "makes a new linked list with just a value" do
    a = LinkedList.new("a")
    assert_equal(a.head.value, "a")
  end
end

describe 'adding a node' do
  it "adds a node to an existing linkedlist" do
    ll = LinkedList.new("a")
    ll.add("b")
    assert_equal(ll.head.value, "b")
    ll.add("d")
    assert_equal(ll.head.value, "d")
  end
end

describe 'kth to last' do 
  it 'finds the kth to last node in a linked list' do
    ary = Array.new(10) { |i| i }.map { |i| Node.new(i) }
    ll = LinkedList.new(ary.pop)
    ll.add(ary.pop) until ary.empty?
    p ll
    assert_equal(ll.kth_to_last(4).value, 5)
  end
end
