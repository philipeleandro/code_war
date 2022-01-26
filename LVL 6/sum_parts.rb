def parts_sums(ls)
  sum = [ls.sum]
  size = ls.size
  count = ls.sum
  
  ls.each_with_index do |n,i|
      count -= ls[i]
      sum << count
  end
  sum
end
