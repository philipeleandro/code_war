def in_array(array1, array2)
  arr = []
  array1.each do |n|
    array2.each do |p|
      if p.include?(n)
        arr << n
      end
    end
  end
    return p arr.uniq.sort
end

