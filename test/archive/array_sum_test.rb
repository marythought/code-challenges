require "test_helper"
require "archive/array_sum"

describe 'the array sum function' do
  it "returns two arrays when one element is the sum of the others" do
    assert_equal(array_sum([1, 2, 3, 6]), [[6], [1, 2, 3]])
    assert_equal(array_sum([-4, 5, 8, -3, 10]), [[8], [-3, 10, -4, 5]], "with negative nums")
  end

  it "returns an empty array when an array does not fit the pattern" do
    assert_equal(array_sum([1, 2, 3, 7]), [])
    assert_equal(array_sum([]), [], "an empty array")
  end
end
