def DNA_strand(dna)
  arr_dna = []
  dna.split("").each do |n|
    if n == "A"
      arr_dna << "T"
    elsif n == "T"
      arr_dna << "A"
    elsif n == "G"
      arr_dna << "C"
    else
      arr_dna << "G"
    end
  end
  arr_dna.join("")
end

#def DNA_strand(dna)
#  dna.tr("ACTG", "TGAC")
#end


