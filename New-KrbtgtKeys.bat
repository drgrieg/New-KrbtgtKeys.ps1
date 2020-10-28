@echo on
title Reset Krbtgt password
cd /d %~dp0
REM Sets CMD window buffer to 800 and viewable size
cmd /c "mode 125,40 con:lines=800" >nul

REM Set Powershell execution policy
echo "Setting Powershell execution policy..."
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

REM Launch Powershell script for group policy deployment
echo "Launching reset of krbtgt password on PDC..."
powershell.exe -command ".\ResetKrbtgtKeys.ps1 -mode '12120154'"


