@echo off
echo Disabling RSC on ALL adapters
powershell Disable-NetAdapterRsc -Name *

echo Complete!
pause