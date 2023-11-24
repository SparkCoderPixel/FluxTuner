@echo off
title OptimaPC - System Optimization Utility
color 0A

:home
cls
echo ==========================================
echo                 OptimaPC
echo           System Optimization
echo ==========================================
echo.
echo                   Menu
echo.
echo                1: Clean Temp files
echo                2: System optimization
echo                3: Disk Cleanup
echo                4: Exit
echo.
echo ==========================================
set /p choice=Please type your choice and press Enter: 

if "%choice%"=="1" goto clean_temp
if "%choice%"=="2" goto system_opt
if "%choice%"=="3" goto disk_cleanup
if "%choice%"=="4" goto end
echo Invalid choice, please select a number between 1-4.
pause
goto home

:clean_temp
cls
echo ==========================================
echo                OptimaPC
echo            Cleaning Temp files...
echo ==========================================
del /f /s /q %temp%\*
del /f /s /q C:\Windows\Temp\*
echo Temp files cleaned.
pause
goto home

:system_opt
cls
echo ==========================================
echo                OptimaPC
echo           Performing System Optimization...
echo ==========================================
REM Add here any other system optimization commands you want to execute
echo System optimization complete!
pause
goto home

:disk_cleanup
cls
echo ==========================================
echo                OptimaPC
echo             Running Disk Cleanup...
echo ==========================================
cleanmgr /sagerun:1
echo Disk cleanup complete.
pause
goto home

:end
cls
echo ==========================================
echo                OptimaPC
echo                Exiting...
echo ==========================================
pause
exit
