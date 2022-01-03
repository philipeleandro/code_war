def determineTime(durations)
  array_time = []
  durations.each {|e| array_time << e.split(":")}
  h = []
  min = []
  s = []
  
  array_time.each do |n|
    n.each_with_index do |f,i|
      if i == 0 
        h << f.to_i
      elsif i == 1
        min << f.to_i
      else
        s << f.to_i
      end
    end
  end
  
  if (h.sum.to_f + min.sum.to_f/60 + s.sum.to_f/3600) > 24
  
    return p false
  else

    return p true
  end
end
