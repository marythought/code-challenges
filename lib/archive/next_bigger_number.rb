def next_bigger2(n)
  n_array = n.to_s.split("")
  combos = n_array.permutation.to_a.uniq.map(&:join).map(&:to_i)
  smallest = combos.sort.select { |num| num > n }.shift
  smallest.nil? ? -1 : smallest
end

# 201745 => 201754
# remove last two nums, swap, replace
# remove last three nums, try all unique permutations of those, replace
def next_bigger(n)
  n_array = n.to_s.split("")
  2.upto(n_array.length) do |i|
    last = n_array.pop(i)
    if i == 2
      new = (n_array + last.reverse).reduce(&:+).to_i
      return new if new > n
    else
      options = find_combos(last)
      copy = n_array[0...(n_array.length - i)].dup
      combos = options.map do |option|
        (copy + [option]).join.to_i
      end
      smallest = combos.sort.select { |num| num > n }.shift
      return smallest if smallest
    end
    n_array += last
  end
  -1
end

def find_combos(array)
  array.permutation.to_a.uniq.map(&:join)
end

# no longer in use but keeping bc it's cool
# https://en.wikipedia.org/wiki/Permutation - multiset permutation
def calc_factorial(num_array)
  count = Hash.new(0)
  num_array.each do |num|
    count[num.to_i] += 1
  end
  top = factorial(num_array.length)
  bottom = count.each_value.map do |value|
    factorial(value)
  end.reduce(&:*)
  top / bottom
end

def factorial(n)
  (1..n).reduce(&:*)
end
