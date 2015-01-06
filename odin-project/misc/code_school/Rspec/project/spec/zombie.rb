class Zombie
	attr_accessor :name, :brains, :hungry

	def initialize
		@name = "Ash"
		@brains = 0
	end

	def hungry?
		true
	end
end