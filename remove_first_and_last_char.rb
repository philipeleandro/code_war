def remove_char(s)
  splitted_array = s.split("")
  index = 0
  removed_string_array = []

   splitted_array.each do |e|
    if index ==  splitted_array.length - 1
    elsif index != 0
      removed_string_array << e
    end
    index += 1
  end
    removed_string_array.join("")
end