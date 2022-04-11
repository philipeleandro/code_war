def longest_consec(strarr, k)
  concatenated = []
  longest_word = nil
  
  if k == 1
    strarr.each_with_index do |n,i|
      concatenated << n
    end
  else
    strarr.each_with_index do |n,i|
      if strarr[i+1] == nil
      else
        strarr[i..(i+k-1)].join("")
        concatenated << strarr[i..(i+k-1)].join("")
      end
    end
  end
  
  if strarr.size == 0 || k > strarr.size || k <= 0
    return ""
  else
    return longest_word = concatenated.max_by(&:length)
  end
end