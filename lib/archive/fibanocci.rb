# Write a function fib() that a takes an integer nn and returns the nnth fibonacci ↴ number.

# TEST fib(6) == 8

def fib(nn)
  #0, 1, 1, 2, 3, 5, 8...
  fib_sequence = [0, 1]
  return 0 if nn == 0
  return 1 if nn == 1
  (nn - 2).times do
    nxt = fib_sequence[0] + fib_sequence[1]
    fib_sequence[0] = fib_sequence[1]
    fib_sequence[1] = nxt
  end
  fib_sequence.reduce(&:+)
end
