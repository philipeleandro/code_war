def hamming_distance(a, b)
  a = a.to_s(2).split("")
  b = b.to_s(2).split("")
  a_size = a.size
  b_size = b.size
  diff = a_size - b_size
  
  if diff != 0
    if a_size < b_size
      diff.abs.times do 
        a.unshift("0")
      end
    else
      diff.abs.times do
        b.unshift("0")
      end
    end
  end
  
  count = 0
  
  a.size.times do |t|
    if a[t] != b[t]
      count += 1
    end
  end
    return count
end