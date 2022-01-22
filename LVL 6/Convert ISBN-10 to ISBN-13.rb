def isbn_converter(isbn)
  isbn = isbn.split("")
  isbn.pop(1)
  
  add_prefix = "978-"+ isbn.join
  arr_num = add_prefix.delete("-").split("")
  
  sum = []
  arr_num.each_with_index do |n,i|
    if i.odd?
      sum << n.to_i * 3
    else 
      sum << n.to_i
    end
  end
   check = sum.sum % 10 
   check_num = nil
  
   if check != 0   
     check_num = 10 - check
   else
     check_num = 0
   end
  add_prefix + "#{check_num}"
end
