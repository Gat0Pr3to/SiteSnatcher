@echo off
SET /P website=Enter website URL:
set /p outputPath="Enter the path to save the output: "
if "%outputPath%"=="" (
    echo No path provided. Exiting...
    exit /b
)
wget -r -nc -p -E -k --restrict-file-names=windows -np -P "%outputPath%" %website%
@echo Download completed for %website%
pause
