# function for basic Calculator
def basic_calc
  puts "Which operator would you like to use? '+', '-', '/' '*'"
  operator = gets.chomp()

  case operator
  when "+"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f + num2.to_f
    puts "Your answer is #{sum}"

  when "-"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f - num2.to_f
    puts "Your answer is #{sum}"

  when "*"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f * num2.to_f
    puts "Your answer is #{sum}"

  when "/"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f / num2.to_f
    puts "Your answer is #{sum}"
  end


  # display_calculator
end
# function for advanced Calculator
# function for BMI Calculator




#Create initial message and ask for user prompt
def display_calculator
  puts "----Calculator----"
  puts "Please select from the following. type 'B' for basic, 'A' for advanced and 'M for BMI'? "
  type_of_calc = gets.chomp()
  if (type_of_calc == "B")
    basic_calc
  end

end
display_calculator
