def incrementer(nums)
  new_nums = []
  
  nums.each_with_index do |num,position|
    position += 1
    sum = position + num
    if sum > 9
      new_nums << sum.to_s.split("").last.to_i
    else
      new_nums << sum
    end
  end
    new_nums
end 