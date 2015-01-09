class Array
  define_method(:queen_attack) do |attacker|

    if ((attacker[0] == (self[0])) && (attacker[1] == (self[1])))
      false

    elsif (attacker[1].eql?(self[1]))
      true

    elsif (attacker[0].eql?(self[0]))
      true

    elsif ((attacker[0].-(self[0])).abs.eql?(attacker[1].-(self[1]).abs))
      true

    else
      false

    end

  end

end

=begin
subtract x position
get absolute value

subtract y position
get absolute value

compare x and y
=end
