begin
  x = 10/0
rescue ZeroDivisionError => e
  puts e.message
ensure
  puts "Always runs"
end

puts x