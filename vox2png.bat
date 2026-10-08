@echo off
rem Prevuci jedan ili vise .vox fajlova na ovaj .bat fajl.
rem PNG se pravi pored svakog .vox fajla (isto ime, .png) (bez rotacije).

if "%~1"=="" (
    echo Prevuci .vox fajl na ovaj .bat fajl.
    pause
    exit /b
)

:next
if "%~1"=="" goto done
echo.
echo === %~nx1 ===
"%~dp0vox2png.exe" "%~1" "%~dpn1.png"
if errorlevel 1 (
    echo GRESKA: nije uspelo za %~nx1
) else (
    echo Napravljen: %~dpn1.png
)
shift
goto next

:done
echo.
pause
