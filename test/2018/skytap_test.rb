require "test_helper"
require "2018/skytap"

describe 'the test' do
  it "returns odd values of an array" do
    #  For instance, `get_odd_numbers([1,2,3,4,5,6,7])` should return `[1,3,5,7]`.
    ary = [1,2,3,4,5,6,7]
    assert_equal([1,3,5,7], get_odd_numbers(ary))
  end
end
