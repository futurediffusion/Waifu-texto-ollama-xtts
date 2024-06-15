@echo off

rem Crear el entorno virtual
python -m venv venv

rem Activar el entorno virtual
call venv\Scripts\activate

REM Instalar las dependencias del archivo requirements.txt
pip install -r requirements.txt

REM Ejecutar el archivo texto.py
python texto.py

REM Pausa opcional para ver los mensajes antes de cerrar la ventana
pause
