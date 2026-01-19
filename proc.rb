# Procs
# Demonstrates Proc objects - blocks of code that can be stored in variables

# Create a Proc that multiplies a number by 2
# Note: Procs are lenient with arguments - extra arguments are ignored
p = Proc.new{|x| x * 2}

# Call the Proc with multiple arguments (only the first is used)
p p.call(5, 10, 20)  # Output: 10