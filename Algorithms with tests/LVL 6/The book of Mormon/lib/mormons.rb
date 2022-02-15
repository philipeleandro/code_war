def mormons(starting_number, reach, target)
  result = starting_number
  times = 0
  
  if starting_number >= target
    return 0
  else
    while result < target do
      result += result * reach
      times += 1
    end
  end
   return times
end