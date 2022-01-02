def zero_fuel(distance, mpg, fuel_left)
  if mpg * fuel_left >= distance
    return true
  else
    return false
  end
end



def zero_fuel(distance, mpg, fuel_left)
mpg * fuel_left >= distance
end

def zero_fuel(distance, mpg, fuel_left)
(distance - mpg * fuel_left).positive? ? false : true
end