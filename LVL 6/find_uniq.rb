def find_uniq(arr)
  diff = 0

  arr.each_with_index do |n,i|
    if arr.last != arr[arr.size - 2] && arr.last != arr[arr.size - 3]
      diff = arr.last
    elsif arr.first != arr[1] && arr.last != arr[2]
      diff = arr.first
    elsif arr[i] != arr [i+1] && arr[i] != arr[i - 1] && i != (arr.size - 1)
      diff = n
    end
  end
  p diff
end