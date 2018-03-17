def narcissistic?(value)
  nums = value.to_s.chars.map(&:to_i)
  nums.inject(0){ |sum, num| sum + num**nums.length } == value
end

puts narcissistic?(130)
puts narcissistic?(5)
puts narcissistic?(153)
puts narcissistic?(370)
puts narcissistic?(371)
