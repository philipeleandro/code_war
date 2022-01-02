def break_chocolate(n, m)
  if m * n > 0
     return m * n - 1
  elsif m == 0 && n == 0
    return 0
  end
end