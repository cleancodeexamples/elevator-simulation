# Represents the elevator
class Elevator

	# add a request the elevator visit a floor
	def add_request(floor)
		return if floor == @current_floor

		@requests[floor] = floor
		perform_requests() if @direction == 0
	end


	#################
	private

	def initialize
		@current_floor = 0	# startup floor
		@direction = 0		# up=1, down=-1, stationary=0
		@requests = []		# requests for floor
		@visited = []			# records each floor visited for diagnostics
	end

	# service any floor requests by moving the elevator
	def perform_requests()
		while @requests.any?

			# get next floors up
			@direction = 1
			while next_floor_up = @requests[@current_floor+1..-1].select {|i| i != nil}.first
				move(next_floor_up)
			end

			# no more floors to get up,
			# so get next floors down
			@direction = -1
			while next_floor_down = @requests[0..@current_floor].reverse.select {|i| i != nil}.first
				move(next_floor_down)
			end
		end

		@direction = 0	 # elevator idle, awaiting requests
	end

	# move elevator to destination floor
	def move(destination)
		@current_floor = destination
		@requests[@current_floor] = nil	# clear requests for the floor

		@visited << @current_floor		# record floor visits for diagnostics
	end
end
