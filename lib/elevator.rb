require 'state'

class NilFloorListener
  def elevatorReached(floor)
  end

  def elevatorMoved
  end
end


class Elevator
  attr_reader :state

  def initialize
    @state = State::HALT
    @floorListener = NilFloorListener.new
  end

  def move(floor)
    @state = State::UP
    @floorListener.elevatorReached floor
  end

  def addFloorListener(listener)
    @floorListener = listener
  end
end

