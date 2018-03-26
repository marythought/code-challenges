class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def count_descendants
    count = 0
    count += 1 + @left.count_descendants unless @left.nil?
    count += 1 + @right.count_descendants unless @right.nil?
    count
  end

  def in_order
    left = @left.nil? ? nil : @left.in_order
    right = @right.nil? ? nil : @right.in_order
    [left, self, right].compact.flatten
  end

  def print_in_order
    in_order.map(&:value).join(', ')
  end
end
