def is_valid_walk(walk)
  condition = walk.size

  if condition != 10
    return false
  else
    if walk.count("n") != walk.count("s") or walk.count("w") != walk.count("e")
      return false
    else
      return true
    end
  end 
end