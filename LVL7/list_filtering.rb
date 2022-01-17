def filter_list(l)
  int = []
  l.each do |n|
    if n.is_a?(Integer)
      int << n
    end
  end
  return int
end
