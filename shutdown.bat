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
goto hours
)
rem extract last 4 characters from string, str=%str:~-4% -- Test
:hours
rem change time to seconds, hours*60*60 = seconds
set /a seconds=%time%*3600
shutdown -s -f -t %seconds%
