@echo off

rem Crear el entorno virtual
python -m venv xtts-venv

rem Activar el entorno virtual
call xtts-venv\Scripts\activate

rem Instalar las dependencias
pip install xtts-api-server
pip install torch==1.9.1+cu111 torchaudio==0.9.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html



rem Desinstalar torch y torchaudio
echo Desinstalando torch y torchaudio...
pip uninstall -y torch==2.3.1 torchaudio==2.3.1
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo desinstalar torch y torchaudio.
    pause
    exit /b 1
)

rem Instalar versiones específicas de torch y torchaudio
echo Instalando versiones especificas de torch y torchaudio...
pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo instalar las versiones especificas de torch y torchaudio.
    pause
    exit /b 1
)

rem Desactivar el entorno virtual
echo Desactivando el entorno virtual...
call deactivate
if %ERRORLEVEL% neq 0 (
    echo Error: No se pudo desactivar el entorno virtual.
    pause
    exit /b 1
)

echo Proceso completado. Cerrando el símbolo del sistema en 5 segundos...
timeout /t 5 /nobreak >nul

exit


