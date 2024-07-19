local m = peripheral.find("monitor")
local text="VallNeko!"
local str=string.rep(text,2," ")
local strmax = string.len(str)-1
m.setTextScale(5)
local i = 0
local j = string.len(text)-1
while (true) do
    print(string.format("%d-%d",i,j))
    m.clear()
    m.setCursorPos(1,1)
    m.write(string.sub(str,i,j))
    if(j>strmax)then
        i=0
        j=string.len(text)-1
    end
    i=i+1
    j=j+1
    sleep(0.5)
end