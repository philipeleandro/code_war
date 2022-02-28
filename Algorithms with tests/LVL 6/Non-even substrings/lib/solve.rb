def solve(s) 
  split =  s.split("")
  solution = []
  
  split.each_with_index do |m,o|
    split.each_with_index do |n,i|
      if s[o..i].to_i.odd?
        solution << s[o..i]
      end
    end
  end
    return solution.count
end

