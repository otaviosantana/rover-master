module RotateRight

  def move rover
    directions = Movement::CLOCKWISE_DIRECTIONS
    # to make a right rotation you should get the element on the right
    rover.position.direction = directions[(directions.index(rover.position.direction) +  1) % 4]
  end
end
