class Colors 
  attr_accessor :color
  def initialize(color)
    @color = color
  end
end

class Ball
  attr_reader :color

  def initialize(color = nil)
    @colors = [Colors.new('red'), Colors.new('blue'), Color.new('green')]
    @color = color ? color : @colors.sample
  end
end

class ConveyerBelt
  def initialize
    @balls = []
  end

  def add(ball)
    @balls << ball
    # sort
    @balls
  end

  def sort
    @balls.sort
  end

  def color(index); end

  def swap(index); end
end
