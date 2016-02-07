def next_bigger(n)
  n_array = n.to_s.split("")
  combos = get_combos(n_array)
  smallest = combos.sort.select { |num| num > n }.shift
  smallest.nil? ? -1 : smallest
end

def get_combos(array)
  num_possible_combos = array.uniq.length == array.length ? factorial(array.length) : calc_factorial(array)
  combos = []
  until combos.length == num_possible_combos
    num = array.join("").to_i
    combos.include?(num) ? array.shuffle! : combos << num
  end
  combos
end

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
