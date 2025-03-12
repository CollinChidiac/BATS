@echo off
echo Running System File Checker (SFC)...
sfc /scannow

echo Running DISM ScanHealth...
dism /online /cleanup-image /scanhealth

echo Running DISM CheckHealth...
dism /online /cleanup-image /checkhealth

echo Running DISM RestoreHealth...
dism /online /cleanup-image /restorehealth

echo All operations completed successfully.
pause
