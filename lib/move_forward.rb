module MoveForward

  MOVEMENTS = { 'N' => [0, 1], 'W' => [-1, 0], 'S' => [0, -1], 'E' => [1, 0] }

  def move rover
    rover.position.x += MOVEMENTS[rover.position.direction][0]
    rover.position.y += MOVEMENTS[rover.position.direction][1]
    raise ArgumentError.new("Invalid commands, rover is out of plateau") if rover.position.x > max_x or rover.position.y > max_y
  end
end
