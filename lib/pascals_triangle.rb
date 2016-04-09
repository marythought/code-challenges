def pascals_triangle(n)
  return [1] if n == 1
  result = [[1], [1, 1]]
  return result.flatten if n == 2
  level = 3
  while level <= n
    this_row = [1, 1]
    while this_row.length < level
      (result.last.length - 1).times do |i|
        this_row.insert(-2, result.last[i] + result.last[i + 1])
      end
    end
    result << this_row
    level += 1
  end
  result.flatten
end
