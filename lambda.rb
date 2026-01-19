# Lambdas
# Demonstrates lambda functions - stricter than Procs regarding arguments

# Create a lambda that multiplies a number by 2
# Note: Lambdas enforce argument count - calling with wrong number raises ArgumentError
l = ->(x) {x * 2}

# Call the lambda (will raise ArgumentError if wrong number of arguments)
p l.call(5, 10)  # Note: This will raise ArgumentError (lambda expects 1 arg, got 2)