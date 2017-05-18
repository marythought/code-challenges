require "test_helper"
require "tribonacci"

describe 'tribonacci' do
  it "should create a fibonacci function that given a signature array/list, returns the first n elements - signature included of the so seeded sequence." do
    assert_equal(tribonacci([1, 1, 1], 10), [1, 1, 1, 3, 5, 9, 17, 31, 57, 105])
    assert_equal(tribonacci([1, 1, 1], 3), [1, 1, 1])
    assert_equal(tribonacci([1, 1, 1], 1), [1])
    assert_equal(tribonacci([1, 1, 1], 0), [])
    assert_equal(tribonacci([1, 1, 1], 4), [1, 1, 1, 3])
  end
end
