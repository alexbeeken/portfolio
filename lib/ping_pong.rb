class Fixnum
    define_method(:ping_pong) do

    numbers = []

      self.times() do |loop_number|

        if loop_number.+(1).%(15).eql?(0)
        numbers.push("<font color='purple' size=50>ping-pong!</font></br>")

        elsif loop_number.+(1).%(3).eql?(0)
        numbers.push("<font color='blue' size=40>ping</font></br>")

        elsif loop_number.+(1).%(5).eql?(0)
        numbers.push("<font color='red' size=30>pong</font></br>")

        else

        numbers.push("<font color='green' size=20>#{loop_number+1}</font></br>")

        #end for if statement
        end

      #end for loop
      end

    numbers.join()

    #end for define_method
    end

#end for everything
end
