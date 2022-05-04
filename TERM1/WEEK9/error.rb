def divide()
    print "Enter a number: "
    n1 = gets.chomp.to_i
    print "Enter another number: "
    n2 = gets.chomp.to_i
    puts "#{n1} / #{n2} = " + (n1/n2).to_s
end

begin
    # code that could potentially result in an error
    divide()
    # puts divide(16,"hello")
    puts mul('test')

rescue TypeError
    # what to do when it results in an error
    puts "ERROR! Cannot be a string."
rescue ZeroDivisionError
    puts "ERROR! Denominator cannot be zero."
retry
rescue
    puts "Method not defined"
end