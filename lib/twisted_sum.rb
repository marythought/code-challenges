def twisted(n)
  sum = 0
  while n > 0
    sum += map(n)
    n -= 1
  end
  sum
end

def map(n)
  n.to_s.chars.map(&:to_i).reduce(:+)
end


puts twisted(9)
puts twisted(4)
puts twisted(20)

puts map(9)
puts map(10)
