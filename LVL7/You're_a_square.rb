def is_square(x)
  p sqrt = x**0.5
  p arr = sqrt.to_s.split("")
  
  if x == 0
    return true
  elsif x < 0
    return false
  elsif arr.length < 5
    return true
  else 
    return false
  end
end

def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

def is_square(x)
  return false if x < 0
  (x ** 0.5) % 1 == 0
end