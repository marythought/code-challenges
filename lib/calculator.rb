class Calculator
  def evaluate(string)
    while string.include?("/") && string.include?("*")
      string = string.index("/") < string.index("*") ? divide(string) : mult(string)
    end
    string = divide(string) while string.include?("/")
    string = mult(string) while string.include?("*")
    sum(string)
  end

  def divide(string)
    divide = %r{(\d+ / \d+)}.match(string)
    string.sub(divide[0], sum(divide[0]).to_s)
  end

  def mult(string)
    mult = /(\d+ \* \d+)/.match(string)
    string.sub(mult[0], sum(mult[0]).to_s)
  end

  def sum(string)
    string = string.split(" ")
    sum = string.shift.to_i
    while string.length > 0
      property = string.shift
      nextnum = string.shift.to_i
      sum = math(sum, property, nextnum)
    end
    sum
  end

  def math(num, property, nextnum)
    case property
    when "+"
      num += nextnum
    when "-"
      num -= nextnum
    when "/"
      num /= nextnum
    when "*"
      num *= nextnum
    end
    num
  end
end
