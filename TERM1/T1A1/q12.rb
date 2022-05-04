# Original Code

# celsius = gets
# fahrenheit = (celsius * 9 / 5) + 32
# print "The result is: "
# print fahrenheit
# puts "."

puts "The Celsius to Fahrenheit Converter!"
puts "------------------------------------"
print "Please enter a value in CELSIUS: "
celsius = gets.chomp.to_f
fahrenheit = (celsius * 9 / 5) + 32
print "#{celsius}C is: "
print fahrenheit
puts "F."

