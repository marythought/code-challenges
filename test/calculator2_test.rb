require "test_helper"
require "calculator2"

describe 'calculator count' do
  it "counts to the correct number" do
    assert_equal(Calc.new.three.plus.three, 6)
    assert_equal(Calc.new.three.minus.three, 0)
    assert_equal(Calc.new.three.times.three, 9)
    assert_equal(Calc.new.three.divided_by.three, 1)
  end
end
