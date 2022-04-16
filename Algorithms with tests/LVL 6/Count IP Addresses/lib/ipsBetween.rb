def ipsBetween(start, ending)
  start_ip = start.split(".").map! {|num| num.to_i}
  ending_ip = ending.split(".").map! {|num| num.to_i}
  diff = []
  
  diff = ending_ip.map.with_index do |n,i|
           if i == 0
             (n - start_ip[i])*16777216
           elsif  i == 1
             diff[i] = (n - start_ip[i]) * 65536
           elsif i == 2
             diff[i] = (n - start_ip[i]) * 256
           else
             diff[i] = (n - start_ip[i])
           end
         end
           diff.reduce(:+)
end