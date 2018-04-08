require_relative 'movement'

module RotateLeft

  def move rover
    directions = Movement::DIRECTIONS
    rover.position.direction = directions[(directions.index(rover.position.direction) +  1) % 4]
  end
end
