class Calc
  attr_accessor :function, :nums

  DIGITS = { one:   1,
             two:   2,
             three: 3,
             four:  4,
             five:  5,
             six:   6,
             seven: 7,
             eight: 8,
             nine:  9,
             zero:  0 }

  OPERATIONS = { plus: "+",
                 minus: "-",
                 times: "*",
                 divided_by: "/"}

  def initialize
    @nums = []
    @function = nil
  end

  DIGITS.each do |k, v|
    define_method(k) do
      @nums << v
      return self unless @nums.length > 1
      one, two = @nums
      case function
      when "+"
        one + two
      when "-"
        one - two
      when "*"
        one * two
      when "/"
        one / two
      end
    end
  end

  OPERATIONS.each do |k, v|
    define_method(k) do
      @function = v
      self
    end
  end
end
