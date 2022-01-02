def even_numbers(arr,n)
  even_num = arr.select{|num| num.even?}
  size = even_num.size
  p even_num.slice(-n..size)
end

#def even_numbers(array, n)
 # array.select(&:even?).last(n)
#end

#def even_numbers(arr,n)
#  arr.select { |a| a.even? }.pop(n)
#end