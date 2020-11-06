 @echo off
color f1

title Vihaan OS
echo Vihaan OS Booting up.....
echo Loading ......
pause

:username
cls
echo Welcome to your new PC. Please enter your Password. Password is set to password.
pause
goto password
cls

:password
cls
set /p input=Password:
if %input%==password goto menu
goto password
cls


:menu
title Vihaan OS Home
cls
echo What Would You Like To Do? Type the number.
echo.
echo 1.System Info 2.Calc 3.Calendar 4.Shut Down 5.Antivirus 6.Dark Mode 7.Light Mode 8.Notes

set /p input=
if %input% == 1 goto info
if %input% == 2 goto calc
if %input% == 3 goto exit
if %input% == 4 goto exit
if %input% == 5 goto antivirus
if %input% == 6 goto dark
if %input% == 7 goto light
if %input% == 8 goto notes

:info

cls
echo.=======================
echo     VIHAAN__OS
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.0.1
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL I5
echo.
echo     HARD_DRIVE = 250MB     
echo.   
echo     Kernel ver = 2.0.0
echo.  
echo    Build = 2
echo.
echo.========================
echo     @Copyright Pine corpration
echo.========================
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu


:antivirus
cls

echo NAME: Vihaan Defender
echo DETAILS: 16 bit defender super secure
echo Viruses: No Virus Found
echo Security: turned on.
echo.
pause
goto menu
     
:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo Cannot connect to VUS (Vihaan Updating Services)
echo.
pause
goto menu

:exit
cls

echo Shutting Down.....

pause
del %0
exit


:dark
cls

pause
color 1

goto menu

:light
cls

pause
color f1

goto menu

:notes
cls

notepad 
pause
goto menu

:calc
cls

calc
pause
goto menu