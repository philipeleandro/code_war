def padovan(n)
  a = [1,1,1]
  pos = a.size 
  size_n = n + 1
  diff = size_n - pos
  
  if n >= 3
    (diff).times do |t|
      t = t + 3
      a << a[t-2] + a[t-3]
    end
  end
    return p a[n]
end