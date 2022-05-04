# command line arguments -- #{ARGV[0]}
# print "Enter a name: "
# name = gets.chomp
# puts "Hello #{name}!"

# command line arguments will overrite arguments within the script

name = ARGV[0] # will take first argument as input
location = ARGV[1] # will take second argument as input

puts "Hello #{name} from #{location}!" 