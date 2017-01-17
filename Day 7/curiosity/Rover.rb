# Imagine you are the Curiosity rover on a very flat, very infinite Mars.
# You'll be given a sequence of instructions, and will need to
# radio back your position. Specifically, let's suppose you
# start at x=0 and y=0, facing north
# could be told to move forward 1 unit, or to turn left or right by 90 degrees
# will be asked for your coordinates after you're done
# So move "LLFFLF" turns to face south,
# moves down 2 units, turns left (now facing east),
# and moves forward, ending at x=1 and y=-2.
#


class Rover

  def initialize
    @direction = :n
    @x = 0
    @y = 0
  end

  def heading
    @direction
  end

  def x
    @x
  end

  def y
    @y
  end

  def forward
    if @direction == :n
      @y += 1

    elsif @direction == :s
      @y -= 1

    elsif @direction == :e
      @x += 1

    elsif @direction == :w
      @x -= 1
    end
  end

  def right
    if heading == :n
      @direction = :e

    elsif heading == :s
      @direction = :w

    elsif heading == :e
      @direction = :s

    elsif heading == :w
      @direction = :n
    end
  end

  def left
    if heading == :n
      @direction = :w

    elsif heading == :s
      @direction = :e

    elsif heading == :e
      @direction = :n

    elsif heading == :w
      @direction = :s
    end
  end

  def follow(input)
    @input = input

    input.chars.each do |x|
      if x == "L"
        left
      elsif x == "R"
        right
      elsif x == "F"
        forward
      end
    end

  end



end
