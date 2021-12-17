def shortcut(s)
  splitted_s = s.split("")
  
  splitted_s.delete("a")
  splitted_s.delete("e")
  splitted_s.delete("i")
  splitted_s.delete("o")
  splitted_s.delete("u")
  p splitted_s.join("")
  
end