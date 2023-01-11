class Triangle
  attr_reader :a, :b, :c
  def initialize(sidea, sideb, sidec)

    @a = sidea
    @b = sideb
    @c = sidec

  end
  def validate_triangle
    if 0 >= (a) || 0 >= (b) || 0 >= (c) || (a + b) <= (c) || (a + c) <= (b) || (b + c) <= (a)
    raise TriangleError
    end
  end
  def kind
    validate_triangle
    if a == b && b == c
      return :equilateral
    elsif a == b || a == c || b == c
      return :isosceles
    else 
      return :scalene
    end
  end
  # def a
  #   @a
  # end
  # def b
  #   @b
  # end
  # def c
  #   @c
  # end
  class TriangleError < StandardError
    # triangle error code
  end
end
