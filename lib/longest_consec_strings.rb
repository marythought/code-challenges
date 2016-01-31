def longest_consec(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0
  k.times do
    strarr << ""
  end
  array = []
  strarr.each_with_index do |string, index|
    break if string == ""
    pushstring = string
    if k > 1
      1.upto(k-1) do |i|
        pushstring += strarr[index+i]
      end
    end
    array << pushstring
  end
  array.max_by(&:length)
end
