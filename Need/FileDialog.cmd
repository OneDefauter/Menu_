<# : chooser.bat
:: launches a File... Open sort of file chooser and outputs choice(s) to the console
:: https://stackoverflow.com/a/15885133/1683264

@echo off
chcp 437 >nul
for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
    echo %%~I>>"%TEMP%\_MENU---TEMP---FILES\save_folderpathfiles"
)
chcp 65001 >nul
goto :EOF

: end Batch portion / begin PowerShell hybrid chimera #>

Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.OpenFileDialog
$f.InitialDirectory = "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
$f.Filter = "Todos os arquivos (*.*)|*.*"
$f.Multiselect = $true
[void]$f.ShowDialog()
if ($f.Multiselect) { $f.FileNames } else { $f.FileName }
