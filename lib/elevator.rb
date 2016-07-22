require 'state'

class Elevator
  attr_reader :state

  def initialize
    @state = State::HALT
  end

  def move(floor)
    @state = State::UP
  end
end

