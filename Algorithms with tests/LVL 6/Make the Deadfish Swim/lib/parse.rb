def parse(data)
  data = data.split("")
  output = []
  value = 0
  
  data.each do |n|
    if n == "i"
      value += 1
    elsif n == "d"
      value -= 1
    elsif n == "s"
      value = value**2
    elsif n == "o"
      output << value
    end
  end
  output
end
