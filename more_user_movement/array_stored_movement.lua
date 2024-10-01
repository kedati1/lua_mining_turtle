function moveForward(amount)
    for x = 1, amount do
        turtle.forward()
    end
end
function moveBackwards(amount)
    for x = 1, amount do
        turtle.back()
    end
end
function moveLeft(amount)
    turtle.turnLeft()
    for x = 1, amount do
        turtle.forward()
    end
    turtle.turnRight() -- Makes turtle face forward again
end
function moveRight(amount)
    turtle.turnRight()
    for x = 1, amount do
        turtle.forward()
    end
    turtle.turnLeft()
end
function moveUp(amount)
    for x = 1, amount do
        turtle.up()
    end
end
function moveDown(amount)
    for x = 1, amount do
        turtle.down()
    end
end
function listOfInstructions()
    local instructions = {}
    print("Hello User! Please input the instructions you would like me to use:")
    print("F - Forward, B - Back, U - Up, D - Down, L - Left, R - Right")
    print("Type 'end' to execute the code")

    local latestInstruction = io.read()
    while not latestInstruction == "end" do
        table.insert(instructions, latestInstruction)
        print("How many spaces would you like me to move?")
        latestInstruction = tonumber(io.read())
        if latestInstruction == "end" then
            table.remove(instructions, instructions[-1])
        end
    end
end