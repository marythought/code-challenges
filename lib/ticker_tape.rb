 def solution(a)
  return (a[0] - a[1]).abs if a.length == 2
  left = 0
  right = a.reduce(:+)
  min_distance = a.reduce(:+).abs
  a.each_with_index do |value, index|
    left += value
    right -= value
    if index == a.length-1
      return min_distance = (left - right).abs < min_distance ? (left - right).abs : min_distance
    else
      min_distance = (left - right).abs < min_distance ? (left - right).abs : min_distance
    end
  end
end

# 91% accurate, fails with "small sets" whatever that means??
