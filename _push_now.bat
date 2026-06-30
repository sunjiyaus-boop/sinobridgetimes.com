@echo off
cd /d "%~dp0"
git config gc.auto 0
git config maintenance.auto false
git config core.multiPackIndex false
git push origin HEAD:main > "%~dp0_push_result.txt" 2>&1
echo EXIT=%ERRORLEVEL%>> "%~dp0_push_result.txt"
