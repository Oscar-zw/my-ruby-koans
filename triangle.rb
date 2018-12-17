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
def triangle(*args)
  if equilateral?(args)
    :equilateral
  elsif isosceles?(args)
    :isosceles
  else
    :scalene
  end
end

private 

def equilateral?(elements)
  elements.all? { |x| x == elements.first }
end

def isosceles?(elements)
  puts elements
  elements.uniq.length == 2
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end