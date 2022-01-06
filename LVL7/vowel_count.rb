def get_count(input_str)
  input_str.delete('bcdfghjklmnpqrstvwxyz ').split("").count
end