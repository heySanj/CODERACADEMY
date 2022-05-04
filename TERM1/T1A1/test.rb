# i = 0
# while i < 10
#    i = i + 1
#    puts "This is loop number: #{i}"
# end


# while true

#     r = 1 + rand(30)
#     print "#{r} "

#     if r == 22
#         break
#     end
# end

# puts


# num = 0

# while num < 100

#     num += 1

#     if (num % 2 == 0)
#         next
#     end

#     print "#{num} "
# end

# puts

menu = {:drinks => ["coke", "pepsi", "beer", "wine"], :pizza => ["cheese", "chicken", "pep", "hawaii"],
    :burgers => ["cheese", "BLT", "fried chicken", "boston"] }

# puts menu[:burgers]
# puts menu[:drinks]



day = Time.new.day
availability = {day => {"0800-0830" => "Sanj", "0830-0900" => "Sanj", "0900-0930" => "", "0930-1000" => ""},
                day+1 => {"0800-0830" => "", "0830-0900" => "", "0900-0930" => "Rob", "0930-1000" => "Rob"},
                day+2 => {"0800-0830" => "Phil", "0830-0900" => "Phil", "0900-0930" => "Ed", "0930-1000" => "Ed"},
                day+3 => {"0800-0830" => "", "0830-0900" => "", "0900-0930" => "", "0930-1000" => ""}}

# Print bookings

availability.each do |day, timeBlocks|
    timeBlocks.each do |time, customer|
        if customer == ""
            puts "#{time} is available."
        else
            puts "#{time} is booked by #{customer}"
        end
    end
end