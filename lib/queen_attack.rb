class Array
  define_method(:queen_attack) do |attacker|

    result = ""
    
    if ((attacker[0] == (self[0])) && (attacker[1] == (self[1])))
      result = "the queen cannot attack herself!"

    elsif (attacker[1].eql?(self[1]))
      result = "the queen is under attack from the north and south!"

    elsif (attacker[0].eql?(self[0]))
      result = "the queen is under attack from her sides!"

    elsif ((attacker[0].-(self[0])).abs.eql?(attacker[1].-(self[1]).abs))
      result = "the queen is under attack under a diagonol attack"

    else
      result = "the queen is safe."

    end
    result
  end

end

=begin
subtract x position
get absolute value

subtract y position
get absolute value

compare x and y
=end
