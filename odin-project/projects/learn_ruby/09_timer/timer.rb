class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		@hours = @seconds/3600.floor
		@minutes = (@seconds % 3600)/60
		@seconds = (@seconds % 60)
		"#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
	end
end