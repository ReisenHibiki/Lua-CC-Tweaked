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
Teleport_Msg = "Teleport Request"
--change the ID to your target computerID(VallNeko)
station = "None"

while station ~= "0" do
    term.setTextColour(colors.white)
    print("")
    print("")
    print("Enter Teleport Station:")
    term.setTextColour(colors.green)
    print("")
    print("0. Exit")
    print("1. Gensokyo")
    print("2. West Coast")
    print("3. 91Home")
    print("4. 666Home")
    station = io.read()
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
    
end