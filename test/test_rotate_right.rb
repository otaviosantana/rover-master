require_relative "../lib/rover"
require_relative "../lib/position"
require_relative "../lib/movement"
require_relative "../lib/rotate_right"
require "test/unit"

class TestRotateRight < Test::Unit::TestCase

  def test_return_east_when_rover_heading_to_north
    rover = Rover.new(Position.new(["0", "0", "N"]))
    Movement.new(0, 0).extend(RotateRight).move rover
    assert_equal('E', rover.position.direction)
  end

  def test_return_south_when_rover_heading_to_east
    rover = Rover.new(Position.new(["0", "0", "E"]))
    Movement.new(0, 0).extend(RotateRight).move rover
    assert_equal('S', rover.position.direction)
  end

  def test_return_west_when_rover_heading_to_south
    rover = Rover.new(Position.new(["0", "0", "S"]))
    Movement.new(0, 0).extend(RotateRight).move rover
    assert_equal('W', rover.position.direction)
  end

  def test_return_north_when_rover_heading_to_west
    rover = Rover.new(Position.new(["0", "0", "W"]))
    Movement.new(0, 0).extend(RotateRight).move rover
    assert_equal('N', rover.position.direction)
  end
end
