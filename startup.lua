local monitor = peripheral.find("monitor")
local chest = peripheral.find("inventory")
if monitor ~= nil and chest ~= nil do
    shell.run("attach left monitor")
    dofile("chest_analyzer.lua")
end