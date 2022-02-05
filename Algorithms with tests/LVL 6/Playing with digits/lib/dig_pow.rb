def dig_pow(n, p)
  splited = n.to_s.split("")
  result = 0
  i = p
  
  
  splited.size.times do |t|
    result += splited[t].to_i ** i
    i += 1
  end
  
  k = result/n
  if k.to_f ==  result.to_f/n.to_f
    return k
  else 
    return -1
  end
end