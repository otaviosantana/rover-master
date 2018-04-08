class Movement

  attr_reader :max_x, :max_y

  DIRECTIONS = [ 'N', 'W', 'S', 'E']

  def initialize(max_x, max_y)
    @max_x = max_x
    @max_y = max_y
  end
end
