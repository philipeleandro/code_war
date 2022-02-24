def solution(str)
  if str.empty?
  else
    solution = []
    str.chars.each_slice(2) {|group|solution << group.join }

    if solution.last.split("").count.odd?
      solution[solution.count - 1] = "#{solution[solution.count - 1]}_"
    end
  end
  
  if str.empty?
    return []
  else
    return solution
  end
end