def data_reverse(data)
  new = []
  until data.size == 0
    new << data.pop(8)
  end
  
  result = []
  new.size.times do |t|
    new[0].size.times do |i|
      result << new[t][i]
    end
  end
    return result
end
