@echo off
setlocal EnableDelayedExpansion
(for /F "delims==" %%a in ('set') do (
   echo %%a
)) > "%~P0vars.txt"
call "%~P0DefineKeyCodes"
set a=a
< "%~P0vars.txt" (
for /F "tokens=1* delims==" %%a in ('set') do (
   if "!a!" equ "%%a" (
      set /P a=
   ) else (
      echo %%a=%%b
   )
)) > "%~P0vars2.txt"
more "%~P0vars2.txt"
del "%~P0vars.txt" "%~P0vars2.txt"
pause
goto :EOF


:DefineKeyCodes
