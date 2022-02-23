def what_century(year)
  year = year.split("")
  century = []
  century << year[0] 
  century << year[1]
  rest = []
  rest << year[2] 
  rest << year[3]
 
  if rest.join.to_i == 0
    if century.last == "1" && century.join.to_i > 20
      return "#{century.join}st"
    elsif century.last == "2" && century.join.to_i > 20
      return "#{century.join}nd"
    elsif century.last == "3" && century.join.to_i > 20
      return "#{century.join}rd"
    else
      return "#{century.join}th"
    end
  else
    cent = century.join.to_i + 1
    cent = cent.to_s.split("")

    if cent.last == "1" && cent.join.to_i > 20
      return "#{cent.join}st"
    elsif cent.last == "2" && cent.join.to_i > 20
      return "#{cent.join}nd"
    elsif cent.last == "3" && cent.join.to_i > 20
      return "#{cent.join}rd"
    else
      return "#{cent.join}th"
    end
  end
end