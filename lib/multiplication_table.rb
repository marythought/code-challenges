def multiplication_table(rows, columns)
  nested_row = []
  rows = rows.downto(1).map { |i| i }.reverse
  1.upto(columns) do |i|
    nested_row << rows.collect { |j| j * i }
  end
  nested_row
end


p multiplication_table(3, 3)
