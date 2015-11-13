def validate(n)
  n = n.to_s.chars.map(&:to_i)
  n.each_with_index.map{|i, index| n.length.modulo(2).zero? ? index.even? ? i * 2 : i : index.odd? ? i * 2 : i}
   .map{|i| i > 9 ? i - 9 : i }
   .reduce(:+).modulo(10).zero?
end
