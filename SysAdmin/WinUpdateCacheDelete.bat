@echo off
echo Stopping Windows Update service...
net stop wuauserv /y

echo Deleting contents of SoftwareDistribution\Download...
del /q /s C:\Windows\SoftwareDistribution\Download\*

echo Restarting Windows Update service...
net start wuauserv

echo Operation completed successfully.
pause
