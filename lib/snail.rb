# refactored using transpose
def snail_refactored(grid)
  grid = grid.clone
  path = []
  loop do
    path << grid.shift
    break if grid.empty?
    grid = grid.transpose
    path << grid.pop
    break if grid.empty?
    grid = grid.transpose
    path << grid.pop.reverse
    break if grid.empty?
    grid = grid.transpose
    path << grid.shift.reverse
    break if grid.empty?
    grid = grid.transpose
  end
  path.flatten
end

# original code
def snail(grid)
  path = []
  loop do
    x = 0
    path << grid.shift
    path = path.flatten
    return path if grid.empty?
    y = -1
    begin
      current = grid[x][y]
      grid[x].delete_at(y)
      path << current
      x += 1
    end until x == grid.length
    return path if grid.empty?
    x = -1
    path << grid.pop.reverse
    path = path.flatten
    return path if grid.empty?
    y = 0
    begin
      current = grid[x][y]
      grid[x].delete_at(y)
      path << current
      x -= 1
    end until x.abs == grid.length + 1
    return path if grid.empty?
  end
  path
end
