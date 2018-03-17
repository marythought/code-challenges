require "test_helper"
require "archive/fingers"

describe 'finger count' do
  it "counts to the correct number" do
    assert_equal(count(2, 3), 15)
  end
end
