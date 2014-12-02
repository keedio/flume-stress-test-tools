@echo off
cls
setlocal EnableDelayedExpansion
set "cmd=findstr /R /N "^^" %1 | find /C ":""

for /f %%a in ('!cmd!') do set number=%%a
echo %number%
