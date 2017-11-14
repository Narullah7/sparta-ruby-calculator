# function for basic Calculator
def basic_calc
  puts "Hey there"
  display_calculator
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
