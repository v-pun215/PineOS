 @echo off
color f1

title Vihaan OS First Boot
echo VihaanOS Booting for the first time...
echo Getting your PC ready for the first time
echo Setting up your Apps, and your DOS....
pause
goto done

:done
cls

echo Rebooting
echo System....
pause
start C:\Users\Sony_Vaio\Desktop\PineOS\PineOS_Con_Boot.cmd
del %0