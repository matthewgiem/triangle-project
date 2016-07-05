require('pry')

class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle) do
    str = ""
    if @side1 <=0 || @side2 <= 0 || @side3 <= 0
      str = "some of your sides are less than 0? how is this possible?"
    elsif @side1 == @side2 && @side2 == @side3
      str = "your lengths make a equilateral triangle"
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      str = "your lengths do not make a triangle"
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      str = "your lengths make a isosceles triangle"
    else
      str = "your lengths make a scalene triangle"
    end
    str
  end
end
