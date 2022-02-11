def meeting(s)
  s = s.split(";")
  split_couple = []
  result = nil
  
  s.each_with_index do |n,i|
    n = n.split(":")
    split_couple << "(#{n[1].upcase}, #{n[0].upcase})"
  end

  split_couple.sort.each_with_index do |n,i|
    if i == 0
      result = n
    else
      result += n
    end
  end
    return result
end