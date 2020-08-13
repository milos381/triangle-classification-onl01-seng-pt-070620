# class Triangle
#   attr_accessor :length_one, :lenght_two, :lenght_three
#
#   def initialize(length_one, lenght_two, lenght_three)
#     @length_one = length_one
#     @lenght_two = lenght_two
#     @lenght_three = lenght_three
#     @lenghts = [@length_one, @lenght_two, @lenght_three]
#
#   end
#
#   def kind
# <<<<<<< HEAD
#     if @lenghts.any?{|side| side <= 0 } || ((@lenghts[0] + @lenghts[1]) <= @lenghts[2] || (@lenghts[0] + @lenghts[2]) <= @lenghts[1] || (@lenghts[2] + @lenghts[1]) <= @lenghts[0])
# =======
#     if @lenghts.any?{|side| side <= 0 } && ((@lenghts[0] + @lenghts[1]) < @lenghts[2] || (@lenghts[0] + @lenghts[2]) < @lenghts[1] || (@lenghts[2] + @lenghts[1]) < @lenghts[0])
# >>>>>>> a9a7aa8dac00af4640a284cf685256ab7b52f726
#       raise TriangleError
#     elsif length_one == lenght_two && lenght_two == lenght_three
#       :equilateral
#     elsif length_one == lenght_two || lenght_two == lenght_three || length_one == lenght_three
#       :isosceles
#     else
#       :scalene
#
#     end
#
#   end
#   class TriangleError < StandardError
#
#   end
# end

class Triangle

  attr_accessor :triangle_one, :triangle_two, :triangle_three
  def initialize(triangle_one, triangle_two, triangle_three)
    @triangle_one = triangle_one
    @triangle_two = triangle_two
    @triangle_three = triangle_three
    @lengths = [@triangle_one, @triangle_two, @triangle_three]
  end

  def kind
    if @lengths.any? {|length| length <= 0} && ((@lengths[0] + @lengths[1]) < @lengths[2] || (@lengths[0] + @lengths[2]) < @lengths[1] ||( @lengths[2] + @lengths[1]) < @lengths[0])

      raise TriangleError
    elsif @lengths[0] == @lengths[1] && @lengths[1] == @lengths[2]
      :equilateral
    elsif @lengths[0] == @lengths[1] || @lengths[1] == @lengths[2] || @lengths[0] == @lengths[2]
      :isosceles
    else
      :scalene
    end

  end
  class TriangleError < StandardError
  end
end
