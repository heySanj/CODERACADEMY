# Original code

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
# i = 0
# while (i < arr.size - 1 and arr[i] < arr[i + 1])
#     i = i + 1 end
# puts i
#     arr[i] = arr[i + 1]
#     arr[i + 1] = arr[i]

# The original array
arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]

# This loop iterates through the array until it finds an element
# that is less than the following element. It then exits the loop.
i = 0
while (i < arr.size - 1 and arr[i] < arr[i + 1])
    i = i + 1
end

# We know that the element that needs to be swapped is at index 'i'
# And we know it must be swapped with the following number at 'i + 1'
swap_number = arr[i]
arr[i] = arr[i + 1]
arr[i + 1] = swap_number
pp arr