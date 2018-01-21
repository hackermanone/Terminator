@echo off
color 0A
rem 3600 seconds in an hour
echo Type in the time until shutdown (in seconds, 3600 seconds in an hour):
set /p time=
rem TODO allow for the use of s for seconds, m for minutes and h for hours
rem remove spaces
set time=%time: =%
rem check suffix after removing white spaces
set suffix=%time:~-1%
if %suffix% == "h" (
call hours.bat
)
