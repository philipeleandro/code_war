def find_outlier(integers)
  odd_arr = []
  even_arr = []
  
  integers.each do |n|
    if n.odd?
      odd_arr << n
    else
      even_arr << n
    end
  end
  
  if odd_arr.size == 1
    return odd_arr[0]
  elsif even_arr.size == 1
    return even_arr[0]
  end
end
