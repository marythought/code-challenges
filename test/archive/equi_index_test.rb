require "test_helper"
require "archive/equi_index"

describe 'equilibrium count' do
  it "returns the equilibrium index" do
    assert_equal(solution([1, -1, 100, -100, 45, 34, -34]), 4)
    assert_equal(solution([1, -1, 100, -100, 101, -101, 23]), 6)
    assert_equal(solution([12, 1, -1, 100, -100, 101, -101]), 0)
    assert_equal(solution([-122_342]), 0)
    assert_equal(solution([1323]), 0)
    assert_equal(solution([0]), 0)
  end
end
