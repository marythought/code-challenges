def tribonacci(signature, n)
  return signature.shift(n) if n < 4
  0.upto(n-4) do |i|
    signature << signature[i] + signature[i+1] + signature[i+2]
  end
  signature
end

puts "#{tribonacci([1,1,1],10)} equal to [1,1,1,3,5,9,17,31,57,105]"
puts "#{tribonacci([1,1,1],3)} equal to [1,1,1]"
puts "#{tribonacci([1,1,1],1)} equal to [1]"
puts "#{tribonacci([1,1,1],0)} equal to []"
puts "#{tribonacci([1,1,1],4)} equal to [1,1,1,3]"



