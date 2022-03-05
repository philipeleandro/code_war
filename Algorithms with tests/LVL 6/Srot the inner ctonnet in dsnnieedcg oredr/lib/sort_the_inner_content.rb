def sort_the_inner_content(words)
  alphabet = ("a".."z").to_a
  position = []
  result = []
  words.split(" ").map{|n|position << n.split("") }
  
  position.each_with_index do |n,i|
    n.each_with_index do |m,o|
      position[i][o] = alphabet.find_index(m)
    end
  end
  
  position.each do |n|
    if n.size > 1
      first_letter = alphabet[n[0]]
      last_letter = alphabet[n[n.size-1]]
      n.pop
      n.shift
      mid = n.sort.reverse
      mid.each_with_index {|n,i| mid[i] = alphabet[n] }
      result << "#{first_letter}#{mid.join}#{last_letter}" 
    else
      first_letter = alphabet[n[0]]
      n.pop
      mid = n.sort.reverse
      mid.each_with_index {|n,i| mid[i] = alphabet[n] }
      result << "#{first_letter}#{mid.join}" 
    end
  end
  
  return result.join(" ")
end
