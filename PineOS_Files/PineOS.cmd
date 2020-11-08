 @echo off
color f1

title PineOS
echo PineOS Booting up.....
echo Loading ......
pause

:username
cls
echo Good Morning/Good Afternoon User, PineOS is Booting up...
pause


:menu
cls
echo What Would You Like To Do? Type the number.
echo.
echo 1.System Info 2.Calc 3.Calendar 4.Shut Down 5.Antivirus 6.Dark Mode 7.Light Mode 8.Notes 9.Terminal

set /p input=
if %input% == 1 goto info
if %input% == 2 goto calc
if %input% == 3 goto exit
if %input% == 4 goto exit
if %input% == 5 goto antivirus
if %input% == 6 goto dark
if %input% == 7 goto light
if %input% == 8 goto notes
if %input% == 9 goto pmd


:info

cls
echo.=======================
echo     Pine__OS
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 2.0.0
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
echo     @Copyright Pine Corporation
echo.========================
echo.
echo Check for update?

echo  1. Check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu


:antivirus
cls

echo NAME: PINE Defender
echo DETAILS: DOS defender Super Secure
echo Viruses: No Virus Found
echo Security: turned on.
echo.
pause
goto menu
     
:pmd
cls
start Pinemd.cmd
pause
goto menu

:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo Cannot connect to PUS (Pine Updating Services)
echo.
pause
goto menu

:exit
cls

echo Shutting Down.....

pause

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
