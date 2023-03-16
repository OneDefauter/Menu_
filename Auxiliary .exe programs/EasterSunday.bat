@echo off
:EasterSunday year
rem Calculate the date of Christian Easter Sunday of any given year
rem Antonio Perez Ayala
set /A A=%1%%19, B=%1/100, C=%1%%100, D=B/4, E=B%%4, F=(B+8)/25, G=(B-F+1)/3, H=(A*19+B-D-G+15)%%30, I=C/4
set /A K=C%%4, L=((E+I)*2-H-K+32)%%7, M=(A+H*11+L*22)/451, N=H+L-M*7+114, Month=N/31, Day=N%%31+1
StdDate %Day%/%Month%/%1
StdDate %errorlevel% /L
