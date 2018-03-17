def f(n,m)
  quotient, remainder = n.divmod(m)

end

puts "#{f(10, 5)}, 20"
puts "#{f(20, 20)}, 190"
puts "#{f(15, 10)}, 60"
puts "#{f(5, 10)}, 15"


  # sum = 1.upto(m).inject { |sum, i| sum += i % m }
  # repeater *= sum
  # if n % m == 0
  #   return repeater
  # else
  #   repeater += 1.upto(n%m).inject { |sum, i| sum += i % m }
  # end
