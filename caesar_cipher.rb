def caesar_cipher text, shift_num
  # Turn the text variable to an array of characters
  text = text.split("")
  # We turn all the characters to their charcode values
  for i in 0...text.length do 
    text[i] = text[i].ord
  end
  # For all the characters
  for i in 0...text.length do
    # If the character is an uppercase letter
    if text[i] >= 65 && text[i] <= 90
      text[i] += shift_num
      # While the uppercase letter exceeds the maximum uppercase charcode value
      while text[i] > 90
        # We place it where it should be
        text[i] %= 90; text[i] += 64
      end
    end
    # If the character is a lowercase letter
    if text[i] >= 97 && text[i] <= 122
      text[i] += shift_num
      # While the lowercase letter exceeds the maximum lowercase charcode value
      while text[i] > 122
        # We place it where it should be
        text[i] %= 122; text[i] += 96
      end
    end
  end
  
  # Turn all the charcodes back into characters
  for i in 0...text.length do
    text[i] = text[i].chr
  end
  return text.join("")
end
