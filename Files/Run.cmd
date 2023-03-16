@echo off
if not exist "%TEMP%\_MENU---TEMP---FILES" mkdir "%TEMP%\_MENU---TEMP---FILES" && attrib +h "%TEMP%\_MENU---TEMP---FILES"
if not exist "%TEMP%\_MENU---TEMP---FILES\Log" mkdir "%TEMP%\_MENU---TEMP---FILES\Log" && attrib +h "%TEMP%\_MENU---TEMP---FILES\Log"
set "folder_started=%cd%"
set "start_folder=%TEMP%"
mode 120, 25
color 07
chcp 65001 >nul
setlocal enableextensions enabledelayedexpansion
call :VerifyWindowsVersion
@echo:██ ███    ██ ██  ██████ ██  █████  ███    ██ ██████   ██████  
@echo:██ ████   ██ ██ ██      ██ ██   ██ ████   ██ ██   ██ ██    ██ 
@echo:██ ██ ██  ██ ██ ██      ██ ███████ ██ ██  ██ ██   ██ ██    ██ 
@echo:██ ██  ██ ██ ██ ██      ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ 
@echo:██ ██   ████ ██  ██████ ██ ██   ██ ██   ████ ██████   ██████  ██ ██ ██ 
@echo:                                                              
CHOICE /C CXVO /N /T 1 /D C /M ^> 
if /I %errorlevel% EQU 1 cls
if /I %errorlevel% EQU 2 cls & call :DeletFiles
if /I %errorlevel% EQU 3 cls & if exist "C:\Program Files\ImageMagick-*" goto Coppy
if /I %errorlevel% EQU 4 cls & if exist "%TEMP%\_MENU---TEMP---FILES\GetKey.exe" call :OlderVersion
::https://github.com/hXR16F/cl
chcp 65001 >nul
call :CheckProgramInstalled
call :CheckPath
title Verificando
call "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat"
set errortype=VersionCheck
chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/h6j6vo9kol', '%TEMP%\_MENU---TEMP---FILES\TEMP---Version')" >nul && chcp 65001 >nul || goto Error1
:Jump1
for /f "delims== tokens=1,2" %%G in (%TEMP%\_MENU---TEMP---FILES\TEMP---Version) do set Version_Menu=%%H
del /q "%TEMP%\_MENU---TEMP---FILES\TEMP---Version"
IF NOT EXIST "%TEMP%\_MENU---TEMP---FILES\*---TEMP---Start.cmd" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/4cd2mrltby', '%TEMP%\_MENU---TEMP---FILES\v%Version_Menu%---TEMP---Start.cmd')" & chcp 65001 >nul
if exist "%TEMP%\_MENU---TEMP---FILES\*---TEMP---Start.cmd" (for %%F in ("%TEMP%\_MENU---TEMP---FILES\*---TEMP---Start.cmd") do set Version_Check=%%~nF) else (cls & goto Error1)
set Version_Check1=%Version_Check%
set Version_Check2=%Version_Check%
set Version_Check1=%Version_Check1:~0,4%
set Version_Check2=%Version_Check2:~0,6%
if "%Version_Check2%" EQU "%Version_Check1%--" (set "version_=%Version_Check1%") else (set "version_=%Version_Check2%")
if "v%Version_Menu%" EQU "%version_%" (goto Start) else (goto Update)
exit 0

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:Update
mode 120, 25
title Atualização — Nova:v%Version_Menu% — Usando:%version_%
echo:%fg`white%Uma nova versão foi encontrada!%`r% 
echo.
echo:%fg`yellow%Versão nova%`r%%fg`white%:%`r% %fg`green%v%Version_Menu%%`r% 
echo.
echo:%fg`yellow%Versão atual%`r%%fg`white%:%`r% %fg`green%%version_%%`r% 
echo.
echo:%fg`white%1 ^|Iniciar%`r%
echo:%fg`white%2 ^|Atualizar%`r%
echo:%fg`white%3 ^|Change Log%`r%
echo.
CHOICE /C 123 /N /T 30 /D 1
if %errorlevel% EQU 1 cls & goto Start
if %errorlevel% EQU 2 cls & chcp 437 >nul & del /q "%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Start.cmd" >nul & powershell -Command wget -O "%TEMP%\_MENU---TEMP---FILES\v%Version_Menu%---TEMP---Start.cmd" https://pt.textbin.net/raw/4cd2mrltby & set "version_=v%Version_Menu%" & goto Start
if %errorlevel% EQU 3 cls & goto chang_log_run
exit 0

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:OlderVersion
if exist "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat" call "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat"
set select_olverversion=1
:loop11
echo:
if %select_olverversion% EQU 1 (echo:   %bg`white%%fg`black-%Versão 2.1%bg`black-%%fg`white% ^>%`r%) else (echo:   %bg`black-%%fg`green%Versão 2.1%`r%)
if %select_olverversion% EQU 2 (echo:   %bg`white%%fg`black-%Versão 2.2%bg`black-%%fg`white% ^>%`r%) else (echo:   %bg`black-%%fg`green%Versão 2.2%`r%)
echo:
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_olverversion-=1
if %errorlevel% EQU -80 set /a select_olverversion+=1
if %select_olverversion% EQU 0 set select_olverversion=2
if %select_olverversion% EQU 3 set select_olverversion=1
if %errorlevel% EQU 13 if %select_olverversion% EQU 1 set "select_olverversion_set_URI=https://pt.textbin.net/raw/xka5peyacf" & set "select_olverversion_set_Ver=v2.1"
if %errorlevel% EQU 13 if %select_olverversion% EQU 2 set "select_olverversion_set_URI=https://pt.textbin.net/raw/47izjxxkym" & set "select_olverversion_set_Ver=v2.2"
if "%select_olverversion_set_URI%" NEQ "" call :CheckProgramInstalled & call :CheckPath
if "%select_olverversion_set_URI%" NEQ "" if not exist "%TEMP%\_MENU---TEMP---FILES\Older Version" mkdir "%TEMP%\_MENU---TEMP---FILES\Older Version" && attrib +h "%TEMP%\_MENU---TEMP---FILES\Older Version"
if "%select_olverversion_set_URI%" NEQ "" if not exist "%TEMP%\_MENU---TEMP---FILES\Older Version\%select_olverversion_set_Ver%---TEMP---Start.cmd" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('%select_olverversion_set_URI%', '%TEMP%\_MENU---TEMP---FILES\Older Version\%select_olverversion_set_Ver%---TEMP---Start.cmd')" >nul & chcp 65001 >nul
if "%select_olverversion_set_URI%" NEQ "" set version_=%select_olverversion_set_Ver%
if "%select_olverversion_set_URI%" NEQ "" cls & "%TEMP%\_MENU---TEMP---FILES\Older Version\%select_olverversion_set_Ver%---TEMP---Start.cmd"
cls & goto loop11

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:chang_log_run
title Change Log - %version_%
set select_change_log_1=1
echo:%fg`white%Baixando... & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/pz7avghjcc', '%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Change_Log.cmd')" & chcp 65001 >nul
mode 120, 38 & cls & call "%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Change_Log.cmd"
del "%TEMP%\_MENU---TEMP---FILES\*---TEMP---Change_Log.cmd" >nul
cls & goto Update

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:VerifyWindowsVersion
for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set "v1=%%j" & set "v2=%%k" & set "v3=%%l") else (set "v1=%%i" & set "v2=%%j" & set "v3=%%k"))
if "%v1%" EQU "10" (set "WindowsVersionMinimal_=1") else (set "WindowsVersionMinimal_=0")
if "%WindowsVersionMinimal_%" EQU "1" (if "%v3%" GEQ "17763" (set "WindowsVersionMinimal=1") else (set "WindowsVersionMinimal=0")) else (set "WindowsVersionMinimal=0")
if "%WindowsVersionMinimal%" EQU "0" echo: & echo:Aviso: você não está usando uma versão mínima para ser usado. & echo:O programa não vai funcionar corretamente. & echo: & echo:Fechando... & timeout /t 5 >nul & cls & exit 0
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:Error1
title Erro no servidor
chcp 65001 >nul
cls & echo: & echo:Houve um erro em se comunicar com o servidor. & echo:Tente mais tarde. & echo:
if "%errortype%" EQU "VersionCheck" echo:Erro no servidor do TextBin para baixar a verificação de versão. & timeout /t 5 /nobreak & if exist "%TEMP%\_MENU---TEMP---FILES\*---TEMP---Start.cmd" (goto Jump1) else (exit 0)
timeout /t 5 >nul
exit 0

:Error2
echo:O PATH do ImageMagick não foi encontrado.
timeout /t 10 /nobreak >nul
exit 0

::C:\Windows\System32\systempropertiesadvanced.exe
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:Coppy
magick --version >"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
set Count=1
for /f "delims== tokens=1,2 eol=/" %%I in (%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt) do (
    set "Version!Count!__=%%I"
    set /a Count+=1
)
echo:%Version1__:~0,42%>"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
echo:%Version2__%>>"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
echo:%Version4__%>>"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
echo:%Version5__%>>"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
echo:%Version6__%>>"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
powershell clip <"%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
del "%TEMP%\_MENU---TEMP---FILES\ImageMagick_Version.txt"
exit 0

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:Start
cls & "%TEMP%\_MENU---TEMP---FILES\v%Version_Menu%---TEMP---Start.cmd"
cls & "%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Start.cmd"
exit 0

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:DeletFiles
RD /S /Q "%TEMP%\_MENU---TEMP---FILES"
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:CheckProgramInstalled
title Verificando recusrsos necessários
where /q winget
::cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.DesktopAppInstaller & chcp 437 >nul & powershell -Command Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile "%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle" & chcp 65001 >nul
::cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.UI.Xaml.2.7 & chcp 437 >nul & powershell -Command Invoke-WebRequest -Uri https://github.com/WinRice/Files/blob/main/Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx?raw=true -OutFile "%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx" & chcp 65001 >nul & chcp 65001 >nul
::cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.VCLibs.x64.14.00 & chcp 437 >nul & powershell -Command Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile "%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx" & chcp 65001 >nul & chcp 65001 >nul
if %errorlevel% EQU 1 (
    title Baixando WinGet CLI
    if not exist "C:\Program Files\WindowsApps\Microsoft.VCLibs.140.00.UWPDesktop*" cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.VCLibs.x64.14.00 & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx', '%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx')" & chcp 65001 >nul
    if not exist "C:\Program Files\WindowsApps\Microsoft.UI.Xaml.2.7*" cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.UI.Xaml.2.7 & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://github.com/WinRice/Files/blob/main/Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx?raw=true', '%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx')" & chcp 65001 >nul
    if not exist "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller*" cls & echo:Você não tem um programa que é necessário. & echo:O programa será instalado ^(pode demorar um pouco^) & echo: & echo: & echo: & echo: & echo:Baixando o Microsoft.DesktopAppInstaller & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle', '%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle')" & chcp 65001 >nul
    title Instalando WinGet CLI
    if exist "%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx" cls & echo:Instalando o Microsoft.VCLibs.x64.14.00 & chcp 437 >nul & powershell -Command Add-AppxPackage "%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx" & chcp 65001 >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx" cls & echo:Instalando o Microsoft.UI.Xaml.2.7 & chcp 437 >nul & powershell -Command Add-AppxPackage "%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx" & chcp 65001 >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle" cls & echo:Instalando o Microsoft.DesktopAppInstaller & chcp 437 >nul & powershell -Command Add-AppXPackage "%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle" & chcp 65001 >nul
    cls & echo:Os componentes e o programa foi instalado.
    timeout /t 3 /nobreak >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx" del /q "%TEMP%\_MENU---TEMP---FILES\Microsoft.VCLibs.x64.14.00.Desktop.appx"
    if exist "%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx" del /q "%TEMP%\_MENU---TEMP---FILES\Microsoft.UI.Xaml.2.7_8wekyb3d8bbwe.Appx"
    if exist "%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle" del /q "%TEMP%\_MENU---TEMP---FILES\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
    chcp 437 >nul & powershell winget list --accept-source-agreements >nul & chcp 65001 >nul
    cls
)

call :ImageMagick_check

if exist "C:\Program Files\ImageMagick-7.1.1-Q16-HDRI" set "IM_1=1" & where /r "C:\Program Files\ImageMagick-7.1.1-Q16-HDRI" /q magick
if "%IM_1%" EQU "" if exist "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI" where /r "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI" /q magick
if %errorlevel% EQU 0 title Verificando atualização do ImageMagick & chcp 437 >nul & powershell winget upgrade --id ImageMagick.ImageMagick -h --force & chcp 65001 >nul & cls
if %errorlevel% EQU 1 goto ImageMagick_Download
if %errorlevel% EQU 2 goto ImageMagick_Download

title Verificando arquivos necessários
if not exist "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat" if not exist "%TEMP%\_MENU---TEMP---FILES\GetKey.exe" if not exist "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" if not exist "%TEMP%\_MENU---TEMP---FILES\Default1" if not exist "%TEMP%\_MENU---TEMP---FILES\Default2" echo:Esse é aparentemente a primeira vez que está usando esse programinha. & echo:Baixando arquivos necessários para a primeira inicialização. & set start_files=1
if not exist "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/jtqwhniaor', '%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat')" & chcp 65001 >nul
if not exist "%TEMP%\_MENU---TEMP---FILES\GetKey.exe" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/4-AxG4Sk/2OjUVz-w.5b9c74f895c8a50e150cd5202bdaf4d7', '%TEMP%\_MENU---TEMP---FILES\GetKey.exe')" & chcp 65001 >nul
if not exist "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/suBxh6CK/2OjUVz-w.958e115c457363b248d039ba239336a5', '%TEMP%\_MENU---TEMP---FILES\FileDialog.exe')" & chcp 65001 >nul
:: if not exist "%TEMP%\_MENU---TEMP---FILES\Default1" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/rcmjxc74r6', '%TEMP%\_MENU---TEMP---FILES\Default1')" & chcp 65001 >nul
:: if not exist "%TEMP%\_MENU---TEMP---FILES\Default2" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/v7whs09q7t', '%TEMP%\_MENU---TEMP---FILES\Default2')" & chcp 65001 >nul
if not exist "%TEMP%\_MENU---TEMP---FILES\FileDialog" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/B6QTDCYj/2OjUVz-w.a782af78156fb67493c2daa2ccb24cd9', '%TEMP%\_MENU---TEMP---FILES\FileDialog')" & chcp 65001 >nul
fc /c /u "%TEMP%\_MENU---TEMP---FILES\FileDialog.cmd" "%TEMP%\_MENU---TEMP---FILES\FileDialog" >nul & cls & if "%start_files%" EQU "1" echo:Esse é aparentemente a primeira vez que está usando esse programinha. & echo:Baixando arquivos necessários para a primeira inicialização.
if %errorlevel% EQU 1 chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/B6QTDCYj/2OjUVz-w.a782af78156fb67493c2daa2ccb24cd9', '%TEMP%\_MENU---TEMP---FILES\FileDialog.cmd')" & chcp 65001 >nul
if %errorlevel% EQU 2 chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/B6QTDCYj/2OjUVz-w.a782af78156fb67493c2daa2ccb24cd9', '%TEMP%\_MENU---TEMP---FILES\FileDialog.cmd')" & chcp 65001 >nul
if not exist "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" (
    if exist "C:\Program Files\7-Zip\7z.exe" (
        set "sevenz_PATH=C:\Program Files\7-Zip\7z.exe"
    ) else (
        chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/azogerNt/2OjUVz-w.d9a1a2d6a654ec95368c6236e2f77894', '%TEMP%\_MENU---TEMP---FILES\7z.exe')" >nul & chcp 65001 >nul
        set "sevenz_PATH=%TEMP%\_MENU---TEMP---FILES\7z.exe"
    )
    if not exist "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" if not exist "%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip" chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://github.com/git-for-windows/git/releases/download/v2.40.0.windows.1/MinGit-2.40.0-64-bit.zip', '%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip')" >nul & chcp 65001 >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip" "!sevenz_PATH!" x "%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip" -o"%TEMP%\_MENU---TEMP---FILES\MiniGit" >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip" del "%TEMP%\_MENU---TEMP---FILES\MinGit-2.40.0-64-bit.zip" >nul
    if exist "%TEMP%\_MENU---TEMP---FILES\7z.exe" attrib +h "%TEMP%\_MENU---TEMP---FILES\7z.exe"
    if exist "%TEMP%\_MENU---TEMP---FILES\MiniGit" attrib +h "%TEMP%\_MENU---TEMP---FILES\MiniGit"
)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:ImageMagick_Download
title Baixando ImageMagick
::if "%Uninstalled_IM%" EQU "1" echo:Provavelmente o antigo ImagemMagick foi desinstalado e agora está sendo atualizado & echo:um que pode ser atualizado automaticamente sem problemas.
echo:Você não tem um programa que é necessário. & echo:O programa será baixado e instalado ^(pode demorar um pouco^) & echo:
chcp 437 >nul & powershell winget install --id ImageMagick.ImageMagick -h --accept-package-agreements --accept-source-agreements 2>nul && chcp 65001 >nul || goto ImageMagick_Download2
cls & echo:ImageMagick foi instalado. & echo:Necessário reiniciar esse programa.
del /q /s "%HOMEPATH%\Desktop\ImageMagick Display.lnk" >nul
timeout /t 5 /nobreak >nul
exit 0

:ImageMagick_Download2
cls & echo:Houve um erro para baixar o ImageMagick no servidor do WinGet.
echo:Quer baixar em outro servidor?
echo:Lembre-se, nesse outro servidor o WinGet não vai conseguir atualizar automaticamente para você. 
choice /C SN /M "Pressione S para Sim, N para Não"
if %errorlevel% EQU 2 cls & exit 0
echo:O ImageMagick será baixado de outro servidor. & echo: & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://www.4sync.com/web/directDownload/wK9tL56B/2OjUVz-w.a901cca10ed8883c5d49ecfe51b83ea4', '%TEMP%\_MENU---TEMP---FILES\ImageMagick 7.1.1 Q16-HDRI (64-bit).msi')" & chcp 65001 >nul & start "" /wait msiexec /i "%TEMP%\_MENU---TEMP---FILES\ImageMagick 7.1.1 Q16-HDRI (64-bit).msi" /passive & timeout /t 1 & del "%TEMP%\_MENU---TEMP---FILES\ImageMagick 7.1.1 Q16-HDRI (64-bit).msi" >nul
cls & echo:ImageMagick foi instalado. & echo:Necessário reiniciar esse programa.
del /q /s "%HOMEPATH%\Desktop\ImageMagick Display.lnk" >nul
timeout /t 5 /nobreak >nul
exit 0

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:ImageMagick_check
title Verificando ImageMagick
where /r "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI" /q montage.exe & cls
if %errorlevel% EQU 0 (
    start "" /wait msiexec /x {227FF556-70F0-4D4B-943F-0A21D65DECD6} /quiet
    start "" /wait msiexec /x {45BFE14E-0A6B-4834-86A1-CFF8EF0EE8E0} /quiet
    timeout /t 2 /nobreak >nul
)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

::7.1.0-57 {227FF556-70F0-4D4B-943F-0A21D65DECD6}
::7.1.0-61 {45BFE14E-0A6B-4834-86A1-CFF8EF0EE8E0}
::7.1.1-1 {420A6B95-66D7-47DA-8B19-3C34C6BE426E}
::Get-WmiObject Win32_Product | Where Name -eq 'ImageMagick 7.1.0 Q16-HDRI (64-bit)'
::Get-WmiObject Win32_Product | Format-Table IdentifyingNumber, Name

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:CheckPath
title Verificando PATH - ImageMagick
where magick >"%TEMP%\_MENU---TEMP---FILES\ImageMagick---PATH" || goto Error2
::where /r "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI" magick.exe >"%TEMP%\_MENU---TEMP---FILES\ImageMagick---PATH" || where /r "C:\Program Files\ImageMagick-7.1.1-Q16-HDRI" magick.exe >"%TEMP%\_MENU---TEMP---FILES\ImageMagick---PATH"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\ImageMagick---PATH"') do set "imagemagick_path=%%G"
del "%TEMP%\_MENU---TEMP---FILES\ImageMagick---PATH" >nul & cls
::if "%imagemagick_path:~44%" EQU "magick.exe" echo:%imagemagick_path:~44%
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\