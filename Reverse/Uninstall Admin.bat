@echo off

SET SERVICE_NAME=NetworkH

sc query %SERVICE_NAME% >nul 2>&1
IF NOT %ERRORLEVEL%==0 (
    pause
    exit /b
)

sc stop %SERVICE_NAME% >nul 2>&1

timeout /t 2 >nul

sc delete %SERVICE_NAME%

IF NOT %ERRORLEVEL%==0 (
    pause
    exit /b
)

pause