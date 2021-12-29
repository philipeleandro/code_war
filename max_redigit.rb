def max_redigit(num)
  if num <= 0
    return nil
  else
    num.to_s.split("").sort.reverse.join("").to_i
  end
end