require "test_helper"
require "2018/linked_list"

describe 'intialize a linked list' do
  it "makes a new linked list with just a value" do
    a = LinkedList.new("a")
    assert_equal("a", a.head.value)
  end

  it "makes a new list with a head and no value" do
    a = LinkedList.new()
    assert_nil(a.head.value)
  end
end

describe 'printing a list' do
  it 'prints out a list in order' do
    ll = LinkedList.new("a")
    ll.push("b")
    ll.push("c")
    assert_equal(ll.print, "cba")
  end
end

describe 'adding a node' do
  it "pushes a node to the start of a linkedlist" do
    ll = LinkedList.new("a")
    assert_equal("a", ll.head.value)
    ll.push("b")
    assert_equal("b", ll.head.value, "it should set the head value to pushed value if head has a value")
    ll.push("c")
    assert_equal("c", ll.head.value)
    ll2 = LinkedList.new
    assert_nil(ll2.head.value)
    ll2.push("b")
    assert_equal("b", ll2.head.value, "it should set the head value on push if head is nil")
  end

  it 'appends a node to the end of a linkedList' do
    ll2 = LinkedList.new("a")
    ll2.append("b")
    assert_equal("a", ll2.head.value, "it should append to the end of list if head has a value")
    ll = LinkedList.new()
    ll.append("a")
    assert_equal("a", ll.head.value, "it should append to the end of list if head does not have a value")
    ll.append("b")
    assert_equal("b", ll.head.next.value)
    ll.append("c")
    assert_equal("c", ll.head.next.next.value)
  end
end

describe 'kth to last' do 
  it 'finds the kth to last node in a linked list' do
    ary = Array.new(10) { |i| i }.map { |i| Node.new(i) }
    ll = LinkedList.new(ary.pop)
    ll.push(ary.pop) until ary.empty?
    assert_equal(ll.kth_to_last(4).value, 5)
  end
end

describe 'Reverse each word in a linked list node' do
  it 'reverses each word of the string in the given linked list' do
    ll = LinkedList.new("test")
    assert_equal("tset", ll.reverse_list)

    ll2 = LinkedList.new("geeksforgeeks")
    ll2.append("a")
    ll2.append("computer")
    ll2.append("science")
    ll2.append("portal")
    ll2.append("for")
    ll2.append("geeks")
    assert_equal("skeegrofskeeg a retupmoc ecneics latrop rof skeeg", ll2.reverse_list)
  end
end
