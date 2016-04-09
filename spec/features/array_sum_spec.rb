require "spec_helper"
require "array_sum"

describe 'the array sum function' do
  it "returns two arrays when one element is the sum of the others" do
    assert_equal(array_sum([1, 2, 3, 6]), [[6], [1, 2, 3]])
  end

  it "returns an empty array when an array does not fit the pattern" do
    assert_equal(array_sum([1, 2, 3, 7]), [])
  end
end
