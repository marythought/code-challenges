class Tree
  attr_accessor :x, :l, :r
end

# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(t)
    return 0 if t.nil?
    # if not empty, root will always be visible
    count = 1
    temp = [t]
    while !temp.empty?
        t = temp.shift
        if !t.l.nil?
            # this is only checking the immediate parent value, not higher ups
            count += 1 if t.l.x >= t.x
            temp << t.l
        end
        if !t.r.nil?
            count += 1 if t.r.x >= t.x
            temp << t.r
        end
    end
    count
end



def solution(a)
    count = 0
    x_axis = y_axis = []
    a.each do | values |
        x_axis << values.x
        y_axis << values.y
    end
    p x_axis
    p y_axis
end
