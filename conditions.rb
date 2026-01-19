# Conditional Statements
# Demonstrates Ruby's conditional logic with if/elsif/else and modifier syntax

age = 20

# Standard if/elsif/else statement
if age >= 18
    puts "Adults"
elsif age <= 5
    puts "Junior"
else
    puts "Minor"
end

# Modifier form - executes the statement if the condition is true
puts "Adult" if age >= 18