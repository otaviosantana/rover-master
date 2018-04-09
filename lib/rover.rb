require_relative 'position'

class Rover

  attr_reader :position

  def initialize(position)
    @position = position
  end
end
