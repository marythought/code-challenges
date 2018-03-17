
# Given an array of n integers named elements, we can perform several steps on the array. In each step, we choose an elementsi from the array and delete it to earn elementsi points; however, deleting elementsi also deletes any integers equal to elementsi + 1 and elementsi − 1 from elements. For example, if elements = [1, 2, 3, 4], deleting 2 results in elements becoming [4] and earns us 2 points.
# Write a function “MaxPoints” that calculates maximum number of points one can earn from a given array.

def max_points(array)
  array.sort!
  points = 0
  array.each do |num|
  end

end
