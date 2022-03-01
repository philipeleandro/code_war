def get_counted_nucleotides(dna)
  response = {"A" => dna.count("A"), "C" => dna.count("C"), "G" => dna.count("G"), "T" => dna.count("T")}
end