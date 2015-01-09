class String

  define_method(:anagram) do |words|

    self_letters = self.split("").sort()

    output = []

    if (words.include?(","))

      words_array = words.split(",")

    else

      words_array = words.split(" ")

    end

    #takes apart words array and starts loop for each word
    words_array.each() do |loop_word|

      # binding.pry

      is_anagram = true

      loop_word_split = loop_word.split("").sort()

        # checks to see if arrays are directly equal
        if (self_letters.eql?(loop_word_split))

          is_anagram = true

        #checks for partial anagram for self
        elsif (self_letters.count() < loop_word_split.count())

          self_letters.each() do |self_letters|

          if !(loop_word_split.include?(self_letters))

            is_anagram = false

          end

        end

        #checks for partial anagram for loop_letter
        else

          loop_word_split.each() do |loop_letter|

          if !(self_letters.include?(loop_letter))

            is_anagram = false

          end

        end

      end

    if is_anagram == true

      output.push("#{loop_word} is an anagram!")

    else

      output_.push("#{loop_word} is not an anagram!")

    end

  end

    out_string = output.join(" ")

    out_string


  end


end
