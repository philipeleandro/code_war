def duplicate_count(text)
  array = text.split("").map!{|n| n.downcase}
  counter = []
  
  array.each do |n|
    if array.count(n) > 1
      counter << n
    end
  end

  return counter.uniq.size
end