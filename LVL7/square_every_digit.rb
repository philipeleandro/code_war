def square_digits num
  arr_squared = []
  num.to_s.split("").map{|n| arr_squared << n.to_i**2}
  
  p arr_squared.map{|n| n.to_s}.join.to_i
end
