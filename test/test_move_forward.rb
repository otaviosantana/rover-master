require_relative "../lib/rover"
require_relative "../lib/position"
require_relative "../lib/movement"
require_relative "../lib/move_forward"
require "test/unit"

class TestMoveForward < Test::Unit::TestCase

  def test_increase_y_axis_when_heading_to_north
    rover = Rover.new(Position.new(["0", "0", "N"]))
    Movement.new(1, 1).extend(MoveForward).move rover
    assert_equal(0, rover.position.x)
    assert_equal(1, rover.position.y)
    assert_equal('N', rover.position.direction)
  end

  def test_decrease_x_axis_when_rover_heading_to_west
    rover = Rover.new(Position.new(["1", "1", "W"]))
    Movement.new(1, 1).extend(MoveForward).move rover
    assert_equal(0, rover.position.x)
    assert_equal(1, rover.position.y)
    assert_equal('W', rover.position.direction)
  end

  def test_decrease_y_axis_when_heading_to_north
    rover = Rover.new(Position.new(["1", "1", "S"]))
    Movement.new(1, 1).extend(MoveForward).move rover
    assert_equal(1, rover.position.x)
    assert_equal(0, rover.position.y)
    assert_equal('S', rover.position.direction)
  end

  def test_increase_x_axis_when_rover_heading_to_east
    rover = Rover.new(Position.new(["0", "0", "E"]))
    Movement.new(1, 1).extend(MoveForward).move rover
    assert_equal(1, rover.position.x)
    assert_equal(0, rover.position.y)
    assert_equal('E', rover.position.direction)
  end

  def test_raise_error_when_try_to_move_over_max_x
    rover = Rover.new(Position.new(["1", "1", "E"]))
    assert_raise ArgumentError do
      Movement.new(1, 1).extend(MoveForward).move rover
    end
  end

  def test_raise_error_when_try_to_move_over_max_y
    rover = Rover.new(Position.new(["1", "1", "N"]))
    assert_raise ArgumentError do
      Movement.new(1, 1).extend(MoveForward).move rover
    end
  end

  def test_raise_error_when_try_to_move_x_axis_under_zero
    rover = Rover.new(Position.new(["0", "0", "W"]))
    assert_raise ArgumentError do
      Movement.new(1, 1).extend(MoveForward).move rover
    end
  end

  def test_raise_error_when_try_to_move_y_axis_under_zero
    rover = Rover.new(Position.new(["0", "0", "S"]))
    assert_raise ArgumentError do
      Movement.new(1, 1).extend(MoveForward).move rover
    end
  end
end
