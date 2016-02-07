# Find the sum of the digits of all the numbers from 1 to N (both ends included).
# http://www.codewars.com/kata/527e4141bb2ea5ea4f00072f

# For N = 10 the sum is 1+2+3+4+5+6+7+8+9+(1+0) = 46
#
# For N = 11 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1) = 48
#
# For N = 12 the sum is 1+2+3+4+5+6+7+8+9+(1+0)+(1+1) +(1+2)= 51

def twisted(n)
  sum = 0
  while n > 0
    sum += map(n)
    n -= 1
  end
  sum
end

def map(n)
  n.to_s.chars.map(&:to_i).reduce(:+)
end
