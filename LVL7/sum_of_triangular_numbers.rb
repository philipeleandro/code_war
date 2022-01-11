def sum_triangular_numbers(n)
  nums = []
  n.times do |num|
    num += 1
    nums << (1..num).sum
  end
  nums.sum
end
