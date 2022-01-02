def dna_to_rna(dna)
str_splited = dna.split("")
rna = []
  
  str_splited.each do |letter|
    if letter == "T"
      rna << "U"
    else
      rna << letter
    end
  end
rna.join("")
end