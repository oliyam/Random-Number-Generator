@echo off
color a
echo #######################
echo #### Best RNG ever ####
echo #######################
echo:

:a
set "min="
set /p min=Bound 1:
IF [%min%]==[] (echo Notnumerical! & goto a)
IF %min% NEQ +%min% (echo Notnumerical! & goto a)

:b
set "max="
set /p max=Bound 2:
IF [%max%]==[] (echo Notnumerical! & goto b)
IF %max% NEQ +%max% (echo Notnumerical! & goto b)

:c
set /a r=(%random%*(%max%-%min%)/32768) + %min%
echo %r%

set /p again=again? [ENTER] new? [n]
IF "%again%"=="n" (set "again=" & goto a) ELSE (goto c)

pause