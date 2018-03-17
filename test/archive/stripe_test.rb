require "test_helper"
require "archive/stripe.rb"

describe "stripe" do
  test_input = []

  it "returns a valid result" do
    assert_equal nil, stripe(test_input)
  end
end
