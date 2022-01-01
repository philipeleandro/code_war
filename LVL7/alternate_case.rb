def alternate_case(s)
  arr = s.split("")
  ans = []
  arr.each {|letter|
    if letter == letter.upcase
      letter = letter.downcase
    else
      letter = letter.upcase
    end
    ans << letter
  }
  ans.join("")
end
