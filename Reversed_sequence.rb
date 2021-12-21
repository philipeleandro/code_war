def reverse_seq(n)
  array_seq = (1..n).to_a
  array_seq.sort {|x,y| y <=> x}
end