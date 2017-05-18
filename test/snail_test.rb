require "test_helper"
require "snail"

describe 'snail sort' do
  it "should return a sorted grid" do
    grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    original_grid = grid.clone
    assert_equal(snail_refactored(grid), [1, 2, 3, 6, 9, 8, 7, 4, 5])
    assert_equal(snail_refactored([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]), [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10])
    assert_equal(snail_refactored([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]]), [1, 2, 3, 4, 5, 10, 15, 20, 25, 24, 23, 22, 21, 16, 11, 6, 7, 8, 9, 14, 19, 18, 17, 12, 13])
    # grid is unchanged
    assert_equal grid, original_grid
  end
end
