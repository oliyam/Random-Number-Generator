@echo off
color a

echo ##############################################################
echo #### Der beste Zufallszahlengenerator diesseits der Donau ####
echo ##############################################################	
echo:
echo Autor: oliver
echo Version: 4.2.0
echo 2022-10-09
echo:

:options
echo Generate a random number between ...
set /p o=zero and another number. [ENTER] two bounds. [b]

:a
set /p b_=A number:
IF [%b_%]==[] (cls & echo Please provide a Number & goto a)
IF %b_% NEQ +%b_% (cls & echo Please provide a positive Integer & goto a)	

set a_=0
IF "%o%"=="b" (
	:b
	set /p a_=Another number:
	IF [%a_%]==[] (cls & echo Please provide a Number & goto b)
	IF %a_% NEQ +%a_% (cls & echo Please provide a positive Integer & goto b)
)

IF %a_% GTR %b_% (
	set min=%b_%
	set max=%a_%
) ELSE (
	set min=%a_%
	set max=%b_%
)


:result

set /a r=(%random%*(%max%-%min%+1)/32768) + %min%
echo %r%
echo:

set /p again=again? [ENTER] new? [n]
IF "%again%"=="n" (
	cls & set "again=" & goto options
) ELSE IF "%again%"=="o" (
	cls & set "again=" & goto options
) ELSE (
	goto result
)


pause