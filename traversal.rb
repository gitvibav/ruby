# Loops and Traversal
# Demonstrates various ways to iterate and loop in Ruby

arr = [1,2,3]

# Multi-line block syntax with each
arr.each do |num|
  p num
end

# Single-line block syntax with each
arr.each { |num| puts num }

# times method - executes a block a specified number of times
5.times do
  puts "Hi"
end

# while loop - continues while condition is true
i = 5
while i > 0
  puts i
  i = i-1
end