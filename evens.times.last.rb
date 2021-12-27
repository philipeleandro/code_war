def even_last(numbers) 
   save = 0
   last = numbers.last.to_i
  
    numbers.each_with_index do |num, i|
      if i.even?
        save += num
      end
    end
  save * last
end