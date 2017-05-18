require "test_helper"
require "pascals_triangle"

describe 'pascals triangle sort' do
  it "should return a printed triangle by level" do
    assert_equal(pascals_triangle(5), [1, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 4, 6, 4, 1])
  end
end
