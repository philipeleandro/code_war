def get_even_numbers(arr)
  even_array = []
  
  arr.each do |num|
    if num.even?
      even_array << num
    end
  end
    return even_array  
end