USER1 = 258
USER1_NAME = "VallNeko"
USER2 = xxx
USER2_NAME = "xxx"
USER3 = 263
USER3_NAME = "LONLIN"
USER4 = xxx
USER4_NAME = "xxx"
Teleport_Msg = "Teleport Request"
Protocal = "GensoTeleport"
--EAST 1, SOUTH 2, WEST 3, NORTH 4
--change the xxx to your computer ID and your name

rednet.open("bottom")
if(rednet.isOpen("bottom")) then
    print("Rednet Connected")

    if peripheral.isPresent("top") then
        local monitor = peripheral.find("monitor")
        monitor.setTextScale(0.5)
        monitor.setCursorPos(1, 1)
        monitor.write("Online")    
    end
    
    print("Teleport Service: Online")
end
while true do
    repeat
        id,msg = rednet.receive()
    until id == USER1 or id == USER2 or id == USER3 or id == USER4
    print(id,msg)
    if msg == "is_Online" then
        rednet.send(id, "Online" , Protocal)
--code above replys status is online
--code below runs the teleport functions
    elseif id == USER1 and msg == Teleport_Msg then
        print(os.date())
        print("East Teleport Command Received!")
        redstone.setOutput("front",true)
        sleep(0.5)
        redstone.setOutput("front",false)
        sleep(0.5)

        if peripheral.isPresent("top") then
            local monitor = peripheral.find("monitor")
            monitor.setCursorPos(1, 1)
            monitor.write(os.date('%m-%d %H:%M:%S', timestamp))
            monitor.setCursorPos(1, 2)
            monitor.write(USER1_NAME)
            monitor.scroll(-2)    
        end

    elseif id == USER2 and msg == Teleport_Msg then
        print(os.date())
        print("South Teleport Command Received!")
        redstone.setOutput("left",true)
        sleep(0.5)
        redstone.setOutput("left",false)
        sleep(0.5)

        if peripheral.isPresent("top") then
            local monitor = peripheral.find("monitor")
            monitor.setCursorPos(1, 1)
            monitor.write(os.date('%m-%d %H:%M:%S', timestamp))
            monitor.setCursorPos(1, 2)
            monitor.write(USER2_NAME)
            monitor.scroll(-2)    
        end   

    elseif id == USER3 and msg == Teleport_Msg then
        print(os.date())
        print("West Teleport Command Received!")
        redstone.setOutput("back",true)
        sleep(0.5)
        redstone.setOutput("back",false)
        sleep(0.5)

        if peripheral.isPresent("top") then
            local monitor = peripheral.find("monitor")
            monitor.setCursorPos(1, 1)
            monitor.write(os.date('%m-%d %H:%M:%S', timestamp))
            monitor.setCursorPos(1, 2)
            monitor.write(USER3_NAME)
            monitor.scroll(-2)    
        end

    elseif id == USER4 and msg == Teleport_Msg then
        print(os.date())
        print("North Teleport Command Received!")
        redstone.setOutput("right",true)
        sleep(0.5)
        redstone.setOutput("right",false)
        sleep(0.5)

        if peripheral.isPresent("top") then
            local monitor = peripheral.find("monitor")
            monitor.setCursorPos(1, 1)
            monitor.write(os.date('%m-%d %H:%M:%S', timestamp))
            monitor.setCursorPos(1, 2)
            monitor.write(USER4_NAME)
            monitor.scroll(-2)
        end    

    end
        
end