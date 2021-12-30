def missing_no(nums)
  complete_nums = (1..100).to_a
  missed_num_array = (complete_nums - nums)
  
  if missed_num_array.any?
    return missed_num_array[0]
  else
    return 0
  end
end

def missing_no a
    0.step.find{|i| !a.include?i}
end