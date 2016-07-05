require("rspec")
require("triangle.rb")

describe('Triangle') do
  it('determines if 3 lengths make a triangle') do
    test_triangle = Triangle.new(0,0,0)
    expect(test_triangle.triangle()).to(eq("some of your sides are less than 0? how is this possible?"))
  end
  it('determines if all sides of the triangle are equal and returns that the triangle is equilateral')do
    test_triangle = Triangle.new(5,5,5)
    expect(test_triangle.triangle()).to(eq("your lengths make a equilateral triangle"))
  end
  it('determines if your triangle is not a triangle') do
    test_triangle = Triangle.new(1,5,4)
    expect(test_triangle.triangle()).to(eq("your lengths do not make a triangle"))
  end
  it('determines if your triangle is an isosceles') do
    test_triangle = Triangle.new(2,2,1)
    expect(test_triangle.triangle()).to(eq("your lengths make a isosceles triangle"))
  end
  it('determines if your triangle is an scalene') do
    test_triangle = Triangle.new(3,5,6)
    expect(test_triangle.triangle()).to(eq("your lengths make a scalene triangle"))
  end
end
