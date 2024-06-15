@echo off

rem Activar el entorno virtual y ejecutar el comando xtts_api_server

rem Verificar y mostrar la ruta del script actual
echo Current script directory: %~dp0

rem Cambiar al directorio del entorno virtual
cd /d "%~dp0xtts-venv\Scripts"
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo cambiar al directorio %~dp0xtts-venv\Scripts
    pause
    exit /b 1
)

rem Activar el entorno virtual
call activate
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo activar el entorno virtual.
    pause
    exit /b 1
)

rem Ejecutar el comando xtts_api_server
python -m xtts_api_server --deepspeed --streaming-mode --stream-play-sync
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo ejecutar xtts_api_server.
    pause
    exit /b 1
)

pause
