def duplicate_elements(m, n)
  p diff = m - n
  comparation = []
  
  if m.empty? || n.empty?
    return false
  elsif diff == m
    return false
  elsif diff != comparation
    return true
  else
    return false
  end
end