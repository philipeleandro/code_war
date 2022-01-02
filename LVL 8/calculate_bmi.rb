def bmi(weight, height)
  bmi = weight / (height ** 2)
    
    if bmi <= 18.5
      response = "Underweight"
    elsif bmi <= 25
      response = "Normal"
    elsif bmi <= 30
      response = "Overweight"
    else
      response = "Obese"
    end
  end

## https://www.codewars.com/kata/57a429e253ba3381850000fb/train/ruby