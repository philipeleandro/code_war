def median(array)
  mid_pos = array.count/2 + 1
  
 p odd_num_1 = array.sort[array.count/2]
 p odd_num_2 = array.sort[array.count/2 - 1]
    
  if array.count.odd?
    return array.sort[mid_pos-1]
  else
    return (odd_num_1.to_f+odd_num_2.to_f)/2
  end
end