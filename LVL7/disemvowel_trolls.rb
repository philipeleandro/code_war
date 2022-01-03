def disemvowel(str)
  p str.split("").reject{|n| n == "a" || n == "e" || n == "i" || n == "o" || n == "u"}.reject{|c| c == "A" || c == "E" || c == "I" || c == "O" || c == "U"}.join("")
end

#def disemvowel(str)
#  str.delete('aeiouAEIOU')
#end

#def disemvowel(str)
#  str.gsub /[aeiou]/i, ''
#end

#def disemvowel(str)
#  str.delete "aAeEiIoOuU"
#end
