require '../model/elevator'
require 'test/unit'

class TestElevator < Test::Unit::TestCase
	def test_new_elevator_default_floor	  # default should be on floor 0
		e = Elevator.new
		
		expected = 0
		assert_equal expected, e.instance_variable_get(:@current_floor)
	end

	def test_move_elevator	# from floor 0 to floor 3
		e = Elevator.new
		e.send(:move, 3)

		expected = 3
		assert_equal expected, e.instance_variable_get(:@current_floor)
	end

	def test_elevator_request	# TODO in progress
		e = Elevator.new
		e.send(:move, 6)

		e.add_request(1)
		e.add_request(7)

	end
end