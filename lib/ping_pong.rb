class Fixnum
    define_method(:ping_pong) do

    numbers = []

      self.times() do |loop_number|

        if loop_number.+(1).%(15).eql?(0)
        numbers.push("ping-pong!")

        elsif loop_number.+(1).%(3).eql?(0)
        numbers.push("ping")

        elsif loop_number.+(1).%(5).eql?(0)
        numbers.push("pong")

        else

        numbers.push(loop_number+1)

        #end for if statement
        end

      #end for loop
      end

    numbers.join()

    #end for define_method
    end

#end for everything
end
