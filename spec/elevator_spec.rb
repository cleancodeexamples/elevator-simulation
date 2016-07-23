require 'state'
require 'floor-listener'
require 'elevator'

describe Elevator do
  context "when in HALT state" do
    it "should remains in HALT state, unless not requested to move" do
      elevator = Elevator.new
      expect(elevator.state).to eq State::HALT
    end

    it "should go to UP state, when requested to move" do
      elevator = Elevator.new
      elevator.move 1
      expect(elevator.state).to eq State::UP
    end

    it "should notify if reaches a floor" do
      elevator = Elevator.new
      floorListener = FloorListener.new
      elevator.addFloorListener floorListener
      expect(floorListener).to receive(:elevatorReached).with(1)

      elevator.move 1
      expect(elevator.state).to eq State::UP
    end
  end
end

