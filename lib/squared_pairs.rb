def all_squared_pairs(num)
  results = []
  nums = get_squares_array(num)
  while nums.length > 0
    if nums[0] + nums[-1] == num
      results << [nums.shift, nums.pop]
    elsif nums[0] + nums[-1] < num
      # nums[0] is useless unless it can be doubled for a pair
      if nums[0] * 2 == num
        this_num = nums.shift
        results << [this_num, this_num]
      else
        nums.shift
      end
    else
      # nums[-1] is useless unless it can be doubled for a pair
      if nums[-1] * 2 == num
        this_num = nums.pop
        results << [this_num, this_num]
      else
        nums.pop
      end
    end
  end
  results
end
#max(num) === 2147483647
#Return every unique pair of numbers [a,b] where (a * a) + (b * b) = num;
#return value will be a two-dimensional array [[]]

def get_squares_array(top_limit)
  squares = []
  i = 0
  while i**2 <= top_limit
    squares << i**2
    i += 1
  end
  squares
end
