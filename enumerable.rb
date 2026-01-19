# Enumerable Methods
# Demonstrates common enumerable methods available in Ruby

# map: transforms each element in the array
p [1, 2, 3].map { |n| n * 2 }

# select: filters elements based on a condition (returns even numbers)
p [1, 2, 3, 4].select {|n| n.even?}

# reduce: accumulates values into a single result (sums all numbers)
p [0,2,3].reduce(0) { |sum,n| sum + n }
