require "pry"

class Triangle 

	# include Error::TriangleError
	
  	attr_accessor :side1, :side2, :side3, :equilateral

	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
	end

	def is_triangle?
		[@side1, @side2, @side3].max < [side1, side2, side3].inject(:+)/2.0
	end

	def kind 
		if(is_triangle? == false)
			begin
				raise TriangleError 
				puts error.message
			end
		else
			case [@side1, @side2, @side3].uniq.size
			when 1 then :equilateral
			when 2 then :isosceles
			else        :scalene
			end
		end

	end
end
 

class TriangleError < StandardError
	def message
		"This is not a vaild triangle."
	end
end


