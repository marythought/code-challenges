require "test_helper"
require "archive/calculator"

describe 'calculator count' do
  it "counts to the correct number" do
    assert_equal(Calculator.new.evaluate("2 / 2 + 3 * 4 - 6"), 7)
    assert_equal(Calculator.new.evaluate("2 + 2 + 3 - 4 - 6"), -3)
    assert_equal(Calculator.new.evaluate("4 * 2 / 2 + 3 * 9 / 3"), 13)
  end
end
