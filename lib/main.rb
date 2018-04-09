require_relative 'rover'
require_relative 'position'
require_relative 'movement'
require_relative 'rotate_left'
require_relative 'rotate_right'
require_relative 'move_forward'

class Main

  # Mapping instructions to module
  MOVEMENTS = {
    'L' => RotateLeft,
    'R' => RotateRight,
    'M' => MoveForward
  }

  # getting maximum values to x and y
  max_x, max_y = gets.split.map(&:to_i)

  # while user add input position of rovers
  while !(initial_position = gets).nil? do
    begin
      rover = Rover.new(Position.new(initial_position.split))
      movements = gets.chomp
      # iterate on instructions
      movements.each_char do |m|
        # Create an object with behavior asked for the user. L -> Rotate Left, R -> Rotate Right, M - Move Forward
        movement = Movement.new(max_x, max_y).extend(MOVEMENTS[m])
        # make the movement
        movement.move rover
      end
      # print the final position of the rover
      puts rover.position.to_s
    rescue ArgumentError => e
      puts e.message
    rescue Exception => e
      puts "Something went wrong"
    end
  end
end
