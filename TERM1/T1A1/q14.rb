# Prime numbers are positive numbers greater than 1.
# For a number to be a prime number, it must be a non-zero whole number.
# Prime numbers are numbers that cannot be divided by any number except themselves and one.
# Prime numbers have only two factors.
# The two factors of prime numbers are one and the number itself.

primeNumbers = []

for n in 1..100
    
    # Skip 1 as it is not prime
    if n == 1
        next
    end

    i = 2   

    while true
        if i >= n
            # is prime
            primeNumbers << n
            break
        else
            rem = n % i
            if rem == 0
                # puts "#{n} is not prime."
                break
            else
                i = i+1
            end
        end
    
    end

end

pp primeNumbers
