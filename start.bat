@echo off
cd /d "%~dp0"

set URL=http://localhost:5173/
echo Starting local server at %URL%
echo Keep this window open while using the page.

start "" "%URL%"

where py >nul 2>nul
if %errorlevel%==0 (
  py -3 server.py
) else (
  python server.py
)

pause
