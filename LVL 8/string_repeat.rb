def repeat_str (n, s)
  
array_repetition = []
n.times {array_repetition << s}
array_repetition.join("")
  
end



EASIER WAY

def repeat_str (number, string)
  string * number
end