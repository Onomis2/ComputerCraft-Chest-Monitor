response = http.get("https://github.com/Onomis2/ComputerCraft-Chest-Monitor/blob/main/install.lua")

if response then
    local content = response.readAll()
    response.close()
    local file = fs.open("chest_monitor.lua", "w")
    print(file)
    file.write(content)
    file.close()

    local startupFile = fs.open("startup.lua", "w")
    startupFile.write("shell.run('chest_monitor.lua')")
    startupFile.close()

    print("Succesfully downloaded files. Rebooting PC in 3 seconds...")
    sleep(3)

    shell.run("reboot")
else
    print("There was an error trying to fetch the github repository.")
end