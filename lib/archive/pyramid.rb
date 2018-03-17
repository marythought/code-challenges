# ##Lyrics... Pyramids are amazing! Both in architectural and mathematical sense. If you have a computer, you can mess with pyramids even if you are not in Egypt at the time. For example, let's consider the following problem. Imagine that you have a plane pyramid built of numbers, like this one here:

#    /3/
#   \7\ 4
#  2 \4\ 6
# 8 5 \9\ 3
# Here comes the task...
#
# Let's say that the 'slide down' is a sum of consecutive numbers from the top to the bottom of the pyramid. As you can see, the longest 'slide down' is 3 + 7 + 4 + 9 = 23
#
# Your task is to write a function longestSlideDown (in ruby: longest_slide_down) that takes a pyramid representation as argument and returns its' longest 'slide down'. For example,
#
# longest_slide_down([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]])
# => 23
# ##By the way... My tests include some extraordinarily high pyramides so as you can guess, brute-force method is a bad idea unless you have a few centuries to waste. You must come up with something more clever than that.

# MARY NOTE: this code works for choosing the highest number at any given step, but the problem wants to know what's the overall greater slide that can be reached. fuck that.

def longest_slide_down(pyramid)
  slide = pyramid.shift[0]
  max_index = 0
  until pyramid.empty?
    this_level = pyramid[0][max_index..max_index + 1]
    max_index += 1 if this_level[1] > this_level[0]
    slide << this_level.max
    pyramid.shift
  end
  p slide
  slide.flatten.inject(:+)
end
