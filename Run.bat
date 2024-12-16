@echo off

:: Get the folder path where the batch file is located
set "folderPath=%~dp0"

:: Check if the folder exists
if exist "%folderPath%" (
    :: Change to the directory (this is optional since we're already there)
    cd /d "%folderPath%"

    :: Start the HTTP server
    start python -m http.server

    :: Wait for the server to start (optional)
    timeout /t 2

    :: Open the URL in the default browser
    start http://localhost:8000/
) else (
    :: Folder does not exist (this is unlikely in this scenario)
    echo The folder "%folderPath%" does not exist.
    pause
)