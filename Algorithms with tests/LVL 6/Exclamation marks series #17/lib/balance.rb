def balance(left, right)
  left_arr = []
  right_arr = []
  
  left.split("").each do |n|
    if n == "!"
      left_arr << 2
    else
      left_arr << 3
    end
  end
 
   right.split("").each do |n|
    if n == "!"
      right_arr << 2
    else
      right_arr << 3
    end
  end
  
  left_sum = left_arr.sum
  right_sum = right_arr.sum
  
  if left_sum < right_sum
    return "Right"
  elsif left_sum > right_sum
    return "Left"
  else
    return "Balance"
  end
end
