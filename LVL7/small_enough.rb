def small_enough(a, limit)
  if a.sort[a.length - 1] <= limit
    return true
  else
    return false
  end
end
