@echo off
:select
set choice=
set /p choice=This is going to delete your temp profile folder, do you want to continue? (y/N) 
if '%choice%'=='' set choice=n
if '%choice%'=='y' goto start
if '%choice%'=='Y' goto start
if '%choice%'=='n' goto end
if '%choice%'=='N' goto end
ECHO "%choice%" is not valid, try again.
goto select
:start
rmdir /s /q chr-temp-profile
mkdir chr-temp-profile
echo Old profile removed. A Google Chrome window with the new profile will open, make the changes you need and close it.
pause
start /B /wait chrome --user-data-dir=%cd%\chr-temp-profile
echo New profile successfully created. Now use the "chrome-temp.vbs" script to open instances of Google Chrome with the new profile as template.
pause
:end