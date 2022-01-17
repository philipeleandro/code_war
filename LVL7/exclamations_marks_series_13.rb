def product(s)
  s = s.split("")
  exclamation = 0
  question = 0
  s.each do |n|
    if n == "!"
      exclamation += 1
    elsif n == "?"
      question += 1
    end
  end
  return exclamation * question
end
