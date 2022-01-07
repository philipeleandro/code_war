def double_every_other(num_array)
  arr = []
  
  num_array.each_with_index do |n,i|
    if i.odd?
      arr << n*2
    else
      arr << n
    end
  end
  arr
end