@echo off
echo Type in the time until shutdown:
set /p time=
shutdown -s -f -t %time%