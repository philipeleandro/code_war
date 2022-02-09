def find_it(seq)
  result = nil
  num = seq.uniq
  
  num.each do |n|
    if seq.count(n).odd?
      result = n
    end
  end
    return result
end