@ECHO OFF
SETLOCAL EnableDelayedExpansion

REM XMOS Firmware Flasher for Windows
REM Specifically for Element 4 firmware updates

REM Get the directory where this script is located
SET "SCRIPT_DIR=%~dp0"
SET "FIRMWARE_PATH=%SCRIPT_DIR%el4-firwmare"

:MENU
CLS
ECHO =============================================
ECHO    XMOS FIRMWARE FLASHER - Element 4
ECHO =============================================
ECHO.
ECHO 1 - Flash Element 4 (v1.7.4)
ECHO 2 - Flash Element 4 (v1.5.1)
ECHO 3 - View Current Firmware
ECHO 4 - Revert to Factory Image
ECHO 5 - EXIT
ECHO.
SET /P M=Type a number, then press ENTER: 
IF "%M%"=="1" GOTO EL4_V174
IF "%M%"=="2" GOTO EL4_V151
IF "%M%"=="3" GOTO LIST_DEVICES
IF "%M%"=="4" GOTO REVERT_FACTORY
IF "%M%"=="5" GOTO EOF
ECHO Invalid selection, please try again.
TIMEOUT /T 2 >NUL
GOTO MENU

:EL4_V174
CLS
ECHO.
SET /P AREYOUSURE=Flash Element 4 firmware v1.7.4 (y/n)? 
IF /I NOT "%AREYOUSURE%"=="y" GOTO MENU
ECHO.
ECHO *** Flashing Element 4 firmware v1.7.4 ***
ECHO.
"%SCRIPT_DIR%xmosdfu.exe" --download "%FIRMWARE_PATH%\el4-v174-upgrade.bin"
ECHO.
PAUSE
SET /P ANOTHER=Flash another device (y/n)? 
IF /I "%ANOTHER%"=="y" GOTO EL4_V174
GOTO MENU

:EL4_V151
CLS
ECHO.
SET /P AREYOUSURE=Flash Element 4 firmware v1.5.1 (y/n)? 
IF /I NOT "%AREYOUSURE%"=="y" GOTO MENU
ECHO.
ECHO *** Flashing Element 4 firmware v1.5.1 ***
ECHO.
"%SCRIPT_DIR%xmosdfu.exe" --download "%FIRMWARE_PATH%\el4-v151-upgrade.bin"
ECHO.
PAUSE
SET /P ANOTHER=Flash another device (y/n)? 
IF /I "%ANOTHER%"=="y" GOTO EL4_V151
GOTO MENU

:LIST_DEVICES
CLS
ECHO.
ECHO *** Listing Connected XMOS Devices ***
ECHO.
"%SCRIPT_DIR%xmosdfu.exe" --listdevices
ECHO.
PAUSE
GOTO MENU

:REVERT_FACTORY
CLS
ECHO.
SET /P AREYOUSURE=Clear upgrades and revert to FACTORY image (y/n)? 
IF /I NOT "%AREYOUSURE%"=="y" GOTO MENU
ECHO.
ECHO *** Reverting to FACTORY Image... ***
ECHO.
"%SCRIPT_DIR%xmosdfu.exe" --revertfactory
ECHO.
PAUSE
SET /P ANOTHER=Revert another device (y/n)? 
IF /I "%ANOTHER%"=="y" GOTO REVERT_FACTORY
GOTO MENU

:EOF
ENDLOCAL
EXIT /B 0
