#
class Point

	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def ==(point)
		return false if point.nil?
		(@x == point.x) && (@y == point.y)
	end

	def distance_to(other)
		return ((@x-other.x)**2 + (@y - other.y)**2)**0.5
	end

	def hash
		[@x,@y].hash
	end

end