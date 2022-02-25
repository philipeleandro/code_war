def sequence_classifier(arr)
  arr_uniq = arr.uniq
  arr_uniq_sort = arr_uniq.sort
  
  if arr_uniq.size == 1
    return 5
  elsif arr_uniq_sort == arr
    return 1
  elsif arr_uniq_sort.reverse == arr
    return 3
  elsif arr.sort.reverse == arr
    return 4
  elsif arr.sort == arr
    return 2
  else 
    return 0
  end
end