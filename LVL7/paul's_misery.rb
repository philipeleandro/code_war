def paul(x)
  points = 0
    x.each do |str|
      if str == "kata"
        points += 5
      elsif str == "Petes kata"
        points += 10
      elsif str == "eating"
        points += 1
      end
    end
  if points < 40
    return "Super happy!"
  elsif points >= 40 && points < 70
    return "Happy!"
  elsif points >= 70 && points < 100
    return "Sad!"
  else
    return "Miserable!"
  end
end