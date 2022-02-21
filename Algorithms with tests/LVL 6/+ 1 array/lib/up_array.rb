def up_array(arr)
  if arr.any? {|n|n<0} or arr.any? {|n|n>9} or arr == []
    return nil
  else
    arr.each_with_index{|n,i|arr[i]=n.to_s}
    new_value = (arr.join.to_i + 1).to_s.split("")
    return new_value.each_with_index{|n,i|new_value[i]=n.to_i}
  end
end