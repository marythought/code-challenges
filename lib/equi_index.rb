def solution(a)
  left = 0
  right = a.reduce(:+)
  a.each_with_index do |value, index|
    if index == 0
      right -= value
      return index if a.length == 1 || right == 0
    elsif index == a.length-1
      left += a[index-1]
      return index if left == 0
    else
      left += a[index-1]
      right -= value
      return index if left == right
    end
  end
  return -1
end

puts "#{solution([1, -1, 100, -100, 45, 34, -34])} should equal 4"
puts "#{solution([1, -1, 100, -100, 101, -101, 23])} should equal 6"
puts "#{solution([12, 1, -1, 100, -100, 101, -101])} should equal 0"
puts "#{solution([-122342])} should equal 0"
puts "#{solution([1323])} should equal 0"
puts "#{solution([0])} should equal 0"

