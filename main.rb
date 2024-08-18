def ceaser_cipher(text, spaces=5)
  letterStr = "abcdefhijklmnopqrstuvwxyz"
  letterArray = letterStr.chars
  #puts letterArray.length
  transformedArray = []

  text = text.chars
  text.each do |letter|
    letterIndex = letterArray.index(letter.downcase)
    if letterArray.include?(letter.downcase)
      if letterIndex+spaces <= letterArray.length
        unless letter == letter.upcase
          transformedArray.push(letterArray[letterIndex + spaces])
        else
          transformedArray.push(letterArray[letterIndex + spaces].upcase)
        end

      else
        wrappedLetterIndex = letterIndex+spaces - letterArray.length
        unless letter == letter.upcase
          transformedArray.push(letterArray[wrappedLetterIndex])
        else
          transformedArray.push(letterArray[wrappedLetterIndex].upcase)
        end

      end

    else
      transformedArray.push(letter)
    end
  end
    transformedText = transformedArray.join
end

text = "A2! Ruby! :)"

puts ceaser_cipher(text)