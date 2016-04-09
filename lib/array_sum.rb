def array_sum(array)
  array.length.times do
    temp = array.shift
    return [[temp], array] if temp == array.reduce(&:+)
    array << temp
  end
  []
end
