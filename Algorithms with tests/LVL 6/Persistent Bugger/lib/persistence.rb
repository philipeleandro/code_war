def persistence(n)
  result = 0
  n  = n.to_s.split("")
  num = n.each_with_index { |m,i| n[i] = n[i].to_i }

  until num.size == 1
    num = num.reduce(:*).to_s.split("")
    num = num.each_with_index { |m,i| num[i] = num[i].to_i }
    result += 1
    num.sum
  end
    return result
end