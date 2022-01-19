def cube_sum(n, m)
  lower = nil
  higher = nil
  
  if m > n
    higher = m
    lower = n + 1
  else
    higher = n
    lower = m + 1
  end
  b = (lower..higher).to_a.map{|num|num ** 3}.sum
end