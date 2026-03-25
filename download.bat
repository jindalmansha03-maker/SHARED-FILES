@echo off
echo =========================
echo   UPDATE PROJECT (SAFE)
echo =========================

echo 🔄 Saving your work...
git add .
git stash >nul 2>&1

echo ⬇️ Getting latest code...
git pull origin main

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ⚠️ Conflict detected!
    echo 👉 Use: 3_fix_reset.bat
    pause
    exit
)

echo 🔄 Restoring your work...
git stash pop >nul 2>&1

echo.
echo ✅ Project updated successfully!
pause