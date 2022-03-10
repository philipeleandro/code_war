def stat(strg)
  p strg
  range = []
  avg = []
  median = []
  data = strg.split(",")
  sec = 0
  
  data.each_with_index do |n,i|
    n = n.split("")
    n.delete(" ")
    data[i] = n.join
  end
  
  splited_data = data.each_with_index {|n,i| data[i] = data[i].split("|")}
  
  in_sec_data = []
  
  splited_data.each do |n|
    in_sec_data << [n[0].to_i*3600,n[1].to_i*60,n[2].to_i]
  end
  
  p in_sec_total = in_sec_data.each_with_index {|n,i| in_sec_data[i] = in_sec_data[i].sum}
  
  order_in_sec_total = in_sec_total.sort
  sec = (order_in_sec_total.last -  order_in_sec_total.first).to_f
  
  h = (sec/3600).to_s.split(".")[0].to_i
  min = ((sec/3600 - h)*60).to_s.split(".")[0].to_i
  s = sec.to_i - (3600*h) - (60*min)
  
  if h.to_s.length == 1
      range << "0#{h}"
    else
      range << "#{h}"
    end

    if min.to_s.length == 1
      range << "0#{min}"
    else
      range << "#{min}"
    end
    
    if s.to_s.length == 1
      range << "0#{s}"
    else
      range << "#{s}"
    end
  
  sum_all_times = (order_in_sec_total.sum/data.size).to_f
  
  h = (sum_all_times/3600).to_s.split(".")[0].to_i
  min = ((sum_all_times/3600 - h)*60).to_s.split(".")[0].to_i
  s = sum_all_times.to_i - (3600*h) - (60*min)
  
    if h.to_s.length == 1
      avg << "0#{h}"
    else
      avg << "#{h}"
    end

    if min.to_s.length == 1
      avg << "0#{min}"
    else
      avg << "#{min}"
    end
    
    if s.to_s.length == 1
      avg << "0#{s}"
    else
      avg << "#{s}"
    end
  
  half = data.size/2
  
  if data.size.even?
    value = ((order_in_sec_total[half] + order_in_sec_total[half-1]).to_f)/2
    h = (value/3600).to_s.split(".")[0].to_i
    min = ((value/3600 - h)*60).to_s.split(".")[0].to_i
    s = value.to_i - (3600*h) - (60*min)
    
    if h.to_s.length == 1
      median << "0#{h}"
    else
      median << "#{h}"
    end
    
    if min.to_s.length == 1
      median << "0#{min}"
    else
      median << "#{min}"
    end
    
    if s.to_s.length == 1
      median << "0#{s}"
    else
      median << "#{s}"
    end
    
  else
    value = order_in_sec_total[half].to_f
    h = (value/3600).to_s.split(".")[0].to_i
    min = ((value/3600 - h)*60).to_s.split(".")[0].to_i
    s = value.to_i - (3600*h) - (60*min)
    
    if h.to_s.length == 1
      median << "0#{h}"
    else
      median << "#{h}"
    end
    
    if min.to_s.length == 1
      median << "0#{min}"
    else
      median << "#{min}"
    end
    
    if s.to_s.length == 1
      median << "0#{s}"
    else
      median << "#{s}"
    end
  end
    return "Range: #{range[0]}|#{range[1]}|#{range[2]} Average: #{avg[0]}|#{avg[1]}|#{avg[2]} Median: #{median[0]}|#{median[1]}|#{median[2]}"
end
