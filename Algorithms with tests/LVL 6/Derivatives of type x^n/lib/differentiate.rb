def differentiate(s)
  eq = s.split("")
  
  if eq.count("x") == 0 
    return '0'
  elsif s.split("x").size == 1
    if s.split("x") == ["-"]
      return "-1"
    else
      return "#{s.split("x")[0]}"
    end
  else
    if s.split("x^")[1] == "2"
      p s
      s = s.split("x^")
      s[0] = "#{s[1].to_i * s[0].to_i}"
      return "#{s[0]}x"   
    elsif s.split("x^")[0].to_i != 0
      s = s.split("x^")
      s[0] = "#{s[1].to_i * s[0].to_i}"
      s[1] = "#{s[1].to_i - 1}"
      return "#{s[0]}x^#{s[1]}"
    else 
      if s == "x"
        return "1"
      else
        if s.split("")[0] == "x"
          return "#{s.split("x^").last}x^#{s.split("x^").last.to_i - 1}"
        else
            if s.split("x^")[0] == "-" &&  s.split("x^")[1].to_i < 0
               return "#{s.split("x^").last.to_i.abs}x^#{s.split("x^").last.to_i - 1}"
            else
              return "-#{s.split("x^").last}x^#{s.split("x^").last.to_i - 1}"
            end
        end
      end
    end
  end
end