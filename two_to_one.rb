def longest(a1, a2)
  a3 = a1.split("").sort + a2.split("").sort
  a3.uniq.sort.join
end