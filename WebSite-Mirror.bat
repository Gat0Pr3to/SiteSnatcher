@echo off
SET /P website=Enter website URL: 
wget -r -nc -p -E -k --restrict-file-names=windows -np %website%
@echo Download completed for %website%
pause
