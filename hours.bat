@ECHO off
rem change time to seconds, hours*60*60 = seconds
set /a seconds=%time%*3600
shutdown -s -f -t %seconds%
exit