# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
#
# next_bigger(12)==21
# next_bigger(513)==531
# next_bigger(2017)==2071
# If no bigger number can be composed using those digits, return -1:
#
# next_bigger(9)==-1
# next_bigger(111)==-1
# next_bigger(531)==-1

def next_bigger(n)
  n_array = n.to_s.split("")
  # find all possible combinations of n_array and push into combos
  combos = get_combos(n_array)
  # sort resulting array of combos
  # return the smallest of all nums > n
  smallest = combos.sort.select{|num| num > n}.shift
  smallest.nil? ? -1 : smallest
end

def get_combos(array)
  # make a binary tree for each unique digit
  # traverse it to get all possible combos (top first)
  # combine them and weed out any duplicates
  if array.uniq == array
    num_possible_combos = factorial(array.length)
  else
    num_possible_combos = 3
  end
  combos = []
  until combos.length == num_possible_combos
    num = array.join("").to_i
    combos.include?(num) ? array.shuffle! : combos << num
  end
  combos
end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

# class Tree
#   def initialize(value, parent=nil)
#     @value = value
#     @children = []
#     @parent = parent
#   end
#
#   def add(value)
#     @children << Tree.new(value, self)
#   end
#
#   def traverse
#     # go to the last leaf and return it + parent + parent until we get to the head, then reverse then join and to_i
#   end
# end
