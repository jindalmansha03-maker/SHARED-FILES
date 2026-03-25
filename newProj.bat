@echo off
echo =========================
echo   Git Init + First Push
echo =========================

set /p repo=Enter GitHub Repo URL: 
set /p msg=Enter commit message: 

git init
git add .
git commit -m "%msg%"
git branch -M main
git remote add origin %repo%
git push -u origin main

echo.
echo ✅ Repo initialized & pushed!
pause