@echo off

:: Step 1: Release the current IP address
echo Releasing IP address...
ipconfig /release

:: Step 2: Renew the IP address
echo Renewing IP address...
ipconfig /renew

:: Step 3: Reset Winsock
echo Resetting Winsock...
netsh winsock reset

:: Step 4: Flush DNS
echo Flushing DNS...
ipconfig /flushdns

:: Step 5: Wait for 5 seconds
echo Waiting for 5 seconds...
timeout /t 5

:: Step 6: Ping 8.8.8.8
echo Pinging 8.8.8.8...
ping 8.8.8.8 -n 4

echo Done.
pause
