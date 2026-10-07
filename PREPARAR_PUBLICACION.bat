@echo off
setlocal
title Preparar Version Basica Online V4
cd /d "%~dp0"
if not exist "Normativa" mkdir "Normativa"
echo.
echo VERSION BASICA ONLINE V4
echo.
echo Esta edicion incluye el COMPENDIO SEGUNDA EDICION completo
ECHO como biblioteca normativa fija y de solo lectura.
echo.
echo Los usuarios de la web NO pueden subir, borrar ni reemplazar normas.
echo.
echo Carpeta normativa:
echo   %CD%\Normativa
echo.
start "" "%CD%\Normativa"
pause
endlocal
