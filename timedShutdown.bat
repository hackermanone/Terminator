@echo off
color 0A
title shutdown

:: 3600 seconds in an hour
echo Type in the time until shutdown:
set /p time=
echo Type hours, minutes, or seconds (h, m, or s)?
set /p suffix=
:: check suffix
if "%suffix%" == "h" goto hours
if "%suffix%" == "s" goto seconds

:hours
set /a seconds=%time%*3600
shutdown -s -f -t %seconds%

:minutes
set /a seconds=%time%*60
shutdown -s -f -t %seconds%

:seconds
shutdown -s -f -t %time%
pause