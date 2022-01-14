def remove(s)
  s = s.split("")
  exclamation = []
  
  s.each do |e|
    if e == "!"
      exclamation << e
    end
  end
  
  s.delete("!")
  exclamation.each{|e| s << e }
  s.join
end
