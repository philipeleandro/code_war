def anagrams(word, words)
  result = []
  words.each_with_index do |n,i|
    if n.split("").uniq.sort == word.split("").uniq.sort && word.length == n.length
      result << n
    end
  end
  result  
end