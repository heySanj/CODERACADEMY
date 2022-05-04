$option = ""
$array_products = ["Coffee", "Tea", "Chai", "Muffin", "Cheesecake", "Bagel"]

def menuOptions
    system 'clear'
    puts "=========================================="
    puts " Menu Options"
    puts "=========================================="
    puts
    puts "      ------------------------------------------"
    puts "      1. See Menu"
    puts "      2. Add a new product to the menu"
    puts "      3. Edit the product details"
    puts "      4. Remove a specfic product from the menu"
    puts "      5. Exit"
    puts "      ------------------------------------------"
    puts
    print "Enter your option: "
    $option =gets.chomp
    puts
end

def printMenu
    $array_products.each_with_index do |item, i|
        puts "      #{i + 1}.   #{item}"
    end
end

def showMenu
    system 'clear'
    puts "=========================================="
    puts "Welcome to our cafe!"
    puts "Here is our menu."
    puts "=========================================="
    puts
    printMenu
end


def exitCafe
    system 'clear'
    puts "=========================================="
    puts "Thank you! See you next time!"
    puts "=========================================="
end

def invalid
    system 'clear'
    puts "=========================================="
    puts "Invalid entry"
    puts "=========================================="
end

def addProduct
    system 'clear'
    puts "=========================================="
    puts "Add a product to the menu"
    puts "=========================================="
    puts
    print "Item to ADD: "
    product = gets.chomp
    if $array_products.include?(product)
        puts
        puts "Item already exists on the menu."
    else
        $array_products.push(product)
        puts
        puts "#{product} has been added to the menu!"
    end


end

def editProduct
    system 'clear'
    puts "=========================================="
    puts "Edit the product details"
    puts "=========================================="
    puts

    printMenu
    puts
    print "Which menu number would you like to edit? "

    editIndex = gets.chomp.to_i - 1;

    puts
    puts "      #{editIndex + 1}.   #{$array_products[editIndex]}"
    puts
    print "Update this to: "    

    $array_products[editIndex] = gets.chomp
    
    puts
    puts "Menu item at #{editIndex + 1}. is now #{$array_products[editIndex]}"
    
end

def removeProduct
    system 'clear'
    puts "=========================================="
    puts "Remove a specfic product from the menu"
    puts "=========================================="
    puts
    printMenu
    puts
    print "Item to REMOVE: "
    item = gets.chomp

    if $array_products.include?(item)
        puts
        puts "Are you sure you wish to delete #{item}? (y/n)"
        confirm = gets.chomp
        if confirm == "y"
            puts
            puts "#{item} has been deleted."
            $array_products.delete(item)
        else
            puts
            puts "Deletion aborted..."
        end
    else
        puts
        puts "#{item} does not exist on the menu."
    end

end

while $option != "5"

    # system 'clear'

    menuOptions
    
    case $option
    when "1"
        showMenu
    when "2"
        addProduct
    when "3"
        editProduct
    when "4"
        removeProduct
    when "5"
        exitCafe
        next
    else
        invalid
    end
    puts
    print "Press ENTER to continue..."
    gets
    system 'clear'

end
puts
puts