-- Chop a 2x2 tree, like a big spruce tree.

-- Position the turtle like this:
--  ##
--  ##
--  T
-- Where # is a log and T is the turtle.

treeSize = 0

turtle.dig()
turtle.forward()

while turtle.detectUp() do
    turtle.digUp()
    turtle.dig()
    turtle.up()

    treeSize = treeSize + 1
end

turtle.turnRight()
turtle.dig()
turtle.forward()
turtle.turnLeft()

for i = 1, treeSize do
    turtle.digDown()
    turtle.down()
    turtle.dig()
end