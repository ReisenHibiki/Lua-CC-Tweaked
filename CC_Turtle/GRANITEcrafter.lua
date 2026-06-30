--crafter
--@diagnostic disable: undefined-global

local function turtleSuckUp(slot)
    if turtle.getItemDetail(slot) == nil then
        turtle.suckUp(64)
    end    
end
local function turtleSuck(slot)
    if turtle.getItemDetail(slot) == nil then
        turtle.suck(64)
    end    
end

local slot = 1
while true do
    if redstone.getInput("back") then
        sleep(10)
    else
        turtle.select(1)
        turtleSuckUp(1)
        sleep(0.5)

        turtle.select(2)
        turtleSuck(2)
        sleep(0.5)


        turtle.select(16)
        turtle.craft()
        turtle.dropDown()

        sleep(1)
    end
end
