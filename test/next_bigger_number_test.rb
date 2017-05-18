require "test_helper"
require "next_bigger_number"

describe 'next bigger number' do
  # it "should calculate the correct number of possible answers" do
  #   assert_equal(get_combos((1234.to_s.split("")).length), 24)
  #   assert_equal(get_combos((1233.to_s.split("")).length), 12)
  #   assert_equal(get_combos((12_335.to_s.split("")).length), 66)
  # end
  it "should return the next bigger number or -1 if not possible" do
    assert_equal(next_bigger(12), 21, "it works for 2 digit numbers")
    assert_equal(next_bigger(513), 531)
    assert_equal(next_bigger(2017), 2071)
    assert_equal(next_bigger(414), 441)
    assert_equal(next_bigger(144), 414, "it works with duplicate numbers")
    assert_equal(next_bigger(531), -1, "it returns -1 when no bigger # possible")
  end
end

# Basic tests
# Small numbers
# 12
# Test Passed: Value == 21
# 513
# Test Passed: Value == 531
# 2017
# Test Passed: Value == 2071
# 414
# Test Passed: Value == 441
# 144
# Test Passed: Value == 414
# Bigger numbers
# 123456789
# Test Passed: Value == 123456798
# 1234567890
# Expected: 1234567908, instead got: -1
# 9876543210
# Test Passed: Value == -1
# 9999999999
# Test Passed: Value == -1
# 59884848459853
# Expected: 59884848483559, instead got: -1
