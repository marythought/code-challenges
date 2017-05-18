require "test_helper"
require "longest_consec_strings"

describe 'a string' do
  it "should return the first longest string consisting of k consecutive strings" do
    assert_equal "abigailtheta", longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)
  end
end
