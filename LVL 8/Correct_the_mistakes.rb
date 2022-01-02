def correct(string)
  str = string.split("")
  correct_string = []
  
  str.each do |letter|
    if letter == "5"
      correct_string << "S"
    elsif letter == "0"
      correct_string << "O"
    elsif letter == "1"
      correct_string << "I"
    else
      correct_string << letter
    end
  end
  p correct_string.join("")
end

https://www.codewars.com/kata/577bd026df78c19bca0002c0/train/ruby

def correct(string)
  string.tr('501','SOI')
end

def correct(string)
  string.gsub("5", "S").gsub("1", "I").gsub("0", "O")
end

p correct("PARI5")

def correct(string)
  string.chars.map { |c| c == '5' ? 'S' : (c == '0' ? 'O' : c == '1' ? 'I' : c) }.join
end