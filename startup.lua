local monitor = peripheral.find("monitor")
local chest = peripheral.find("inventory")
if monitor ~= nil and chest ~= nil then
    shell.run("attach left monitor")
    shell.run("attach right chest")
    dofile("chest_monitor.lua")
else
    dofile("chest_monitor.lua")
end