def solution(roman)
  roman =  roman.split("")
  num = []
  
  roman.each do |n|
    if n.downcase == "i"
      num << 1
    elsif n.downcase == "v"
      num << 5
    elsif n.downcase == "x"
      num << 10
    elsif n.downcase == "l"
      num << 50
    elsif n.downcase == "c"
      num << 100
    elsif n.downcase == "d"
      num << 500
    elsif n.downcase == "m"
      num << 1000
    end
  end
  
  result = 0
  
  num.each_with_index do |n,i|
    if i == num.length - 1
      result += num[num.length - 1]
    else
      if n < num[i+1]
        result -= n
      else 
        result += n
      end
    end
  end
   return result
end