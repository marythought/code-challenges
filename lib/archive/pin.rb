def get_pins(observed)
  combos = observed.chars.map do |digit|
    get_neighbors(digit)
  end
  combos.shift.product(*combos).map(&:join)
end

def get_neighbors(digit)
  neighbors = {
    "1": %w(1 2 4),
    "2": %w(1 2 3 5),
    "3": %w(2 3 6),
    "4": %w(1 4 5 7),
    "5": %w(2 4 5 6 8),
    "6": %w(3 5 6 9),
    "7": %w(4 7 8),
    "8": %w(5 7 8 9 0),
    "9": %w(6 8 9),
    "0": %w(8 0)
    }
   neighbors[digit.to_sym]
end
