@echo off
setlocal EnableDelayedExpansion

echo ================================
echo     Folder Generator by Category
echo ================================
echo.

:: Get prefix
set /p prefix=Enter folder prefix (e.g. AA, PROJECT, WORK): 

:: Validate prefix
if "%prefix%"=="" (
    echo [ERROR] Prefix cannot be empty.
    pause
    exit /b 1
)

:: Get start number
set /p start=Enter start number (e.g. 1): 

:: Validate start number
set /a startCheck=%start% 2>nul
if "%start%"=="" (
    echo [ERROR] Start number cannot be empty.
    pause
    exit /b 1
)

:: Get end number
set /p end=Enter end number (e.g. 99): 

:: Validate end number
if "%end%"=="" (
    echo [ERROR] End number cannot be empty.
    pause
    exit /b 1
)

:: Check logical range
if %start% GTR %end% (
    echo [ERROR] Start number must be less than or equal to end number.
    pause
    exit /b 1
)

echo.
echo Creating folders: %prefix%-001 to %prefix%-0%end% ...
echo.

set count=0
for /L %%i in (%start%,1,%end%) do (
    set num=000%%i
    set num=!num:~-3!
    set folderName=%prefix%-!num!

    if exist "!folderName!" (
        echo [SKIP]    !folderName! already exists.
    ) else (
        mkdir "!folderName!"
        echo [CREATED] !folderName!
        set /a count+=1
    )
)

echo.
echo ================================
echo  Done! %count% folder(s) created.
echo ================================
pause