TERMINAR ESSE AQUI

def title_case(title, minor_words = '')
  string_array = title.split" "

  out_put_array=[]
  string_array.each do |word|
    if word.length == 2
      if 
      out_put_array << word
    else 
      out_put_array << word.capitalize
    end
end

final_string = out_put_array.join(" ")
end

https://www.codewars.com/kata/5202ef17a402dd033c000009/train/ruby
