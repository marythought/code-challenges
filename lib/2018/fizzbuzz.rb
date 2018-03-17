def fizzbuzz(num)
  1.upto(num) do |i|
    str = ""
    str = "Fizz" if i.modulo(3).zero?
    str += "Buzz" if i.modulo(5).zero?
    p str.empty? ? i : str
  end
end

fizzbuzz(15)