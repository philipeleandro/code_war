#https://www.codewars.com/kata/570597e258b58f6edc00230d/train/ruby

def array(string)
  array_string = string.split(",")
  index = 0

  if string.length > 2
  array_string.each do |num|
    if index == 0 
      array_string.delete(num)
    elsif index == array_string.length - 1
      array_string.delete(num)
    end
    index += 1
  end
  p array_string.join(" ")
  else
    return nil
  end
end