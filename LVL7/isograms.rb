def is_isogram(string)
  str = string.downcase.split("").sort
  
  if str == str.uniq
    return true
  else
    return false
  end
end
