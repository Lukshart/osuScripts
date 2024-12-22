@echo off
cd /d "%~dp0"

for %%x in (mp4 avi mkv mov wmv flv mpeg mpg webm) do (
    for /r %%f in (*%%x) do (
        powershell -command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.FileIO.FileSystem]::DeleteFile('%%~f', 'OnlyErrorDialogs', 'SendToRecycleBin')"
    )
)

echo Se han movido todos los archivos de video a la Papelera de reciclaje.
pause
