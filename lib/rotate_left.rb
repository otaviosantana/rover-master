module RotateLeft

  def move rover
    directions = Movement::CLOCKWISE_DIRECTIONS
    # to make a left rotation, it's necessary to get element on the left, if it is the first element should get the last element of vector. Get the left element is the same as get n - 1 elements on the right.
    rover.position.direction = directions[(3 + directions.index(rover.position.direction)) % 4]
  end
end
