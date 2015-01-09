class Fixnum
  define_method(:rochambeau) do |cpu_move|

    if self.+(1).%(3).==(cpu_move)
      output = "WIN"
    elsif (self.+(2).%(3)).==(cpu_move)
      output = "LOSE"
    else
      output = "TIE"
    end
    output
  end
end
