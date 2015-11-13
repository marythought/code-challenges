def nearest_square(i)
  best = 1
  perfect = false
  1.upto(i) do |j|
    best = j if j * j <= i
    perfect = true if j * j == i
    return [best, perfect] if j * j > i
  end
end

puts nearest_square(16)
puts nearest_square(17)
puts nearest_square(300)

puts Math.log(300)

puts 17 * 17
puts 2 * 2 * 2 * 2 * 2 * 2
