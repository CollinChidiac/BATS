@echo off
echo ====================================
echo  Set System Date and Time
echo ====================================

:: Prompt user to change the date
echo Current Date: %DATE%
echo Enter new date (MM-DD-YYYY) or press Enter to keep current:
date /T
set /p newdate="Enter new date: "
if not "%newdate%"=="" date %newdate%

:: Prompt user to change the time
echo.
echo Current Time: %TIME%
echo Enter new time (HH:MM:SS) or press Enter to keep current:
time /T
set /p newtime="Enter new time: "
if not "%newtime%"=="" time %newtime%

echo.
echo Date and Time update complete.
pause
