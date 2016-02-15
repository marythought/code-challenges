class RomanNumerals
  @@letters = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
                5 => 'V', 4 => 'IV', 1 => 'I' }

  def self.to_roman(num)
    if @@letters.key?(num)
      return @@letters[num]
    else
      @@letters.sort_by { |k, _v| k }.reverse!
      @@letters.keys.reduce('') do |result, key|
        while num / key > 0 && num > 0
          result += @@letters[key]
          num -= key
        end
        result
      end
    end
  end

  def self.from_roman(string)
    string_array = string.chars
    result = 0
    while string_array.length > 0
      this_num = string_array.shift
      if this_num == "C" || this_num == "X" || this_num == "I"
        this_num += string_array.shift if @@letters.key(this_num + string_array[0])
        result += @@letters.key(this_num)
      else
        result += @@letters.key(char)
      end
    end
    result
  end
end
