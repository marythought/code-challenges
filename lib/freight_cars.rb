#Read the input using gets
# input = gets.chomp
# puts input

class Car
  attr_accessor :value, :nxt, :prev

  def initialize(value, nxt, prev)
    @value = value
    @nxt = nxt
    @prev = prev
  end
end

class Train
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  # insert at back
  def enqueue(value)
    @tail = Car.new(value, nil, @tail)
    @tail.prev.nxt = @tail if @tail.prev
    @head = @tail unless @head
  end

  # insert at front
  def shift(value)
    @head = Car.new(value, @head, nil)
    @head.nxt.prev = @head if @head.nxt
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

  def getinput(int=5)
  ## Sample Input 1:
    # 5
    # BAD
    # CZD
    # DEF
    # AYB
    # AZC
    # cars = ['BAD', 'CZD', 'DEF', 'AYB', 'AZC']
    cars = ['EBA', 'DAA', 'EXX']
    # int.times do
    #   cars << gets.chomp
    # end
    cars.map {|car| car[0] <= car[-1] ? car : car.reverse }.sort
  end

  def alphacars(sorted_car_array)
    cars = sorted_car_array # ['AYB', 'AZC', 'BAD', 'CZD', 'DEF']
    longest = []
    cars.each_with_index do |car, index|
      #'AYB'
      this_cars_train = [car] #['AYB']
      (index+1).upto(cars.length-1) do |i|
        #i = 1
        if this_cars_train[-1][-1] == cars[i][0]
          this_cars_train << cars[i]
        end
      end
    longest = this_cars_train.length > longest.length ? this_cars_train : longest
    end
    return longest.join("-")
  end

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
