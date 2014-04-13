# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def abs(a)
	if a > 0
		a
	else
		-a
	end
end

def triangle(a, b, c)

	if(a <= 0) || (b <= 0) || (c <= 0)
  		raise TriangleError, "Wtf?"
  	elsif (a + b <= c) || (b + c <= a) || (a + c <= b)
  		raise TriangleError, "Too bad!"
  	elsif (abs(a - b) >= c) || (abs(b - c) >= a) || (abs(a - c) >= b)
  		raise TriangleError, "Chal yaar!"
	end

	if((a == b) && (b == c))
		:equilateral
	elsif((a == b) || (b == c) || (c == a))
		:isosceles
	else
		:scalene
	end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
