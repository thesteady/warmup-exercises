class TriangleError < StandardError
end

def triangle(side_a, side_b, side_c)
  #confirm a valid triangle
  all_sides = [side_a, side_b, side_c]
  confirm_valid_triangle(all_sides)

  if side_a == side_b && side_b == side_c
    :equilateral
  elsif side_a == side_b || side_b == side_c || side_a == side_c
    :isosceles # two equal sides, two equal angles
  else
    :scalene
  end
end

def confirm_valid_triangle(all_sides)
  sides_greater_than_zero?(all_sides)
  sides_valid_ratio?(all_sides)
end

def sides_greater_than_zero?(all_sides)
   all_sides.each do |side|
    if side <= 0
      raise raise TriangleError, "Not a triangle"
    end
  end
end

def sides_valid_ratio?(all_sides)
  a, b, hypotenuse = all_sides.sort
  (a + b) >hypotenuse
end

