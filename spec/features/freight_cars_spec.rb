require "spec_helper"
require "freight_cars"

describe 'a car' do
  it "creates a car with first, last, next and previous" do
    car = Car.new('ABZ', nil, nil)
    assert_equal 'ABZ', car.value
  end
end

describe 'a train' do
  it "instantiates a train with head and tail" do
    train = Train.new
    assert_equal nil, train.head
    assert_equal nil, train.tail
    assert_equal 0, train.length
  end

  it "can add a car at the end" do
    train = Train.new
    train.enqueue('AZT')
    assert_equal 'AZT', train.to_s
    assert_equal 1, train.length
  end

  it 'can add a car at the front' do
    train = Train.new
    train.shift('AZT')
    assert_equal 'AZT', train.to_s
    assert_equal 1, train.length
  end

  it 'can run a combo of enqueue and shift' do
    train = Train.new
    train.shift('AZT')
    train.enqueue('RST')
    train.shift('REST')
    train.enqueue('BOO')
    train.enqueue('SAL')
    assert_equal 5, train.length
    assert_equal 'REST-AZT-RST-BOO-SAL', train.to_s
  end

  it 'accepts input and returns a sorted car array' do
    train = Train.new
    assert_equal ['AYB', 'AZC', 'BAD', 'CZD', 'DEF'], train.getinput
  end

  it 'finds the longest possible car connection' do
    train = Train.new
    assert_equal 'AYB-BAD-DEF', train.alphacars(train.getinput)
  end

end
