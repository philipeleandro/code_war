def sort_array(source_array)
  odd_num = source_array.sort.reject{|i|i.even?}
 
  index = 0
  source_array.each_with_index do |n,i|
    if n.odd?
      source_array[i] = odd_num[index]
      index += 1
    end
  end
    return source_array
end