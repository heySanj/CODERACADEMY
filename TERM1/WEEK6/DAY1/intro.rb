# price = 2;
# puts price;
# puts "You need to pay #{price} dollars.";

puts "Hello World!"
puts "Ruby is a beginner friendly language"
puts "I am a talkbot, what is your name?"
puts
name = gets.chomp
puts
puts "Hi there " + name.to_str + "!"
puts "Where are you from?"
puts
place = gets.chomp
puts
puts "Ayyy! #{name} from #{place}!!"
puts
puts "How old are you #{name} from #{place}?"
puts
age = gets.chomp
yearborn = 2022-age.to_i
puts "Nice! #{name} from #{place} was born in #{yearborn}"
puts