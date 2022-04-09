def most_frequent_days(year)
  days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday','Sunday']
  week_days = []
  count = []
  response = []
  year_split = year.to_s.split("")
  
  if year % 4 == 0 and year_split[year_split.size-2..year_split.size-1].join.to_i % 4 == 0
    366.times do |n|
     week_days << Time.new(year) + (86400*n+1)
    end
  else
    365.times do |n|
     week_days << Time.new(year) + (86400*n+1)
    end
  end
  
  week_days.each_with_index do |n,i|
    if n.monday?
      week_days[i] = "Monday"
    elsif n.tuesday?
      week_days[i] = "Tuesday"
    elsif n.wednesday?
      week_days[i] = "Wednesday"
    elsif n.thursday?
      week_days[i] = "Thursday"
    elsif n.friday?
      week_days[i] = "Friday"
    elsif n.saturday?
      week_days[i] = "Saturday"
    elsif n.sunday?
      week_days[i] = "Sunday"
    end
  end
  
  days.each do |n|
    count << week_days.count(n)
  end
  
  count.each_with_index do |n,i|
    if n == count.max
      response << days[i]
    end
  end
    return response
end