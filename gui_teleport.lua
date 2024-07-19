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

--GUI design begin
local basalt = require("basalt")
local w,h = term.getSize()

local main = basalt.createFrame()
 :show()
 :setBackground(colours.white)

local VallNeko_Label = main:addLabel("VallNeko")
 :setPosition(1, 1)
 :setText("VallNeko OS v1.0")
 :setFontSize(0.5)

local sub = main:addScrollableFrame()
 :setDirection("vertical")
 :setPosition(2,2)
 :setSize(w-2,h-2)
 :setBackground(colours.lightBlue)

--code below for gensokyo button and label
--Distance between button is 4, between label is 4
local Gensokyo_button = sub 
 :addButton("Gensokyo") 
 :setPosition(2, 2)
 :setSize(13,3)
 :setText("Gensokyo")
 :setBackground(colours.white)
 :onClick(
     function()
        rednet.send(Gensokyo_ID,Teleport_Msg)
        basalt.debug("Request Sent!")
     end)

-- Code below use label to show status
rednet.send(Gensokyo_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        local Gensokyo_Label = sub
        :addLabel("GensokyoT")
        :setPosition(17, 3)
        :setSize(7,1)
        :setText("Offline")
        :setBackground(colours.red)
        :setFontSize(0.5)
    else
        local Gensokyo_Label = sub
        :addLabel("GensokyoT")
        :setPosition(17, 3)
        :setSize(6,1)
        :setText("Online")
        :setBackground(colours.green)
        :setFontSize(0.5)
    end

--westcoast
 local WestCoast_button = sub 
 :addButton("WestCoastB") 
 :setPosition(2, 6)
 :setSize(13,3)
 :setText("WestCoast")
 :setBackground(colours.white)
 :onClick(
     function()
        rednet.send(West_Coast_ID,Teleport_Msg)
        basalt.debug("Request Sent!")
     end)

rednet.send(West_Coast_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        local WestCoast_Label = sub
        :addLabel("WestCoastT")
        :setPosition(17, 7)
        :setSize(7,1)
        :setText("Offline")
        :setBackground(colours.red)
        :setFontSize(0.5)
    else
        local WestCoast_Label = sub
        :addLabel("WestCoastT")
        :setPosition(17, 7)
        :setSize(6,1)
        :setText("Online")
        :setBackground(colours.green)
        :setFontSize(0.5)
    end

--91Home
local NightyOne_button = sub 
:addButton("NightyOneB") 
:setPosition(2, 10)
:setSize(13,3)
:setText("91Home")
:setBackground(colours.white)
:onClick(
    function()
       rednet.send(NightyOne_ID,Teleport_Msg)
       basalt.debug("Request Sent!")
    end)

rednet.send(NightyOne_ID, Online_Msg , Protocal)
   local id, message = rednet.receive(Protocal, 0.5)
   if not id then
       local WestCoast_Label = sub
       :addLabel("NightyOneT")
       :setPosition(17, 11)
       :setSize(7,1)
       :setText("Offline")
       :setBackground(colours.red)
       :setFontSize(0.5)
   else
       local WestCoast_Label = sub
       :addLabel("NightyOneT")
       :setPosition(17, 11)
       :setSize(6,1)
       :setText("Online")
       :setBackground(colours.green)
       :setFontSize(0.5)
   end

--666Home
--change below Name
local Sixsixsix_button = sub 
:addButton("SixsixsixB") 
--change below
:setPosition(2, 14)
:setSize(13,3)
:setText("666Home")
:setBackground(colours.white)
:onClick(
    function()
       --change belowID 
       rednet.send(Sixsixsix_ID,Teleport_Msg)
       basalt.debug("Request Sent!")
    end)

--change belowID
rednet.send(Sixsixsix_ID, Online_Msg , Protocal)
   local id, message = rednet.receive(Protocal, 0.5)
   if not id then
       --change below 
       local Sixsixsix_Label = sub
       :addLabel("NightyOneT")
       --change below
       :setPosition(17, 15)
       :setSize(7,1)
       :setText("Offline")
       :setBackground(colours.red)
       :setFontSize(0.5)
   else
       --change below 
       local Sixsixsix_Label = sub
       :addLabel("NightyOneT")
       --change below
       :setPosition(17, 15)
       :setSize(6,1)
       :setText("Online")
       :setBackground(colours.green)
       :setFontSize(0.5)
   end

basalt.autoUpdate()