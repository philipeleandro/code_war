def solution(number)
  sum_3_5 = []
  range = (0..number-1).to_a
  
  range.each do |n|
    n = n.to_s.split("")
    n.each_with_index {|m,i| n[i] = m.to_i}
    
    if n.sum % 3 == 0 or n.last == 0 or n.last ==5
      n.each_with_index {|m,i| n[i] = m.to_s}
      sum_3_5 << n.join
    end
  end
    sum_3_5.each_with_index {|n,i| sum_3_5[i] = n.to_i}
    return sum_3_5.sum
end