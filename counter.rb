class Counter

  attr_reader :colour, :position

  def initialize(colour)
    @colour = colour
    @position = 0
  end

  def move(number)
    @position += number
  end

end
