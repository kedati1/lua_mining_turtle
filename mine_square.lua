-- Make Turtle run in a square
function moveSquare()
    print("How big would you like the square to be?:")
    local length = tonumber(io.read()) -- Gets size of square
    local current_side = 0
    local tracker = 0
    local fuelValue = turtle.getFuelLevel()

    if fuelValue == length * length or fuelValue > length * length then -- Checks to see if the turtle can perform the action
        while current_side < length do  -- mines a square
            turtle.digDown()
            for x = 2, length do
                turtle.forward()
                turtle.digDown()
            end
            tracker = turtle_alignment(tracker)
            current_side = current_side + 1;
        end
        return_to_start(length)
    else
        print("NEEDS MORE FUEL. CANNOT FULFIL REQUEST!")
    end
end

-- returns turtle to start square when operation finishes
function return_to_start(length)
    local even_counter = 0
    local odd_counter = 1

    if length % 2 == 0  then
        turtle.turnLeft()
    else
        turtle.turnRight()
    end
    while even_counter < length do
        turtle.forward()
        even_counter = even_counter + 1
    end
    if length % 2 == 0  then
        turtle.turnRight()
    else
        turtle.turnLeft()
        while odd_counter < length do
            turtle.forward()
            odd_counter = odd_counter + 1
        end
        turtle.turnLeft()
        turtle.turnLeft()
    end
end

-- Turns turtle based on whether it's at the start or end of a line
function turtle_alignment(tracker)
    if tracker == 1 then
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
        tracker = 0
    else
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
        tracker = 1
    end
    return tracker
end
moveSquare()