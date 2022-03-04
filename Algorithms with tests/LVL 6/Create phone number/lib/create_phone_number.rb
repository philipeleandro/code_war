def create_phone_number(numbers)
  first_nums = numbers[0..2]
  mid_nums = numbers[3..5]
  last_nums = numbers[6..numbers.size-1]
  
  return "(#{first_nums.join}) #{(mid_nums.join)}-#{(last_nums.join)}"
end