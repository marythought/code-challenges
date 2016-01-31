#Read the input using gets
# input = gets.chomp
# puts input

class Car
  attr_accessor :front, :back, :value, :nxt, :prev

  def initialize(value, nxt=nil, prev=nil)
    @value = value[0] < value[-1] ? value : value.reverse!
    @front = @value[0]
    @back = @value[-1]
    @nxt = nxt
    @prev = prev
  end
end

class Train_yard
  attr_accessor :cars

  def initialize
    @cars = []
  end

  def add(value)
    @car = Car.new(value)
    @cars << car
  end

  def sort
    @cars.sort! { |a,b| a.back <=> b.back }
    @cars.sort! { |a,b| a.front <=> b.front }
  end
end

class Train
  attr_accessor :head, :tail

  def initialize(head=nil, tail=nil)
    @head = head
    @tail = tail
  end

  # insert at back
  def enqueue(value)
    if @tail
      car = Car.new(value, nil, @tail)
      @tail.nxt = car
      @tail = car
    else
      @tail = Car.new(value)
    end
    @head = @tail unless @head
  end

  # insert at front
  def shift(value)
    if @head
      car = Car.new(value, @head, nil)
      @head.prev = car
      @head = car
    else
      @head = Car.new(value)
    end
    @tail = @head unless @tail
  end

  def length
    count = 0
    current = @head
    while current
      count += 1
      current = current.nxt
    end
    count
  end

  # def alphacars(sorted_car_array)
  #   cars = sorted_car_array # ['AYB', 'AZC', 'BAD', 'CZD', 'DEF']
  #   longest = []
  #   cars.each_with_index do |car, index|
  #     #'AYB'
  #     this_cars_train = [car] #['AYB']
  #     (index+1).upto(cars.length-1) do |i|
  #       #i = 1
  #       if this_cars_train[-1][-1] == cars[i][0]
  #         this_cars_train << cars[i]
  #       end
  #     end
  #   longest = this_cars_train.length > longest.length ? this_cars_train : longest
  #   end
  #   return longest.join("-")
  # end

  def to_s
    # Output:
    # AYB-BAD-DEF
    current = @head
    return "no cars" if current.nil?
    string = ""
    until current.nxt.nil?
      string += "#{current.value}-"
      current = current.nxt
    end
    string += "#{current.value}"
    return string
  end

  def search(value)
    current = @head
    until current.nil?
      return true if current.value == value
      current = current.nxt
    end
    false
  end

  def getinput
  ## Sample Input 1:
    # 5
    # BAD
    # CZD
    # DEF
    # AYB
    # AZC
    # cars = ['BAD', 'CZD', 'DEF', 'AYB', 'AZC']
    cars = ['AYB', 'BAD', 'EXX', "AYC", "DOG", "BAM", "MNO", "OPQ", "QRS"]
    # int.times do
    #   cars << gets.chomp
    # end
    cars.map {|car| car[0] <= car[-1] ? car : car.reverse }.sort
  end

  def remove(value)
    current = @head
    if current.value == value
      @head = current.nxt
      return value
    end
    until current.nxt.nil?
      if current.nxt.value == value
        current.nxt = current.nxt.nxt
        return value
      end
      current = current.nxt
    end
  end
end

class Tree
  attr_accessor :value, :children, :parent, :level

  def initialize(value, parent=nil)
    @value = value
    @children = []
    @parent = parent
    @level = 0
  end

  def add_child(value, parent=self)
    child = Tree.new(value, parent)
    parent.children << child
    child.level = parent.level + 1
  end

  def get_children_values
    @children.map{ | child | child.value }.join(", ")
  end

  def is_leaf?
    @children.length == 0
  end

  def is_root?
    @parent.nil?
  end

  def count
    if @children.length > 0
      @children.map do |child|
        child.count
      end.reduce(1, :+)
    else
      return 1
    end
  end

  def level_print
    temp = []
    current = self
    result = ""
    until current.nil?
      result << current.value + " "
      current.children.each do |child|
        temp << child
      end
      this_level = current.level
      current = temp.shift
      if current && current.level > this_level
        result << "\n"
      end
    end
    result.strip
  end

  # def find(value)
  #   return self if @value == value
  #   temp = []
  #   temp << @children
  #   loop do
  #     break if temp.empty?
  #     current = temp.shift
  #     if current.is_a?(Array)
  #       current.length.times do
  #         temp << current.shift
  #       end
  #     else
  #       return current if current.value == value
  #       temp << current.children if current.children
  #     end
  #   end
  #   return "#{value} not found"
  # end

  def path_to_tree(value)
    tree = find(value)
    path = [tree.value]
    until tree.is_root?
      path << tree.parent.value
      tree = tree.parent
    end
    path.reverse.join(", ")
  end

  # def get_all_paths
  #   p self.value
  #   paths = []
  #   temp = []
  #   temp << @children
  #   loop do
  #     break if temp.empty?
  #     current = temp.shift
  #     if current.is_a?(Array)
  #       current.length.times do
  #         temp << current.shift
  #       end
  #     else
  #       p current.value
  #       path = path_to_tree("H")
  #       p path
  #       # paths << path
  #       temp << current.children if current.children
  #     end
  #   end
  #   return paths
  # end

  def find_all_paths
    if self.count > 1
      @children.map do |child|
        child.find_all_paths
      end.unshift([self.value])
    else
      return self.value
    end
  end

  def paths(tree, path=[])
    if tree.is_a?(String)
      [path + [tree]]
    else
      node = tree[0]
      tree[1..-1].map do | branch |
      paths(branch, path + node)
      end.flatten 1
    end
  end
  # 
  # def make_tree(hash)
  #   trees = []
  #   this_pair = hash.shift
  #   root = this_pair[0]
  #   tree = Tree.new(root)
  #   children = this_pair[-1]
  #   children.length.times do |i|
  #     tree.add_child(children[i])
  #   end
  #   trees << tree
  #   until hash.empty?
  #     this_pair = hash.shift
  #     key = this_pair[0]
  #     children = this_pair[-1]
  #     if key in trees
  #       children.length.times do |i|
  #         tree.add_child(children[i], find(key))
  #       end
  #     else
  #       tree = Tree.new(key)
  #       children.length.times do |i|
  #         tree.add_child(children[i], find(key))
  #       end
  #       trees << tree
  #     end
  #   end
  # end



  def print_paths
    paths(find_all_paths).map do |path|
      path.join(", ")
      p path
    end
  end
