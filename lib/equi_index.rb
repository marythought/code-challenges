def solution(a)
  left = 0
  right = a.reduce(:+)
  a.each_with_index do |value, index|
    if index == 0
      right -= value
      return index if a.length == 1 || right == 0
    elsif index == a.length - 1
      left += a[index - 1]
      return index if left == 0
    else
      left += a[index - 1]
      right -= value
      return index if left == right
    end
  end
  -1
end
