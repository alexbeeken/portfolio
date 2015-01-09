class String
  define_method(:fnr) do |find, replacement|
    output = ""
    if self.include?(find)

      split_self = self.split(" ")

      split_self.each() do |word|

        wordlet_output = ""

        if word.==(find)

          output.concat("#{replacement} ")

        elsif word.include?(find)

          partial_word_array = word.partition(find)

          partial_word_array.each() do |wordlet|

            if wordlet.==(find)

                wordlet_output.concat(replacement)

            else
                wordlet_output.concat(wordlet)
            end
            #output.concat("#{wordlet_output} ")

          end
          output.concat("#{wordlet_output} ")

        else
          output.concat("#{word} ")
        end

      end
    output = output[0..-2]
    else
    self
    end


  end
end
