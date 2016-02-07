require "spec_helper"
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
