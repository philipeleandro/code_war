def travel(r, zipcode)
  r = r.split(",")
  code = zipcode.split(",")
  nums = nil
  streets = nil
  
  match_code = []
  
  r.each_with_index do |n,i|
    n = n.split(" ")
    r[i] = n[0..n.size - 3].join(" ")
    r[i] << "-#{n.pop(2).join(" ")}"
    r[i] = r[i].split("-")
  
    if r[i][1] == zipcode
      match_code << r[i][0]
    end
  end

  match_code.each_with_index do |n,i|
    split = n.split(" ")
    num = split.shift(1)
    match_code[i] = num
    match_code[i] << split.join(" ")
    
    if i == 0
      nums = "#{match_code[i][0]}"
      streets = "#{match_code[i][1]}"
    else 
      nums += ",#{match_code[i][0]}"
      streets += ",#{match_code[i][1]}"
    end
  end

  return "#{zipcode}:#{streets}/#{nums}"
end