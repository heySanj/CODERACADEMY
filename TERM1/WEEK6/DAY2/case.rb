puts "Whats the weather look like?"

weather = gets.chomp

case weather
when "sunny"
    puts "sunscreen on!"
when "showers"
    puts "take an umbrella"
when "storm"
    puts "please stay home"
else
    puts "sorry cannot read the weather"
end