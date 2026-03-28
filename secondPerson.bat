@echo off
title Git Easy Tool
color 0B

echo ===============================
echo      GIT EASY TOOL 🚀
echo ===============================
echo.

REM 🔹 SET REPO LINK HERE (IMPORTANT)
set repo=https://github.com/jindalmansha03-maker/SHARED-FILES

REM 🔹 Get folder name from repo
for %%a in ("%repo%") do set folder=%%~na

REM 🔹 FIRST TIME: CLONE
IF NOT EXIST "%folder%" (
    echo 🆕 First time setup...
    echo ⬇️ Downloading project...

    git clone %repo%

    echo.
    echo 📂 Opening project folder...
    start "" "%folder%"

    echo.
    echo ✅ Setup complete!
    echo 👉 Now open that folder and run this file again
    pause
    exit
)

REM 🔹 NEXT TIME: WORK FLOW
cd "%folder%"

echo 🔄 Getting latest changes...
git pull origin main

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ⚠️ Conflict detected!
    echo 👉 Contact Naman (developer) 😄
    pause
    exit
)

echo.
set /p msg=✏️ Write what you changed: 

git add .
git commit -m "%msg%" || echo No changes to commit
git push origin main

echo.
echo ✅ Done! Your work is uploaded 🚀
pause