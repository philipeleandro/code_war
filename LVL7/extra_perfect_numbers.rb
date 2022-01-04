def extra_perfect(n)
  (1..n).to_a.reject{|n| n % 2 == 0}
end
