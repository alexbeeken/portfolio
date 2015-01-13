class Parcel
    define_method(:initialize) do |w, h, l|
      @w = w
      @h = h
      @l = l
    end


    define_method(:volume) do
      @w*@h*@l
    end

    define_method(:cost_to_ship) do
      volume*2
    end

end
