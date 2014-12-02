@echo off
if not exist %CD%\%1 goto createDir
:createDir 
mkdir %1

set startFileName=%1\%2
set fileName=%startFileName%

set counter=0
set lines=100
set files=10

:while
        set i=0
	<nul (set/p z=) >%filename%

	:: Write %lines in the output file
        :while2
                set /A i=i+1
                echo %counter%.%i%  1>>  %fileName%
	if %i% LSS %lines% goto while2


	:: Rotate files in Windows mode (create new file and write in it)
	:: Number of files created--> %files
	set fileName=%startFileName%.%counter%
	set /A counter=counter+1

if %counter% LSS %files% goto while

