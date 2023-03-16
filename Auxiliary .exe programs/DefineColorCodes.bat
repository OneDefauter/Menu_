:DefineColorCodes
set HexDigit=0123456789ABCDEF
set c=-1
for %%c in ( Black Blue  Green  Aqua  Red  Purple  Brown  White
             Grey  LBlue LGreen LAqua LRed LPurple Yellow BWhite ) do (
   set /A c+=1
   for %%C in (!c!) do set %%c=!HexDigit:~%%C,1!
)
exit /B
