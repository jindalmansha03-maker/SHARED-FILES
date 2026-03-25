@echo off
echo =========================
echo   UPLOAD MY CHANGES
echo =========================

set /p msg=Enter commit message: 

git add .
git commit -m "%msg%" || echo No changes to commit
git push origin main

echo.
echo ✅ Uploaded successfully!
pause