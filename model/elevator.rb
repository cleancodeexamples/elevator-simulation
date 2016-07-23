# Represents the elevator
class Elevator

	# add a request the elevator visit a floor
	def add_request(floor)
		if floor == @current_floor	# ignore if request is for current floor
			return
		end

		@requests[floor] = floor
		
		if @direction == 0
			# if no direction, the elevator is stationary
			perform_requests()
		end
	end


	#################
	private

	def initialize
		@current_floor = 0	# startup floor
		@direction = 0		# up=1, down=-1, stationary=0
		@requests = []		# requests for floor
	end

	# service any floor requests by moving the elevator
	def perform_requests()
		while @requests.any?
			# get next floor
			while next_floor_up = @requests[@current_floor+1..-1].select {|i| i != nil}.first
				@direction = 1
				# puts "next floor up #{next_floor_up}"
				move(next_floor_up)
			end
	
			while next_floor_down = @requests[0..@current_floor].reverse.select {|i| i != nil}.first
				@direction = -1
				# puts "next floor down #{next_floor_down}"
				move(next_floor_down)
			end
		end

		@direction = 0
	end

	# move elevator to destination floor
	def move(destination)
		@current_floor = destination
		@requests[destination] = nil	# clear requests for the floor
		
		puts "moved to floor #{destination}"
	end
end