end


def getinput
## Sample Input 1:
  # 5
  # BAD
  # CZD
  # DEF
  # AYB
  # AZC
  # cars = ['BAD', 'CZD', 'DEF', 'AYB', 'AZC']
  cars = ['AYB', 'BAD', 'EXX', "AYC", "DOG", "BAM", "MNO", "OPQ", "QRS"]
  # int.times do
  #   cars << gets.chomp
  # end
  cars.map {|car| car[0] <= car[-1] ? car : car.reverse }.sort
end

def find_matches(cars)
  cars.sort!
  matches = {}
  cars.each_with_index do |car, index|
    (index+1).upto(cars.length-1) do |i|
      if car[-1] == cars[i][0]
        if matches.has_key?(car)
          matches[car] += [cars[i]]
        else
          matches[car] = [cars[i]]
        end
      end
    end
  end
  matches
end

def print_matches(cars, path=[])
  #{"AYB"=>["BAD", "BAM"], "BAD"=>["DOG"], "BAM"=>["MNO"], "MNO"=>["OPQ"], "OPQ"=>["QRS"]}
  # if cars.is_a?(String)
  #   [path + [cars]]
  # else
  cars.map do |key, value|
    node = key
    print_matches(branch, path + node) #FIX ME
  end.flatten
  # end
end
# def alphacars(sorted_car_array)
#   cars = sorted_car_array # ['AYB', 'AZC', 'BAD', 'CZD', 'DEF']
#   longest = []
#   cars.each_with_index do |car, index|
#     #'AYB'
#     this_cars_train = [car] #['AYB']
#     (index+1).upto(cars.length-1) do |i|
#       #i = 1
#       if this_cars_train[-1][-1] == cars[i][0]
#         this_cars_train << cars[i]
#       end
#     end
#   longest = this_cars_train.length > longest.length ? this_cars_train : longest
#   end
#   return longest.join("-")
# end

# Problem Statement

# We have a set of freight cars. We want to hook them together to get the chain of maximum length.
# Some freight cars have a unique front end, and some can have either end in front.
# Two freight cars can be joined together only if their
# coupling mechanisms are compatible
# Each freight car is described by a string of uppercase letters.
# The front end is the end with the letter that
# comes first in the alphabet (if it starts and ends with the same letter,
# either end can be in front). Two words can
# be hooked together only if the two adjoining ends have the same letter.
# If more than one chain of the longest length is possible,
# return the one that comes first alphabetically. Remember
# that the length of a freight car chain is the number of freight cars in it,
# not the number of letters
# The returned string should be all the freight cars in the chain,
# starting at the front of the chain, concatenated
# with '-' showing the coupling between adjacent freight cars.

# Constriants
# - There can be up to 50 freight cars
# - Each element of freight cars contains only uppercase letters ('A'-'Z').
# - Each element of freight cars contains between 3 and 10 characters inclusive.

# Input Explanation
# Line 1: N
# Line 2: 1st word
# Line 3: 2nd word

# ...

# Line N: Nth word
# Sample Input 1:

# 5
# BAD
# CZD
# DEF
# AYB
# AZC
# Output:

# AYB-BAD-DEF

# Sample Input 2:

# 3
# EBA
# DAA
# EXX
# Output:

# ABE-EXX
