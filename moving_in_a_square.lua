-- Make Turtle run in a 4 size square
function moveSquare()
    local start = 1
    local length = 4
    local total_sides = 4
    local current_side = 0

    while current_side < total_sides do
        for x = start, length do
            turtle.forward()
        end    
        turtle.turnRight()
        current_side = current_side + 1;
    end
end
moveSquare()