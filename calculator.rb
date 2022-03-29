loop do
  puts "Type 1 to enter the calculator and type 0 to exit the program."
  
  choice = gets.chomp.to_i

  if choice == 1
    puts "Add (+), subtract (-), multiply (*) or divide two numbers (:), followed by spaces:"

    string = gets.chomp

    factors = string.split(" ")

    number1 = factors[0].to_f
    number2 = factors[2].to_f

    case factors[1]
      when "+"
        result = number1 + number2
      when "-"
        result = number1 - number2
      when "*"
        result = number1 * number2
      when ":"
        result = number1 / number2
      else
        puts "You didn't write a valid operation."
    end
    puts "The answer is #{result}."

  elsif choice == 0
    break

  else 
    puts "Invalid choice."
    
  end
end