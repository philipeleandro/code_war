def make_password(phrase)
    phrase = phrase.split(" ").map{|word| word.split("")}
    pw = []
    
    phrase.each do |n|
      n.each_with_index do |e,i|
        if i == 0 
          pw << e
        end
      end
    end
    pw.join.tr("IOS","105").tr("ios","105")
  end