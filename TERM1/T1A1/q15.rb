# You have access to two variables: raining (boolean) and temperature (integer).
# If it’s raining and the temperature is less than 15 degrees, print to the screen “It’s wet and cold”,
# if it is less than 15 but not raining print “It’s not raining but cold”.
# If it’s greater than or equal to 15 but not raining print “It’s warm but not raining”,
# and otherwise tell them “It’s warm and raining”.

# Get raining value from the user
raining = false
puts "Is it raining today? (y/n)"
if gets.chomp == "y"
    raining = true
end

# Get temperature value from the user
puts "What is the temperature today?"
temperature = gets.chomp.to_i

# Determine the weather
if raining && temperature < 15
    puts "It's wet and cold"
elsif !raining && temperature < 15
    puts "It's not raining but cold"
elsif !raining && temperature >= 15
    puts "It's warm but not raining"
else
    puts "It's warm and raining"
end