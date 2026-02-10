@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo    Smart Roadside Assistance Launcher
echo ==========================================

:: Check if python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH.
    pause
    exit /b
)

:: Check if node is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed or not in PATH.
    pause
    exit /b
)

echo [INFO] Installing/Checking Python dependencies...
python -m pip install -r swamidayanandsaraswati_1PS6/requirements.txt --quiet
if %errorlevel% neq 0 (
    echo [WARNING] Failed to install Python dependencies automatically. 
    echo Please run: pip install -r swamidayanandsaraswati_1PS6/requirements.txt
)

echo [INFO] Installing/Checking Node dependencies...
call npm install --quiet

echo.
echo [SUCCESS] Launching Backend Server (Port 9000)...
start "Backend Server" cmd /k "python swamidayanandsaraswati_1PS6/server.py"

echo [SUCCESS] Launching Frontend Server...
echo If the browser doesn't open, visit http://localhost:5173
npm run dev

pause

