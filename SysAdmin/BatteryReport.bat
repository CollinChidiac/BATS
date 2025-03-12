@echo off
echo Generating battery report...
powercfg /batteryreport /output "%TEMP%\battery-report.html" >nul

echo Battery Report placed into Temp...

pause
