@echo off
echo =========================
echo   UPDATE / REFRESH TOOL
echo =========================

echo.
echo 🔄 Saving your current work...

git add .
git stash >nul 2>&1

echo.
echo ⬇️ Pulling latest changes from GitHub...

git pull origin main

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ⚠️ Conflict detected!
    echo ---------------------------------
    echo ❌ Auto fix stopped to keep your data safe
    echo.
    echo 👉 Step 1: Run 3_fix_reset.bat (to reset project)
    echo 👉 Step 2: OR ask developer for help
    echo ---------------------------------
    pause
    exit
)

echo.
echo 🔄 Restoring your saved work...

git stash pop >nul 2>&1

echo.
echo ✅ DONE! Project is up-to-date
pause