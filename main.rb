def ceaser_cipher(text, spaces=5)
  letterStr = "abcdefhijklmnopqrstuvwxyz"
  letterArray = letterStr.chars
  #puts letterArray.length
  transformedArray = []

  text = text.chars
  text.each do |letter|
    letterIndex = letterArray.index(letter)
    unless letter == " "
      if letterIndex+spaces <= letterArray.length
        
        transformedArray.push(letterArray[letterIndex + spaces])

      else
        wrappedLetterIndex = letterIndex+spaces - letterArray.length
        transformedArray.push(letterArray[wrappedLetterIndex])
      end

    else
      transformedArray.push(" ")
    end
  end
    transformedText = transformedArray.join
end

text = "abc dex"

puts ceaser_cipher(text)