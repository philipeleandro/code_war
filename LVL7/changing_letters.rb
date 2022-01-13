def swap(st)
  splitted_string = st.split("")
  new_array_string = []
  
  splitted_string.each do |n|
    if n == "a" || n == "e" || n == "i" || n == "o" || n == "u"
      new_array_string << n.upcase
    else
       new_array_string << n
    end
  end
  new_array_string.join
end
