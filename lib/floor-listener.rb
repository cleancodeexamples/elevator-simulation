require 'state'

class FloorListener
  attr_reader :floor

  def elevatorReached(currentFloor)
    @floor = currentFloor
  end

  def elevatorMoved
  end
end
