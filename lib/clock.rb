class Array
  define_method(:clock) do

    hours = self[0]

    minutes = self[1]

    hour_angle = (hours * 30) + (minutes * 0.5)

    minute_angle = (minutes * 6)

    result = 0.00;

    if !(hour_angle < (minute_angle + 180))

      result = (180 - (hour_angle - (minute_angle + 180)))

    elsif (hour_angle < (minute_angle))

      result = (minute_angle - hour_angle)

    else (hour_angle > (minute_angle))

      result = (hour_angle - minute_angle)

    end

    result

  end

end
