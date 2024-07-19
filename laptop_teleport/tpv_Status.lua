rednet.open("back")
if(rednet.isOpen("back")) then
    print("Rednet Connected")
    term.setTextColour(colors.green)
    print("Teleport Service: Online")
end

Gensokyo_ID = 256
West_Coast_ID = 99
NightyOne_ID = 270
Sixsixsix_ID = 271
Online_Msg = "is_Online"
Teleport_Msg = "Teleport Request"
Protocal = "GensoTeleport"
--change the ID to your target computerID(VallNeko)
station = "None"

while station ~= "0" do
    term.setTextColour(colors.white)
    print("")
    print("")
    print("Enter Teleport Station:")
    term.setTextColour(colors.white)
    print("")
    
    io.write("0.Exit")
    print("")
-- Code below shows status
    term.setTextColour(colors.white)
    io.write("1. Gensokyo: ")
    rednet.send(Gensokyo_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        printError("Offline")
    else
        term.setTextColour(colors.green)
        print("Online")   
    end
    
    term.setTextColour(colors.white)
    io.write("2. West Coast: ")
    rednet.send(West_Coast_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        printError("Offline")
    else
        term.setTextColour(colors.green)
        print("Online")   
    end

    term.setTextColour(colors.white)
    io.write("3. 91Home: ")
    rednet.send(NightyOne_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        printError("Offline")
    else
        term.setTextColour(colors.green)
        print("Online")   
    end

    term.setTextColour(colors.white)
    io.write("4. 666Home: ")
    rednet.send(Sixsixsix_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        printError("Offline")
    else
        term.setTextColour(colors.green)
        print("Online")   
    end

    station = io.read()

--code below runs the teleport functions
    term.setTextColour(colors.green)
    if station == "1" then
        rednet.send(Gensokyo_ID,Teleport_Msg)
        print("Teleport Request sent!")

    elseif station == "2" then
        rednet.send(West_Coast_ID,Teleport_Msg)
        print("Teleport Request sent!")

    elseif station == "3" then
        rednet.send(NightyOne_ID,Teleport_Msg)
        print("Teleport Request sent!")

    elseif station == "4" then
        rednet.send(Sixsixsix_ID,Teleport_Msg)
        print("Teleport Request sent!")

    elseif station == "0" then
        term.setTextColour(colors.red)
        print("Service Closed!")

    else 
        term.setTextColour(colors.red)
        print("Station Not Found!")
    end

    sleep(1.0)
    
end