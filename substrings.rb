def substrings sentence, dictionary
  # The hash that we will return
  hash = Hash.new
  # Turn everything to downcase
  sentence = sentence.downcase
  for i in 0...dictionary.length do
    dictionary[i] = dictionary[i].downcase
  end
  
  # For all the words in the dictionary
  for word_index in 0...dictionary.length do
    # Initialize the number of findings for the word
    times_found = 0;
    # Remember how many words there are in the dictionary's word
    word_length = dictionary[word_index].length
    # For all the ranges of the sentence
    for sent_range in 0...sentence.length do
      # If there is a match
      if dictionary[word_index] == sentence[sent_range...(word_length + sent_range)]
        # Update the number of times we found it
        times_found += 1
        # Save it in the hash
        hash[dictionary[word_index]] = times_found
      end
    end
  end
  return hash
end
