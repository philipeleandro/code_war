def changer(string)
  alph = ("a".."z").to_a
  new = []
  string.downcase.each_char.with_index do |l,i|
    if l == "z" || l == "Z"
      new << "A"
    elsif alph.include?(l)
      new << alph[alph.find_index(l).to_i + 1]
    else
      new << l
    end
  end
  
  final = []
  vowels = ["a","e","i","o","u"]
  new.each do |n|
    if vowels.include?(n)
      final << n.upcase
    else 
      final << n
    end
  end
  p final.join
end