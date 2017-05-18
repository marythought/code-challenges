require "test_helper"
require "freight_cars"

describe 'a car' do
  it "creates a car with first, last, next and previous" do
    car = Car.new('ABZ')
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
    assert_equal 'REST-AZT-RST-BOO-LAS', train.to_s
  end

  it 'accepts input and returns a sorted car array' do
    train = Train.new
    assert_equal ["AYB", "AYC", "BAD", "BAM", "DOG", "EXX", "MNO", "OPQ", "QRS"], train.getinput
  end

  # it 'finds the longest possible car connection' do
  #   train = Train.new
  #   assert_equal 'AYB-BAD-DEF', train.alphacars(train.getinput)
  # end

  # it 'finds all possible car connections' do
  #   cars = ['AYB', 'BAD', 'EXX', "AYC", "DOG", "BAM", "MNO", "OPQ", "QRS"]
  #   car_paths = find_matches(cars)
  #   assert_equal ({"AYB"=>["BAD", "BAM"], "BAD"=>["DOG"], "BAM"=>["MNO"], "MNO"=>["OPQ"], "OPQ"=>["QRS"]}), car_paths
  #   assert_equal "something", print_matches(car_paths)
  # end
end
