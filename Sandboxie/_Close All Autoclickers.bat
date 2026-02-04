@echo off
echo Closing all AutoHotkey scripts...
taskkill /f /im "autohotkeyu64.exe"
echo Done.
timeout /t 0 /nobreak >nul
exit
