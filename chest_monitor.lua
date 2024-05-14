local monitor = peripheral.find("monitor")
local chest = peripheral.find("inventory")
local center = (monitor.getSize() / 2)
print(center)
function DisplayChest(chest, monitor)
    local parse = 1
    local centerItem = 0
    local centerCount = 0
    
    for slot, item in pairs(chest.list()) do
        local _, colonIndex = string.find(item.name, ":")
        local itemName = item.name
        if colonIndex then
            itemName = string.sub(item.name, colonIndex + 1)
        end
        itemName = itemName:gsub("_", " ")
        centerItem = center - (string.len(itemName) / 2)
        centerCount = center - (string.len(item.count) / 2) - 1
        monitor.setCursorPos(centerItem,parse)
        monitor.setTextColor(1)
        monitor.write(itemName)
        parse = parse + 1
        monitor.setCursorPos(centerCount,parse)
        monitor.setTextColor(64)
        monitor.write("x "..item.count)
        parse = parse + 1
    end
end

while chest ~= nil do
    monitor.clear()
    monitor.setBackgroundColor(32)
    monitor.setCursorPos(1,1)
    DisplayChest(chest, monitor)
    sleep(1)
end