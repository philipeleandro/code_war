def get_real_floor(n)
  if n > 0 && n < 13
    return n - 1
  elsif n > 0 && n >= 13
    return n - 2
  elsif n <= 0
    return n
  end
end