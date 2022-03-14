def delete_nth(order,max_e)
  result = []
  
  order.each do |n|
    count = order.count(n)
    if count <= max_e
      result << n
    else
      if result.count(n) < max_e
       result << n
      end
    end
  end
    return result
end
    