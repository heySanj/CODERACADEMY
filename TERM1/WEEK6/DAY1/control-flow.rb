puts "enter a number"
number = gets.chomp.to_i

if number < 10 && number > 0
    puts "it is a single digit number"
elsif number < 100 && number >= 10
    puts "it is a 2 digit number"
elsif number < 1000 && number >= 100
    puts "it is a 3 digit number"
else
    puts "I dont know this number"
end