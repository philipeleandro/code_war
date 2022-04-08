def stockList(listOfArt, listOfCat)
  list = listOfArt.each_with_index {|n,i| listOfArt[i] = n.split(" ")}
  list = list.each_with_index {|n,i| n[0] = n[0].split("") }
  sum = []
  result = []
  res = []
  
  list.each_with_index do |n,i|
    listOfCat.each_with_index do |m,j|
      if list[i][0][0] == m
        sum << [m,list[i][1]]
      end
    end
  end
  
  listOfCat.each_with_index do |n,i|
    result << sum.select {|m| m[0] == n}
  end
   
  result.each_with_index do |n,i|
    result[i].each_with_index do |m,k|
      result[i][k] = result[i][k].delete_at(1)
      result[i][k] = result[i][k].to_i
    end
    result[i] = result[i].sum
  end
    result.each_with_index do |n,i|
      res << "(#{listOfCat[i]} : #{n})"
    end
    
      if listOfArt.empty? || listOfCat.empty?
        return ""
      else
        return res.join(" - ")
      end
end