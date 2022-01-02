def range(start_num, end_num)
  array = (start_num..end_num).to_a.drop(1)
  array.pop(1) 
  p array
end