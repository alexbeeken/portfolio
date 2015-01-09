class String
  define_method(:palindrome) do

    split_self = self.split(" ").join("").split("")

    compare_string = []

    split_self.each() do |letter|

      compare_string.unshift(letter)

    end

    if split_self.==(compare_string)

      "YESEY"

    else

      "NON"

    end

  end
end
