class Fixnum
  define_method(:coin_combinations) do

    input  = self

    nickels = 0

    dimes = 0

    quarters = 0

    until (input.<(25))

      input = input - 25

      quarters = quarters.+(1)

    end

    until (input.<(10))

      input = input - 10

      dimes = dimes.+(1)

    end

    until (input.<(5))

      input = input - 5

      nickels = nickels.+(1)

    end

    pennies = input

    output = "#{pennies} pennies, #{nickels} nickels, #{dimes} dimes and #{quarters} quarters"

  end

end
