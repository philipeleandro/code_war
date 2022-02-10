def pell(n)
  range = (2..n).to_a.size
  result = [0,1]
  
  range.times do
    result << 2 * result[result.size-1]+ result[result.size-2]
  end
    result.last
end
