class Position

  attr_accessor :x, :y, :direction

  # Assuming that arguments will always be correct
  def initialize(position)
    @x = position[0].to_i
    @y = position[1].to_i
    @direction = position[2]
  end

  # Formatting position like required output format
  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end
