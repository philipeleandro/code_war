def explode(s)
  s = s.split("")
  array = []
  
  s.each do |n|
    (n.to_i).times do
      array << n
    end
  end
  array.join
end
