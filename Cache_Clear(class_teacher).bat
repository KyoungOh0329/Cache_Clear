@echo off
REM close edge
taskkill /f /im msedge.exe 

@echo off
echo Clearing browser cache, history, and internet usage...
REM Chrome
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\History"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies"

echo Clearing Edge browser cache...
echo.

rem clear Edge browser cache
cd "C:\Users\user\AppData\Local\Microsoft\Edge\User Data\Default\Network"
del /q /s *

echo Edge browser cache cleared successfully.
echo.

rem clear Internet Explorer cache
echo Clearing Internet Explorer cache...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255

echo Internet Explorer cache cleared successfully.
echo.
pause
