@echo off
echo Starting Smart Roadside Assistance...

:: Check if python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH.
    pause
    exit /b
)

:: Check if node is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is not installed or not in PATH.
    pause
    exit /b
)

echo.
echo Launching Backend Server (Port 9000)...
start "Backend Server" cmd /k "python swamidayanandsaraswati_1PS6/server.py"

echo.
echo Launching Frontend Server...
npm run dev

echo.
echo If the browser doesn't open automatically, visit http://localhost:5173
pause
