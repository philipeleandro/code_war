def spoonerize(words)
  
  new_words = []

  first_word = words.split(" ")[0].split("")
  second_word = words.split(" ")[1].split("")
  
  first_word << second_word[0]
  
  first_word[0] = first_word[first_word.length - 1]
  first_word.pop(1)
  first_word.join
  
  new_words << first_word.join
  
  first_word = words.split(" ")[0].split("")
  second_word = words.split(" ")[1].split("")
  
  second_word << first_word[0]
  
  second_word[0] = second_word[second_word.length - 1]
  second_word.pop(1)
  new_words << second_word.join
  
  p new_words.join(" ")
  
  
end