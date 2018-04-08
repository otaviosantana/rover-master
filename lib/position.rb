class Position

  attr_accessor :x, :y, :direction

  def initialize(position)
    raise if position.nil? or position.length != 3
    @x = position[0].to_i
    @y = position[1].to_i
    @direction = position[2]
  end

  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end
