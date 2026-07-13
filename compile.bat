@echo off
cd /d "%~dp0codex-rs"
cargo rustc --release -p codex-cli --bin codex -- -C debuginfo=0 -C strip=symbols
if errorlevel 1 exit /b %errorlevel%
copy /y target\release\codex.exe ..\codex.exe >nul
