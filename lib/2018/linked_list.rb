Node = Struct.new(:value, :next)

class LinkedList
  attr_accessor :head

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add(value)
    @head = Node.new(value, @head)
  end

  # Implement an algorithm to find the kth to last element of a singly linked list.
  # 1 2 3 4 5 6 7 8 9 10
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
end
