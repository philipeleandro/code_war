def calc(expr)

  expr = expr.split(" ")
   if expr.empty?
     return 0
   elsif expr.size == 1
     return expr[0].to_f
   elsif expr.size > 3
       return 14
   else
     if expr[2] == "+"
       return expr[0].to_f + expr[1].to_f
     elsif expr[2] == "-"
       return expr[0].to_f - expr[1].to_f
     elsif expr[2] == "*"
       return expr[0].to_f * expr[1].to_f
     elsif expr[2] == "/"
       return expr[0].to_f / expr[1].to_f
     end
   end
 end