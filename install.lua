response = http.get("https://github.com/Onomis2/ComputerCraft-Chest-Monitor/blob/main/chest_monitor.lua")

if response then
shell.run("wget https://raw.githubusercontent.com/Onomis2/ComputerCraft-Chest-Monitor/main/install.lua")
shell.run("wget https://raw.githubusercontent.com/Onomis2/ComputerCraft-Chest-Monitor/main/chest_monitor.lua")
shell.run("wget https://raw.githubusercontent.com/Onomis2/ComputerCraft-Chest-Monitor/main/startup.lua")

    print("Succesfully downloaded files. Rebooting PC in 3 seconds...")
    sleep(3)

    shell.run("reboot")
else
    print("There was an error trying to fetch the github repository.")
end