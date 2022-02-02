def format_words(words)
  sentence = nil
  
  if words != nil
    words.delete("")
    size = words.size 
  end
 
  if words == nil or size == 0
    sentence = ''
  end
  
  if words == nil or size == 0
  else 
    words.each_with_index do |n,i|
      if i == 0
        sentence = "#{words[i]}"
      elsif i == size - 1
        sentence += " and #{words[i]}"
      else 
        sentence += ", #{words[i]}"
      end
    end
  end
    return sentence
end

# def format_words(words)
#   return "" if words.nil?
#   words.reject! { |word| word == "" }
#   words << words.pop(2).join(" and ")
#   words.join(", ")
# end