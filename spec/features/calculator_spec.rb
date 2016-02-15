require "spec_helper"
require "calculator"

describe 'calculator count' do
  it "counts to the correct number" do
    assert_equal(Calculator.new.evaluate("2 / 2 + 3 * 4 - 6"), 7)
    assert_equal(Calculator.new.evaluate("2 + 2 + 3 - 4 - 6"), -3)
  end
end
