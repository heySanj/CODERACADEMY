class Vehicle

    # attributes are defined in the initialize method

    def initialize(colour, type)

        # instance variables
        @engine = true
        @brakes = true
        @type = type
        @colour = colour
        @seats = 0
        

    end

    # getter method
    def engine
        @engine
    end

    # setter method
    def setColour=(colour)
        @colour = colour
    end

    def colour
        @colour
    end

    def type
        @type
    end

end

# Create instance of the class (an object)

my_car = Vehicle.new("red","sedan")
my_car.setColour = "blue"

another_car = Vehicle.new("yellow","hatchback")

p my_car.colour + " " + my_car.type
p another_car.colour + " " + another_car.type