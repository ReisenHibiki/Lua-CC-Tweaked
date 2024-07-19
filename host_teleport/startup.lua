if peripheral.isPresent("top") then
    local monitor = peripheral.find("monitor")
    monitor.clear()
    print("Monitor cleared!")
end
--check if there is monitor above and clear it(VallNeko)
print("Running Teleport Service")
shell.run("host_teleport.lua")