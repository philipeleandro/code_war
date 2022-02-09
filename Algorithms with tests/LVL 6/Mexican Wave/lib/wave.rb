def wave(str)
  split = str.split("")
  times_word = []
  size = split.length
  result = []
  size.times do
    times_word << str
  end
  
  times_word.each_with_index do |n,i|
    word = n.split("")
    
    if word[i] == " "
    else
      word[i] = word[i].upcase
      result << word.join
    end
  end
    return result
end
