def bump(x)
  count = 0 
  splitted_x = x.split("")
  
  splitted_x.each do |char|
    if char == "n"
      count += 1
    end
  end
  
  if count <= 15
    return "Woohoo!"
  else
    return "Car Dead"
  end
end 