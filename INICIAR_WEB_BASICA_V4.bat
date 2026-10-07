@echo off
setlocal
cd /d "%~dp0"

if not exist "Normativa\COMPENDIO SEGUNDA EDICION.docx" (
  echo No encuentro el Compendio completo dentro de Normativa.
  echo Ejecute primero PREPARAR_PUBLICACION.bat
  pause
  exit /b 1
)

py -m pip install -r requirements.txt
if errorlevel 1 (
  echo ERROR: no se pudieron instalar las dependencias.
  pause
  exit /b 1
)

set COOKIE_SECURE=0
set PORT=5000
py app.py
endlocal
