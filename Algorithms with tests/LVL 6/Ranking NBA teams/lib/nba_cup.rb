def nba_cup(result_sheet, to_find)
  result = result_sheet.split(",")
    games = []
    points_team_finded = []
    points_other_team = []
    counts = []
    teams = []
    decimal_points = []
    other_team = []
    
    result.each do |n|
      n = n.split(" ")
      team = to_find.split(" ")
      played = []
      team.each do |m|
        n.any? {|p| played << "ok" if p == m}
      end
  
      if played.size == team.size
        games << n.join(" ")
      end
    end
    
    games.each do |n|
      size = to_find.split(" ").size
      teams << to_find
      teams << n.split(" ").shift(3).join(" ")
      if n.split(" ")[0..size-1] == to_find.split(" ")
        points_team_finded << n.split(" ")[size]
        points_other_team << n.split(" ")[-1]
      else
        points_team_finded << n.split(" ")[-1]
        n = n.split(" ")
        n.pop(size+1)
        points_other_team << n[-1]
        decimal_points << n[-1]
        n.pop
        other_team << n.join(" ")
      end
    end
    decimal = []
   
    if points_team_finded.any? {|n| n.include?(".")} or points_other_team.any? {|n| n.include?(".")}
      decimal << "yes"
    end
    
    points_team_finded.each_with_index {|n,i| points_team_finded[i] = points_team_finded[i].to_i}
    points_other_team.each_with_index {|n,i| points_other_team[i] = points_other_team[i].to_i}
  
    win =  0
    lose = 0
    
    points_team_finded.each_with_index {|n,i| win += 1 if points_team_finded[i] >  points_other_team[i]}
    points_other_team.each_with_index {|n,i| lose += 1 if points_team_finded[i] <  points_other_team[i]}
    
    if to_find == ""
      return ""
    elsif decimal[0] == "yes"
        return "Error(float number):#{other_team[0]} #{decimal_points[0]} #{to_find} #{points_team_finded[0]}"
    elsif games.size > 0
      return "#{to_find}:W=#{win};D=0;L=#{lose};Scored=#{points_team_finded.sum};Conceded=#{points_other_team.sum};Points=#{win*3}"
    else
      return "#{to_find}:This team didn't play!"
    end
  end
  