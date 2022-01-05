def nth_smallest(arr, pos)
  arr.sort.reverse.pop(pos)[0]
end