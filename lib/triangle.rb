class Triangle
  # write code here
  attr_writer :equilateral, :isosceles, :scalene


  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

  end

  def kind
    if @side_1 > 0 && @side_2 >0 && @side_3 > 0 && @side_1 < @side_2 + @side_3 && @side_2 < @side_1 + @side_3 && @side_3 < @side_1 + @side_2
      if @side_1 == @side_2 && @side_2 == @side_3
       :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
    
  end
    class TriangleError < StandardError
      
    end

end

triangle = Triangle.new(2,2,2)
puts triangle.kind