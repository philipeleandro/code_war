 arr = []
  count = 0
  nums = numbers.split(" ")
  lower = nums[0]
  higher = nums[0]

   nums.each do |n|
    if nums[count].to_i > nums[count+1].to_i and n.to_i > higher.to_i
      higher = n
    end
   count += 1
  end

  arr << higher

  count = 0
  lower = nums[0]
  higher = nums[0]

   nums.each do |n|
    if nums[count].to_i < nums[count+1].to_i and n.to_i < lower.to_i
      lower = n
    end
   count += 1
  end

arr << lower
str = arr.join(" ")

https://www.codewars.com/kata/554b4ac871d6813a03000035/train/ruby
