@echo off
echo A Google Chrome instance with your current profile will open. Make the changes you need then close it.
pause
start /B /wait chrome --user-data-dir=%cd%\chr-temp-profile