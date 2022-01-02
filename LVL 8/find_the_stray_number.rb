def stray(numbers)
  dif_num = 0
  n = 0

  numbers.each do |num|
    if numbers[0] != numbers[1]
      dif_num = num
      n += 1
    else numbers[n] != numbers[n+1] && numbers[n] != numbers[n-1]
      dif_num = num
      n += 1
    end
  end

  dif_num
end

result = stray([13, 13, 3, 13, 13, 13, 13])
puts result
#https://www.codewars.com/kata/53f609022f4d534f05000024/train/ruby
