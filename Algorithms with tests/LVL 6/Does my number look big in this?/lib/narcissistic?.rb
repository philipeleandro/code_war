def narcissistic?(value)
  num = value.to_s.split("")
  num.each_with_index {|n,i| num[i] = num[i].to_i**num.size}
  
  if num.sum == value
    return true
  else
    false
  end
end