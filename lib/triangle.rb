class Triangle
  # write code here
  # attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    test_arr = [@a, @b, @c]
    
    if !(@a > 0 && @b > 0 && @c > 0)
      raise TriangleError
    elsif (@a + @b) <= @c || (@b + @c) <= @a || (@a + @c) <= @b
      raise TriangleError
    end


    if test_arr.uniq.length == 1
      :equilateral
    elsif test_arr.uniq.length == 2
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "The triangle parameters entered are illegal"
    end
  end

end
