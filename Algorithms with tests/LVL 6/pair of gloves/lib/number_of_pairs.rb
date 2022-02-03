def number_of_pairs(gloves)
  uniq = gloves.uniq
  result_array = []
  
  uniq.each do |n|
    if gloves.include?(n)
       result_array << gloves.count(n)
    end
  end
    
  result = []
  result_array.each do |n|
    if n.odd? && n > 2
      result << (n-1)/2
    elsif n.even?
      result << n/2
    end
  end
  
  if result.empty?
    return 0
  else
    return result.sum
  end
end
