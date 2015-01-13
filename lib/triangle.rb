class Triangle
  define_method(:initialize) do |a , b , c|
    @a=a
    @b=b
    @c=c
  end

  define_method(:type) do

    if((@a >= @b+@c) || (@b >= @c+@a) || (@c >= @a+@b))

    return "not triangle"

    elsif(@a == @b && @b == @c && @c == @a)

    return "equilateral"

    elsif(@a == @b || @b == @c || @c == @a)

    return "isosceles"

    else

    return "scalene"

    end
  end

end
