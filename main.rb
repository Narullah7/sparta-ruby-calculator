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
    clear()
    display_calculator

  when "-"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f - num2.to_f
    puts "Your answer is #{sum}"
    display_calculator

  when "*"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f * num2.to_f
    puts "Your answer is #{sum}"
    display_calculator

  when "/"
    puts "Choose your first number? "
    num1 = gets.chomp()
    puts "Choose your second number? "
    num2 = gets.chomp()
    sum = num1.to_f / num2.to_f
    puts "Your answer is #{sum}"
    display_calculator
  end
end

# function for advanced Calculator
def advanced_calc
  puts "You chose advanced calculator, which operator would you like to use? type 'P' for power or 'S' for square-root? "
  operator = gets.chomp()

  case operator
    when "P"
      puts "Choose your base number? "
      num1 = gets.chomp()
      puts "Choose your exponential number? "
      num2 = gets.chomp()
      sum = (num1.to_f) ** num2.to_f
      puts "Your answer is #{sum}"
      display_calculator

    when "S"
      puts "Choose your number? "
      x = gets.chomp().to_f
      if (x < 0)
        puts "Error, you cannot divide by a negative number"
        display_calculator
      elsif (x >= 0)
        sum = Math.sqrt(x)
        puts "Your answer is #{sum}"
        display_calculator
      end
  end
end

# function for BMI Calculator
def bmi_calc
  puts "Please state whether you want to use the imperial 'I' or metric system 'M'? "
  metric_imperial = gets.chomp()

  case metric_imperial
  when "M"
    puts "Please state you weight (kg)? "
    weight = gets.chomp().to_f
    puts "Please state your height (m)? "
    height = gets.chomp().to_f
    bmi = ((weight) / (height * height))
    puts "Your BMI is: #{bmi.round(2)}"
    display_calculator

  when "I"
    puts "Please state your weight (lbs)? "
    weight = gets.chomp().to_f
    puts "Please state your height (inches)? "
    height = gets.chomp().to_f
    bmi = ( (weight * 703) / (height * height) )
    puts "Your bmi is #{bmi.round(2)}"
    display_calculator
  end
end




#Create initial message and ask for user prompt
def display_calculator
  puts "----Calculator----"
  puts "Please select from the following Calculators. type 'B' for basic, 'A' for advanced and 'M for BMI'? "
  type_of_calc = gets.chomp()
  if (type_of_calc == "B")
    basic_calc
  elsif (type_of_calc == "A")
    advanced_calc
  elsif (type_of_calc == "M")
    bmi_calc
  end

end
display_calculator
