class Line

	attr_reader :point2, :point1

	def initialize(point1, point2)
		@point1 = point1
		@point2 = point2
	end

	def length
		point1.distance_to(point2)
	end
	
	def hash
		point1.hash + point2.hash
	end
	
	def ==(other)
		return false unless other.is_a?(Line)
		((@point1 == other.point1 && @point2 == other.point2) || (@point1 == other.point2 && @point2 == other.point1))
	end

end