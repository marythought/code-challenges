# first attempt

def count(weak_finger, weak_count)
  fingers = [1, 2, 3, 4, 5]
  new_fingers = []
  count = 0
  return (weak_finger - 1) if weak_count == 0
  loop do
    finger = fingers.shift
    weak_count -= 1 if finger == weak_finger
    break if weak_count < 0
    new_fingers << finger
    count += 1
    fingers += new_fingers.reverse if fingers.length == 1
  end
  count
end
