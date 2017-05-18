class Ball
  @@colors = %w(red blue green)
  attr_reader :color

  def initialize(color = nil)
    @color = color ? color : @@colors.sample
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
