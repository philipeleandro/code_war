def digital_root(n)
  result = n
  
  until result.to_s.split("").count == 1
    num = result.to_s.split("")
    num = num.each_with_index {|m,i| num[i] = num[i].to_i}
    result = num.sum
  end
    return result
end
