# Exception Handling
# Demonstrates Ruby's exception handling with begin/rescue/ensure blocks

begin
  # This will raise a ZeroDivisionError
  x = 10/0
rescue ZeroDivisionError => e
  # Catch the specific exception and print its message
  puts e.message
ensure
  # This block always executes, regardless of whether an exception occurred
  puts "Always runs"
end

# Note: x will be nil if the exception was raised before assignment
puts x