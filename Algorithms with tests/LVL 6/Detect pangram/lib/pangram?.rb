def pangram?(string)
  alphabet = ("a".."z").to_a
  string = string.each_char.with_index { |n,i| string[i] = string[i].downcase }
  count = []
  
  string.split("").uniq.each do |n|
    if alphabet.include?(n)
      count << string.count(n)
    end
  end
  
  if alphabet.size == count.size
    return true
  else
    return false
  end
end