arr = [1,2,3]

arr.each do |num|
  p num
end

arr.each { |num| puts num }

5.times do
  puts "Hi"
end

i = 5
while i > 0
  puts i
  i = i-1
end