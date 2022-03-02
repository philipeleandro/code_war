def duplicate_encode(word)
  word = word.downcase.split("")
  count = []
  
  word.each do |n|
    char_count = word.count(n)
    if char_count == 1
      count << "("
    else
      count << ")"
    end
  end
    return count.join
end