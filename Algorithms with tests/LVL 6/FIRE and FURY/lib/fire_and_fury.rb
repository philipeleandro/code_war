def fire_and_fury(tweet)
  fire_fury = []
  tweet.each_char.with_index do |n,i|
    if tweet.split("")[i..i+3].join("") == "FURY" or tweet.split("")[i..i+3].join("") == "FIRE"
      fire_fury << tweet.split("")[i..i+3].join("")
    end
  end
  
  fire_count = fire_fury.count('FIRE')
  fury_count = fire_fury.count('FURY')
  
  if fire_fury[0] == nil or tweet.split("").count(" ") > 0 or tweet.split("").any?{|n| n != "F" and n != "E" and n !=  "I" and  n !=  "R" and n !=  "U"  and n !=  "Y"}
    return p 'Fake tweet.'
  elsif fire_fury.all? {|n| n == 'FURY'}
    if fire_fury.count == 1
      return p "I am furious."
    else
      repeat = nil
      fire_fury.each_with_index do |n,i|  
        if i == 0
          repeat = "really "
        elsif i < fire_fury.count - 1
           repeat += "really "
        end
      end
      return p "I am #{repeat}furious."
    end
  elsif fire_fury.all? {|n| n == 'FIRE'}
    if fire_fury.count == 1
      return p "You are fired!"
    else
      repeat = nil
      fire_fury.each_with_index do |n,i|  
        if i == 0
          repeat = "You "
        elsif i < fire_fury.count
           repeat += "and you "
        end
      end
      return p "#{repeat}are fired!"
    end
  else
    phrase = nil
     fire_fury.each_with_index do |n,i|
       if i == 0
         if n == 'FIRE'
           phrase = 'You are fired!'
         else 
           phrase = 'I am furious.'
         end
       else
         if fire_fury[1..fire_fury.size - 1].all?{|n| n == "FIRE"}
           repeat = nil
           fire_fury[1..fire_fury.size - 1].each_with_index do |n,i|
              if i == 0
                repeat = "You"
              elsif i < fire_fury.size - 1
                repeat += " and you"
              end
            end
           repeat += " are fired!"
        elsif fire_fury[1..fire_fury.size - 2].all?{|n| n == "FURY"}
          repeat = nil
          fire_fury[1..fire_fury.size - 2].each_with_index do |n,i|
            if i == 0
              repeat = "I am"
            elsif i < fire_fury.size - 1
              repeat += " really"
            end
          end
           repeat += " furious. You are fired!"
        end
      end
    end
      if fire_fury[fire_fury.size - 1] == "FIRE"
        return p "#{phrase} #{repeat}"
      end
  end
end