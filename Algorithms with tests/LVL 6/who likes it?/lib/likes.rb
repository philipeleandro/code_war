def likes(names)
  size = names.size
  if  size == 0
    return "no one likes this"
  elsif size == 1
    return "#{names[0]} likes this"
  elsif size == 2
    return "#{names[0]} and #{names[1]} like this"
  elsif size == 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"
  elsif size > 3
    return "#{names[0]}, #{names[1]} and #{size - 2} others like this"
  end
end