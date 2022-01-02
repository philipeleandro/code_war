def abbrev_name(name)

splitedname = name.split(" ")
names = []
abbreviated_names = []
  
splitedname.each do |n|
  names << n.split("")
end
 
names.each do |e|
  abbreviated_names << e[0].capitalize
end

p  abbreviated_names.join(".")

end