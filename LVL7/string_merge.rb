def string_merge(word1, word2, letter)
  word1 = word1.split("")
  word2 = word2.split("")

  word1.pop(word1.size - word1.find_index(letter).to_i)
  word2 = word2.drop(word2.find_index(letter).to_i)
  
  word1.join + word2.join
end