def spin_words(string)
  string = string.split(" ")
  
  string.each_with_index do |word,index|
    if word.length >= 5
      string[index] = word.reverse
    end
  end
  string.join(" ")
end