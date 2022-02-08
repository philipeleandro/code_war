def play_pass(str, p)
  alphabet = ("a".."z").to_a + ("a".."z").to_a
  str = str.split("")
  new = []
  
  str.each_with_index do |n,i|
    if alphabet.include?(n.downcase)
      new << alphabet[alphabet.index(n.downcase) + p]
    else
      new << n
    end
  end
    result= []
    new.each_with_index do |n,i|
      if ("0".."9").to_a.include?(n)
        result << "#{9 - n.to_i}"
      elsif i.odd?
        result << n
      elsif i.even?
        if n.nil?
        else
          result << n.upcase
        end
      end
    end
      return result.join("").reverse
end