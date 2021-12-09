def rental_car_cost(d)
   if d < 3
     d * 40
   elsif d < 7 
     (d * 40) - 20
   else
     (d * 40) - 50
   end
end

EASIER WAY
def rental_car_cost(d)
    d >= 7 ? d*40 - 50 : d >= 3 ? d*40 - 20 : d*40
end

def rental_car_cost(d)
  return d * 40 if d < 3
  return d * 40 - 20 if d < 7
  return d * 40 - 50
end