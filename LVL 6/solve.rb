def solve(arr)
  arr
  comb = arr.combination(3).to_a
  times = 0
  
  comb.each do |n|
    if n[2] - n[1] == n[1] - n[0]
      times += 1
    end
  end
    times
end