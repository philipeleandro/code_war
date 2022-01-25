def multiplication_table(size)
  p array = (1..size).to_a
  new = []
  
  array.each_with_index do |n,i|
    new << array.map{|n|n*(i+1)}
  end
  
  p new
end
