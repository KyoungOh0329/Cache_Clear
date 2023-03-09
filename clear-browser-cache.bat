@echo off
echo Clearing browser cache, history, and internet usage...
REM Chrome
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies"

REM Microsoft Edge
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1024

REM Internet Explorer
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1

echo Browser cache, history, and internet usage cleared.

pause


