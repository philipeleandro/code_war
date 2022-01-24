def alphabet_position(text)
 alphabet = ("a".."z").to_a
  text = text.downcase.chars
  positions = []
  text.each do |char|
    if alphabet.include? char
      positions << alphabet.find_index(char).to_i + 1
    end
  end
  p positions.join(" ")
end
