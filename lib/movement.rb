class Movement

  attr_reader :max_x, :max_y

  # directions on clockwise, starting on North
  CLOCKWISE_DIRECTIONS = [ 'N', 'E', 'S', 'W']

  # initializing with maximum value of x and y
  def initialize(max_x, max_y)
    @max_x = max_x
    @max_y = max_y
  end
end
