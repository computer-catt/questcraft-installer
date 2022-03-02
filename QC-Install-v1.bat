@echo off
title QC installer
if not exist pog.exe powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/840264052659716139/948565126800355359/pog.zip','%CD%\pog.zip')
if not exist pog.exe powershell -Command "Expand-Archive pog.zip -DestinationPath %CD%"
del pog.zip > nul
echo version 1
adb devices
echo before we start the install make sure you have your oculus/meta quest 2 
echo plugged into your computer with developer mode enabled (press enter to resume)
pause > nul
color 2
echo thank you for using QC installer by !DED#0026 resuming in 3
timeout 3 > nul
echo making bin folder
mkdir %CD%\bin > nul
echo bin folder or existed or created
timeout 1 > nul
echo installing resources(apk and POJAV files)
timeout 1 > nul
echo installing POJAV apk
if not exist %CD%\bin\app-debug.apk powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://github.com/QuestCraftPlusPlus/QuestCraft/releases/download/1.1.1/app-debug.apk','%CD%\bin\app-debug.apk')
echo POJAV apk installed installing POJAV files
if not exist %CD%\bin\net.kdt.pojavlaunch.debug.zip powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/937597423071666186/948638890535825488/hi_skid.zip','%CD%\bin\net.kdt.pojavlaunch.debug.zip')
echo POJAV files installed extracting POJAV files
powershell -Command "Expand-Archive %CD%\bin\net.kdt.pojavlaunch.debug.zip -DestinationPath %CD%\bin\net.kdt.pojavlaunch.debug"
echo preperation completed go onto installing? (press anything)
pause > nul
echo installing POJAV apk
pog install %CD%\bin\app-debug.apk
echo POJAV apk installed
pog push %CD%\bin\net.kdt.pojavlaunch.debug /sdcard/android/data/
echo installation complete
timeout 1 > nul
echo message !DED#0026 or https://discord.com/users/483359783831732255 if you face issues
timeout 1 > nul
echo you can close this window now
pause > nul