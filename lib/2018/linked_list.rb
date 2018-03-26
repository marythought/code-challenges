Node = Struct.new(:value, :next)

class LinkedList
  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value, nil)
  end

  def push(value)
    @head = Node.new(value, @head)
  end

  def append(value)
    # make the node, next is null because it will be last
    new_node = Node.new(value, nil)
    # if head is nil, make new node the :head
    if @head.value.nil?
      @head = new_node
      return
    end
    # otherwise, traverse array and add it to the end
    current = @head
    current = current.next until current.next.nil?
    current.next = new_node
  end

  def print
    current = @head
    list = ""
    until current.next.nil?
      list += current.value.to_s
      current = current.next
    end
    list += current.value.to_s
    list
  end

  # find the kth to last element of a singly linked list.
  def kth_to_last(k)
    current = @head
    scout = current

    k.times do
      scout = scout.next
    end

    until scout.next.nil?
      current = current.next
      scout = scout.next
    end
    current.value
  end

  def reverse_list
    current = @head
    rev = ""
    until current.next.nil?
      rev += current.value.reverse
      rev += " "
      current = current.next
    end
    rev += current.value.reverse
    rev.strip
  end
end
