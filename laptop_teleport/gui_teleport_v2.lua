rednet.open("back")
if(rednet.isOpen("back")) then
    print("Rednet Connected")
    term.setTextColour(colors.green)
    print("Teleport Service: Online")
end

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
 :setText("VallNeko OS v2.0")
 :setFontSize(0.5)

local sub = main:addScrollableFrame()
 :setDirection("vertical")
 :setPosition(2,2)
 :setSize(w-2,h-2)
 :setBackground(colours.lightBlue)

--read file turn lines into table
local file = fs.open("/address.txt", "r")
local lines = {}
while true do
  local line = file.readLine()

  -- If line is nil then we've reached the end of the file and should stop
  if not line then break end

  lines[#lines + 1] = line
end

file.close()

--code below for gensokyo button and label
--Distance between button is 4, between label is 4

--local function turn info into button
local function teleport_button(Location_Name, Location_ID, Location_Label,button_height)
local button_name = Location_Name.."button"
 local button_name = sub 
 :addButton(Location_Name) 
 :setPosition(2, button_height)
 :setSize(13,3)
 :setText(Location_Name)
 :setBackground(colours.white)
 :onClick(
     function()
        rednet.send(Location_ID,Teleport_Msg)
        basalt.debug("Request Sent!")
     end)

rednet.send(Location_ID, Online_Msg , Protocal)
    local id, message = rednet.receive(Protocal, 0.5)
    if not id then
        local Button_Label = sub
        :addLabel(Location_Label)
        :setPosition(17, button_height+1)
        :setSize(7,1)
        :setText("Offline")
        :setBackground(colours.red)
        :setFontSize(0.5)
    else
        local Button_Label = sub
        :addLabel(Location_Label)
        :setPosition(17, button_height+1)
        :setSize(6,1)
        :setText("Online")
        :setBackground(colours.green)
        :setFontSize(0.5)
    end    
end

--main program
local line_num = 1
local button_height = 2
for key, value in pairs(lines) do
    if line_num <= #lines and line_num+1 <= #lines and line_num+2 <= #lines then
        teleport_button(lines[line_num],tonumber(lines[line_num+1]),lines[line_num+2], button_height)
        line_num = line_num + 3        
        button_height = button_height + 4
    end

end



basalt.autoUpdate()