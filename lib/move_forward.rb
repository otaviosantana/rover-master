module MoveForward

  # Hash to keep increase/decrease coordinates, first element of array is what to do on x axis and second element is what to do on y axis
  # If rover goes to North, it needs to increase Y and keep X
  # If rover goes to South, it needs to decrease Y and keep X
  # If rover goes to East, it needs to increase X and keep Y
  # If rover goes to West, it needs to decrease X and keep Y
  MOVEMENTS = { 'N' => [0, 1], 'W' => [-1, 0], 'S' => [0, -1], 'E' => [1, 0] }

  # Move rover forward. It's use direction to decide if rover need to increase/decrease x/y axes
  def move rover
    # set x axis rover position
    rover.position.x += MOVEMENTS[rover.position.direction][0]
    # set y axis rover position
    rover.position.y += MOVEMENTS[rover.position.direction][1]
    # verify if rover is on plateau after move
    raise ArgumentError.new("Invalid commands, rover is out of plateau") if rover.position.x > max_x or rover.position.y > max_y or rover.position.x < 0 or rover.position.y < 0
  end
end
