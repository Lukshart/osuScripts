@echo off
cd /d "%~dp0"

for /r %%f in (*.osz) do (
    echo Ejecutando %%f
    start "" "%%f"
)

echo Se han ejecutado todos los archivos .osz.
pause
