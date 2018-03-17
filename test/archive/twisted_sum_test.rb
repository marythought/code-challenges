require "test_helper"
require "archive/twisted_sum"

describe 'twisted sum' do
  it "map function distills 2 digit number to sum of integers" do
    assert_equal(map(9), 9)
    assert_equal(map(10), 1)
    assert_equal(map(213), 6)
  end

  it "should find the sum of the digits of all the numbers from 1 to N (both ends included)." do
    assert_equal(twisted(4), 10)
    assert_equal(twisted(20), 102)
    assert_equal(twisted(9), 45)
  end
end
