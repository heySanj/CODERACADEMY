puts

numbers = ["one", "two", "three", "four"]

list = ["milk", "eggs", "bread", "butter"]
list.push "jam"
list.shift
list.pop
puts list

puts

# ITERATORS (Repeat until done)
# - each, each do, each_with_index

# Shorthand
numbers.each {|item| puts item}

# Longform
numbers.each do |item|
    puts item
end

# Index
numbers.each_with_index do |item, i|
    puts "#{item} at #{i}"
end

# Map
numbersUpcase = numbers.map do |item|
    item.upcase
end

puts
p numbers
p numbersUpcase

puts