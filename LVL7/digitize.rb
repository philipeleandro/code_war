def digitize(n)
  n.to_s.split("").map{|num| num.to_i}
end