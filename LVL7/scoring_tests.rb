def score_test(tests, right, omit, wrong)
  correct_array = []
  wrong_array = []
  omit_array = []
  
  tests.each do |n|
    if n == 0
      correct_array << n
    elsif n == 1
      omit_array << n
    else 
      wrong_array << n
    end
  end
  
  c = correct_array.count * right
  w = wrong_array.count * wrong
  o = omit_array.count * omit
  c + o - w
end

#def score_test(tests, right, omit, wrong)
#    c = tests.count(0) * right
#    o = tests.count(1) * omit
#    w = tests.count(2) * wrong
#    c + o - w
#end