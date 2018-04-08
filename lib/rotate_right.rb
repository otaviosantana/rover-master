module RotateRight

  def move rover
    directions = Movement::DIRECTIONS
    rover.position.direction = directions[(3 + directions.index(rover.position.direction)) % 4]
  end
end
