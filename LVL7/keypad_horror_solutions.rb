def computer_to_phone(numbers)
  splitted = numbers.split("")
  cell_keyboard = []
  splitted.each do |n|
    if n == "7"
    cell_keyboard << "1"
    elsif n == "8"
      cell_keyboard << "2"
    elsif n == "9"
      cell_keyboard << "3"
    elsif n == "4"
      cell_keyboard << n
    elsif n == "5"
      cell_keyboard << n
    elsif n == "6"
      cell_keyboard << n
    elsif n == "1"
      cell_keyboard << "7"
    elsif n == "2"
      cell_keyboard << "8"
    elsif n == "3"
      cell_keyboard << "9"
    elsif n == "0"
      cell_keyboard << n
    end
  end
  cell_keyboard.join
end
