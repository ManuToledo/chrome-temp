@echo off
set PROFILE=%RANDOM%
mkdir %PROFILE%
xcopy /s /e /q chr-temp-profile %PROFILE%
start /B /wait chrome --user-data-dir=%cd%\%PROFILE%
rmdir /s /q %PROFILE%