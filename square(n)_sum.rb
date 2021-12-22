def square_sum(numbers)
  squared_num = []
  numbers.each {|num|squared_num << num ** 2}
  
  if squared_num.any? == true
    return squared_num.inject(:+)
  else
    return 0
  end
end

#def squareSum(numbers)
  #numbers.reduce { |s, n| s+=n**2 }
#end

#def squareSum(numbers)
#  numbers.sum {|x| x * x}  
#end

#def squareSum(numbers)
# numbers.inject(0) { |sum, elem| sum + elem * elem }
#end

#def squareSum(numbers)
#  numbers.sum(&:abs2)
#end