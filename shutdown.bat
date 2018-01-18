@echo off
color 0A
rem 3600 seconds in an hour
echo Type in the time until shutdown (in seconds, 3600 seconds in an hour):
set /p time=
shutdown -s -f -t %time%