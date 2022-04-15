def pig_it text
  alphabet = ("a".."z").to_a
  split_text = text.split(" ")
  split_word = split_text.map {|n| n.split("") }
  
  split_word.each_with_index do |n,i|
    if n.size == 1 and alphabet.include?(n[0].downcase)
      split_word[i] << "ay"
      split_word[i] = split_word[i].join("")
    elsif alphabet.include?(n[n.size-1])
      split_word[i] << split_word[i][0]
      split_word[i].delete_at(0)
      split_word[i] << "ay"
      split_word[i] = split_word[i].join("")  
    end
  end
    split_word.join(" ")
end