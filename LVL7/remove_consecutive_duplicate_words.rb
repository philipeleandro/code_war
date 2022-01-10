def remove_consecutive_duplicates(s)
  s = s.split(" ")
  new = []
  s.each_with_index do |str,i|
    if s[i] != s[i+1]
      new << str
    end
  end
  new.join(" ")
end