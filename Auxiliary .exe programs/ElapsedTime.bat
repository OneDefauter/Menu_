@echo off
:ElapsedTime time
setlocal EnableDelayedExpansion
StdTime %1 > NUL
rem ERRORLEVEL=HHMMSSmmm
set mmm=%errorlevel:~-3%
set HHMMSS=%errorlevel:~0,-3%
set result=%mmm% Milliseconds
if defined HHMMSS (
   set SS=%HHMMSS:~-2%
   set result=!SS!.%mmm% Seconds
   set HHMM=%HHMMSS:~0,-2%
   if defined HHMM (
      set MM=!HHMM:~-2!
      set HH=!HHMM:~0,-2!
      if not defined HH (
         set result=!MM!:!SS!.%mmm% Minutes
      ) else (
         set result=!HH!:!MM!:!SS!.%mmm% Hours
      )
   )
)
echo %result%
exit /B
