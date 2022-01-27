class Order
  def new_order(words)
    str = words.split(" ").map{|n| n.split("")}
    new_order = Array.new(str.size,0)
      
      str.each_with_index do |n,i|
        n.each do |m|
          if ("0".."9").to_a.include?(m)
            new_order[m.to_i - 1] = n
          end
        end
      end
    correct = nil
      new_order.map {|n|n.join("")}.join(" ")    
  end
end
