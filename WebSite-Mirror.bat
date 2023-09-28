@echo off
SET /P website=Enter website URL: 
wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --no-parent %website%
@echo Download completed for %website%
pause