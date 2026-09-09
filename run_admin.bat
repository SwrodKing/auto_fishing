@echo off
title Auto Fishing - Admin
:: Auto-request administrator privileges, then run python main.py
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
python main.py
pause
