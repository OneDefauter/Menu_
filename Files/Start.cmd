@echo off & cls
mode 120, 35
::chcp 850
chcp 65001 >nul
setlocal enableextensions enabledelayedexpansion
if exist "%HOMEDRIVE%%HOMEPATH%\start-config" (
    for /f "delims== tokens=1,2 eol=/" %%G in (%HOMEDRIVE%%HOMEPATH%\start-config) do set %%G=%%H
)
if "%error_veriffy%" EQU "0" goto skipformenu1
@echo:
@echo:██    ██ ███████ ██████  ██ ███████ ██  ██████  █████  ███    ██ ██████   ██████  
@echo:██    ██ ██      ██   ██ ██ ██      ██ ██      ██   ██ ████   ██ ██   ██ ██    ██ 
@echo:██    ██ █████   ██████  ██ █████   ██ ██      ███████ ██ ██  ██ ██   ██ ██    ██ 
@echo: ██  ██  ██      ██   ██ ██ ██      ██ ██      ██   ██ ██  ██ ██ ██   ██ ██    ██ 
@echo:  ████   ███████ ██   ██ ██ ██      ██  ██████ ██   ██ ██   ████ ██████   ██████  
@echo:                                                                                  
timeout /t 0 >nul
@echo:                                                                                  
@echo:███    ███ ███████ ███    ██ ███████  █████   ██████  ███████ ███    ███          
@echo:████  ████ ██      ████   ██ ██      ██   ██ ██       ██      ████  ████          
@echo:██ ████ ██ █████   ██ ██  ██ ███████ ███████ ██   ███ █████   ██ ████ ██          
@echo:██  ██  ██ ██      ██  ██ ██      ██ ██   ██ ██    ██ ██      ██  ██  ██          
@echo:██      ██ ███████ ██   ████ ███████ ██   ██  ██████  ███████ ██      ██          
@echo:                                                                                  
timeout /t 0 >nul
@echo:                                                                                  
@echo:██████  ███████     ███████ ██████  ██████   ██████                               
@echo:██   ██ ██          ██      ██   ██ ██   ██ ██    ██                              
@echo:██   ██ █████       █████   ██████  ██████  ██    ██                              
@echo:██   ██ ██          ██      ██   ██ ██   ██ ██    ██                              
@echo:██████  ███████     ███████ ██   ██ ██   ██  ██████                               
@echo:                                                                                  
@echo:                                                                                  
@echo:^>
:skipformenu1
call :FirstStart
call :loadShotout_code
call "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat"
title Iniciando
color 07
if "%version_%" EQU "" SET version_=v2.3
if "%error_veriffy%" EQU "0" (goto Menu) else (chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/ioda1b2pyv', '%TEMP%\_MENU---TEMP---FILES\Warning_error.bat')" & chcp 65001 >nul & call "%TEMP%\_MENU---TEMP---FILES\Warning_error.bat" & del /q "%TEMP%\_MENU---TEMP---FILES\Warning_error.bat" & cls & goto Menu)
goto :eof

::https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Regular&text=Rename_start3
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███ ███████ ███    ██ ██    ██ 
::████  ████ ██      ████   ██ ██    ██ 
::██ ████ ██ █████   ██ ██  ██ ██    ██ 
::██  ██  ██ ██      ██  ██ ██ ██    ██ 
::██      ██ ███████ ██   ████  ██████  
::                                      
                                      
:Menu
title MENU - %version_%
echo:%fg`green%MENU%`r% & echo:%fg`blue%%version_%%`r%
if "%Warning_error%" NEQ "" echo: & echo:%Warning_error%
if "%imagemagick_path%" EQU "" echo: & echo:%fg`red%Aviso%fg`white%: O '%fg`yellow%PATH%fg`white%' do %fg`yellow%ImageMagick%fg`white% não foi encontrado ou carregado.%`r% & echo:       %fg`white%Para evitar problemas os menus '%fg`yellow%Convert%fg`white%' e o '%fg`yellow%Montage%fg`white%' foram desativados.%`r%
echo.
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%Developer_ON%" EQU "1" (
    echo:%fg`white%1 ^|Convert%`r% & echo:%fg`white%2 ^|Montage%`r%
) else (
    if "%imagemagick_path%" EQU "" (echo:%fg`black%1 ^|Convert ^(INDISPONÍVEL^)%`r%) else (echo:%fg`white%1 ^|Convert%`r%)
    if "%imagemagick_path%" EQU "" (echo:%fg`black%2 ^|Montage ^(INDISPONÍVEL^)%`r%) else (echo:%fg`white%2 ^|Montage%`r%)
)
echo:%fg`white%3 ^|Rename%`r%
echo.
echo:%fg`white%L ^|Change Log%`r%
echo:%fg`white%C ^|Configuração%`r%
echo.
echo:%fg`white%4 ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if "%Developer_ON%" EQU "1" (
    if %errorlevel% EQU 49 cls & goto Convert
    if %errorlevel% EQU 50 cls & goto Montage
) else (
    if "%imagemagick_path%" NEQ "" if %errorlevel% EQU 49 cls & goto Convert
    if "%imagemagick_path%" NEQ "" if %errorlevel% EQU 50 cls & goto Montage
)
if %errorlevel% EQU 51 cls & goto Rename_menu
if %errorlevel% EQU 108 cls & goto Change_log
if %errorlevel% EQU 76 cls & goto Change_log
if %errorlevel% EQU 99 cls & goto ConfigPATHEXT
if %errorlevel% EQU 67 cls & goto ConfigPATHEXT
if %errorlevel% EQU 52 cls & exit 0
if %errorlevel% EQU 27 cls & goto exit_esc
cls & goto Menu

:exit_esc
echo:%fg`yellow%ENTER -^> SAIR%`r%
echo:%fg`yellow%ESC -^> CANCELAR%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU 13 cls & exit 0
if %errorlevel% EQU 27 cls & goto Menu
cls & goto Menu

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ███████ ██  ██████  ██████   █████  ████████ ██   ██ ███████ ██   ██ ████████ 
::██      ██    ██ ████   ██ ██      ██ ██       ██   ██ ██   ██    ██    ██   ██ ██       ██ ██     ██    
::██      ██    ██ ██ ██  ██ █████   ██ ██   ███ ██████  ███████    ██    ███████ █████     ███      ██    
::██      ██    ██ ██  ██ ██ ██      ██ ██    ██ ██      ██   ██    ██    ██   ██ ██       ██ ██     ██    
:: ██████  ██████  ██   ████ ██      ██  ██████  ██      ██   ██    ██    ██   ██ ███████ ██   ██    ██    
::                                                                                                         

:ConfigPATHEXT
title Configurações - %version_%
echo:%fg`green%Configuração%`r%
if "%select_folder_type%" EQU "" set select_folder_type=1

if "%quality_depth%" EQU "" (set "quality_depth_preview=6") else (set "quality_depth_preview=%quality_depth%")
if "%quality_png_compression_strategy%" EQU "" (set "quality_png_compression_strategy_preview=0") else (set "quality_png_compression_strategy_preview=%quality_png_compression_strategy%")
if "%quality_png_compression_level%" EQU "" (set "quality_png_compression_level_preview=9") else (set "quality_png_compression_level_preview=%quality_png_compression_level%")
if "%quality_png_compression_filter%" EQU "" (set "quality_png_compression_filter_preview=0") else (set "quality_png_compression_filter_preview=%quality_png_compression_filter%")
if "%quality_set_value%" EQU "" (set "quality_set_value_preview=100") else (set "quality_set_value_preview=%quality_set_value%")
if "%Developer_ON%" EQU "1" (echo. & echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
if "%Att_comunication_error%" EQU "1" echo: & echo:%fg`red%Aviso%fg`white%: Houve um erro ao comunicar com o servidor.%`r% & set "Att_comunication_error=0"
echo.
if "%extens_output_UP%" EQU "" (echo:%fg`white%E. ^|Extensão de saída%`r% %fg`yellow%^(%`r%%fg`red%Nada definido%`r%%fg`yellow%^)%`r%) else (echo:%fg`white%E. ^|Extensão de saída%`r% %fg`yellow%^(%`r%%fg`green%%extens_output_UP%%`r%%fg`yellow%^)%`r%)
echo.
if "%Att_verify%" EQU "1" (echo:%fg`white-%V. ^|Verificar atualizações ^(ATIVADO^)%`r%) else (echo:%fg`white-%V. ^|Verificar atualizações ^(DESATIVADO^)%`r%)
echo.
if "%error_veriffy%" EQU "1" (echo:%fg`white%M. ^|Mensagem de erro %fg`yellow%^(%fg`green%ATIVADO%fg`yellow%^)%`r%) else (echo:%fg`white%M. ^|Mensagem de erro %fg`yellow%^(%fg`red%DESATIVADO%fg`yellow%^)%`r%)
echo.
if "%high_quality%" EQU "1" (echo:%fg`white%Q. ^|Imagem com uma qualidade melhor %fg`yellow%^(%fg`magenta%SE POSSÍVEL%fg`yellow%^) ^(%fg`green%ATIVADO%fg`yellow%^)%`r%) else (echo:%fg`white%Q. ^|Imagem com uma qualidade melhor %fg`yellow%^(%fg`magenta%SE POSSÍVEL%fg`yellow%^) ^(%fg`red%DESATIVADO%fg`yellow%^)%`r%)
echo:
if "%high_quality%" EQU "1" echo:%fg`white%C. ^|Configuração da qualidade%`r% & echo:
if "%select_folder_type%" EQU "1" echo:%fg`white%F. ^|Mudar modo de selecionar pasta %fg`yellow%^(%fg`green%MODO JANELA%fg`yellow%^)%`r% & echo:
if "%select_folder_type%" EQU "2" echo:%fg`white%F. ^|Mudar modo de selecionar pasta %fg`yellow%^(%fg`yellow-%MODO ESCREVER%fg`yellow%^)%`r% & echo:
echo:%fg`white%S. ^|Atalhos%`r% & echo:
echo:%fg`white%2. ^|Menu%`r%
echo:%fg`white%3. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 101 cls & set "select_extens=0" & call :Extensão_output
if %errorlevel% EQU 69 cls & set "select_extens=0" & call :Extensão_output
:: if %errorlevel% EQU 118 if %Att_verify%==1 call :Att_ver
:: if %errorlevel% EQU 86 if %Att_verify%==1 call :Att_ver
:: if %errorlevel% EQU 118 if %Att_verify%==0 call :Att_ver
:: if %errorlevel% EQU 86 if %Att_verify%==0 call :Att_ver
if %errorlevel% EQU 109 if %error_veriffy%==1 set "error_veriffy=0" & call :save1
if %errorlevel% EQU 77 if %error_veriffy%==0 set "error_veriffy=1" & call :save1
if %errorlevel% EQU 109 if %error_veriffy%==0 set "error_veriffy=1" & call :save1
if %errorlevel% EQU 77 if %error_veriffy%==1 set "error_veriffy=0" & call :save1
if %errorlevel% EQU 113 if %high_quality%==1 set "high_quality=0" & call :save1
if %errorlevel% EQU 81 if %high_quality%==0 set "high_quality=1" & call :save1
if %errorlevel% EQU 113 if %high_quality%==0 set "high_quality=1" & call :save1
if %errorlevel% EQU 81 if %high_quality%==1 set "high_quality=0" & call :save1
if %errorlevel% EQU 100 if %Developer_ON%==1 set "Developer_ON=0" & call :save1
if %errorlevel% EQU 68 if %Developer_ON%==0 set "Developer_ON=1" & call :save1
if %errorlevel% EQU 100 if %Developer_ON%==0 set "Developer_ON=1" & call :save1
if %errorlevel% EQU 68 if %Developer_ON%==1 set "Developer_ON=0" & call :save1
if %errorlevel% EQU 102 if %select_folder_type%==1 set "select_folder_type=2" & call :save1
if %errorlevel% EQU 70 if %select_folder_type%==2 set "select_folder_type=1" & call :save1
if %errorlevel% EQU 102 if %select_folder_type%==2 set "select_folder_type=1" & call :save1
if %errorlevel% EQU 70 if %select_folder_type%==1 set "select_folder_type=2" & call :save1
if %errorlevel% EQU 83 cls & goto Shotout_Menu
if %errorlevel% EQU 115 cls & goto Shotout_Menu
if "%high_quality%" EQU "1" if %errorlevel% EQU 99 cls & goto ConfigHighQuality
if "%high_quality%" EQU "1" if %errorlevel% EQU 67 cls & goto ConfigHighQuality
if %errorlevel% EQU 50 cls & goto Menu
if %errorlevel% EQU 27 cls & goto Menu
if %errorlevel% EQU 51 cls & exit 0
cls & goto ConfigPATHEXT


:Att_ver
chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/rcmjxc74r6', '%TEMP%\_MENU---TEMP---FILES\Default1')" & chcp 65001 >nul
chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/v7whs09q7t', '%TEMP%\_MENU---TEMP---FILES\Default2')" & chcp 65001 >nul
::if "%folder_started%" NEQ "" (where /r "%folder_started%" /f *.cmd >"%TEMP%\_MENU---TEMP---FILES\Verify_start_menu") else (where /r "%cd%" /f *.cmd >"%TEMP%\_MENU---TEMP---FILES\Verify_start_menu")
where /r "%cd%" /f *.cmd >"%TEMP%\_MENU---TEMP---FILES\Verify_start_menu"
set Count=1
FOR /F "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\Verify_start_menu"') do (
    set "AttVerify!Count!=%%~A"
    set /a "Count+=1"
)
set Count=

FOR /L %%I IN (1 1 1000) DO (
    if "!AttVerify%%I!" NEQ "" fc "!AttVerify%%I!" "%TEMP%\_MENU---TEMP---FILES\Default2" >nul && set "Default_att2=!AttVerify%%I!"
)
FOR /L %%I IN (1 1 1000) DO (
    if "!AttVerify%%I!" NEQ "" fc "!AttVerify%%I!" "%TEMP%\_MENU---TEMP---FILES\Default1" >nul && set "Default_att1=!AttVerify%%I!"
)

if "%Att_verify%" EQU "1" call :Att_ver1
if "%Att_verify%" EQU "0" call :Att_ver2
:Att_ver_clean
set Default_att1=
set Default_att2=
if "%AttVerify1%" NEQ "" FOR /L %%I IN (1 1 1000) DO set AttVerify%%I=
del "%TEMP%\_MENU---TEMP---FILES\Verify_start_menu"
goto :eof

:Att_ver1
if "%Default_att1%" NEQ "" chcp 437 >nul & powershell wget -O "%Default_att1%" https://pt.textbin.net/raw/v7whs09q7t >nul && set "Att_verify=0" || set "Att_comunication_error=1"
chcp 65001 >nul
if "%Default_att1%" NEQ "" call :save1
if "%Default_att1%" NEQ "" goto Att_ver_clean
goto :eof

:Att_ver2
if "%Default_att2%" NEQ "" chcp 437 >nul & powershell wget -O "%Default_att2%" https://pt.textbin.net/raw/rcmjxc74r6 >nul && set "Att_verify=1" || set "Att_comunication_error=1"
chcp 65001 >nul
if "%Default_att2%" NEQ "" call :save1
if "%Default_att2%" NEQ "" goto Att_ver_clean
goto :eof


:Extensão_output
if "%extens_output_UP%" EQU "PNG" set "select_extens=0"
if "%extens_output_UP%" EQU "JPG" set "select_extens=1"
:loop9
if %select_extens% EQU 0 (
    echo:%bg`green%%fg`blue%PNG%`r% & set select_extens_value=0
    echo:%bg`black-%%fg`white%JPG%`r%
)
if %select_extens% EQU 1 (
    echo:%bg`black-%%fg`white%PNG%`r%
    echo:%bg`green%%fg`blue%JPG%`r% & set select_extens_value=1
)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> CANCELAR%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_extens-=1
if %errorlevel% EQU -80 set /a select_extens+=1
if %errorlevel% EQU 13 if %select_extens_value% EQU 0 cls & set "extens_output_UP=PNG" & set "extens_output_DOWN=png" & call :save1 & goto ConfigPATHEXT
if %errorlevel% EQU 13 if %select_extens_value% EQU 1 cls & set "extens_output_UP=JPG" & set "extens_output_DOWN=jpg" & call :save1 & goto ConfigPATHEXT
if %errorlevel% EQU 27 cls & set "select_extens=" & goto ConfigPATHEXT
if %select_extens% EQU -1 set select_extens=1
if %select_extens% EQU 2 set select_extens=0
cls & goto loop9


:ConfigHighQuality
if "%quality_depth%" EQU "" (set "quality_depth_preview=6") else (set "quality_depth_preview=%quality_depth%")
if "%quality_png_compression_strategy%" EQU "" (set "quality_png_compression_strategy_preview=0") else (set "quality_png_compression_strategy_preview=%quality_png_compression_strategy%")
if "%quality_png_compression_level%" EQU "" (set "quality_png_compression_level_preview=9") else (set "quality_png_compression_level_preview=%quality_png_compression_level%")
if "%quality_png_compression_filter%" EQU "" (set "quality_png_compression_filter_preview=0") else (set "quality_png_compression_filter_preview=%quality_png_compression_filter%")
if "%quality_set_value%" EQU "" (set "quality_set_value_preview=100") else (set "quality_set_value_preview=%quality_set_value%")

if "%ConfigHighQuality_selected%" EQU "" set ConfigHighQuality_selected=1

echo:
if "%ConfigHighQuality_selected%" EQU "1" (echo:   %bg`black-%%fg`white%^> %bg`black-%%fg`green%DEPTH%bg`black-%%fg`white% ^>  %fg`cyan-%DICA: ISSO SERVE PARA DEFINIR A PROFUNDIDADE DE CADA PÍXEL%`r%) else (echo:   %bg`black-%%fg`green%DEPTH%`r%)
if "%quality_depth_preview%" EQU "1" echo:   %bg`black-%%fg`yellow%8%`r%  %bg`black-%%fg`green%16%`r%  %bg`black-%%fg`green%24%`r%  %bg`black-%%fg`green%32%`r%  %bg`black-%%fg`green%64%`r%  %bg`black-%%fg`green%PADRÃO%`r%
if "%quality_depth_preview%" EQU "2" echo:   %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`yellow%16%`r%  %bg`black-%%fg`green%24%`r%  %bg`black-%%fg`green%32%`r%  %bg`black-%%fg`green%64%`r%  %bg`black-%%fg`green%PADRÃO%`r%
if "%quality_depth_preview%" EQU "3" echo:   %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%16%`r%  %bg`black-%%fg`yellow%24%`r%  %bg`black-%%fg`green%32%`r%  %bg`black-%%fg`green%64%`r%  %bg`black-%%fg`green%PADRÃO%`r%
if "%quality_depth_preview%" EQU "4" echo:   %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%16%`r%  %bg`black-%%fg`green%24%`r%  %bg`black-%%fg`yellow%32%`r%  %bg`black-%%fg`green%64%`r%  %bg`black-%%fg`green%PADRÃO%`r%
if "%quality_depth_preview%" EQU "5" echo:   %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%16%`r%  %bg`black-%%fg`green%24%`r%  %bg`black-%%fg`green%32%`r%  %bg`black-%%fg`yellow%64%`r%  %bg`black-%%fg`green%PADRÃO%`r%
if "%quality_depth_preview%" EQU "6" echo:   %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%16%`r%  %bg`black-%%fg`green%24%`r%  %bg`black-%%fg`green%32%`r%  %bg`black-%%fg`green%64%`r%  %bg`black-%%fg`yellow%PADRÃO%`r%

if "%extens_output_UP%" EQU "PNG" (
echo:
if "%ConfigHighQuality_selected%" EQU "2" (echo:   %bg`black-%%fg`white%^> %bg`black-%%fg`green%ESTRATÉGIA%bg`black-%%fg`white% ^>%`r%) else (echo:   %bg`black-%%fg`green%ESTRATÉGIA%`r%)
if "%quality_png_compression_strategy_preview%" EQU "0" echo:   %bg`black-%%fg`yellow%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%
if "%quality_png_compression_strategy_preview%" EQU "1" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`yellow%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%
if "%quality_png_compression_strategy_preview%" EQU "2" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`yellow%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%
if "%quality_png_compression_strategy_preview%" EQU "3" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`yellow%3%`r%  %bg`black-%%fg`green%4%`r%
if "%quality_png_compression_strategy_preview%" EQU "4" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`yellow%4%`r%
)

if "%extens_output_UP%" EQU "PNG" (
echo:
if "%ConfigHighQuality_selected%" EQU "3" (echo:   %bg`black-%%fg`white%^> %bg`black-%%fg`green%NÍVEL%bg`black-%%fg`white% ^>  %fg`cyan-%DICA: ISSO DEFINE A COMPACTAÇÃO DA IMAGEM SENDO %fg`white%'%fg`yellow%0%fg`white%' %fg`cyan-%RÁPIDA E %fg`white%'%fg`yellow%9%fg`white%' %fg`cyan-%MAIS LENTA E COM UMA QUALIDADE MAIOR.%`r%) else (echo:   %bg`black-%%fg`green%NÍVEL%`r%)
if "%quality_png_compression_level_preview%" EQU "0" echo:   %bg`black-%%fg`yellow%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "1" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`yellow%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "2" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`yellow%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "3" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`yellow%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "4" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`yellow%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "5" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`yellow%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "6" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`yellow%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "7" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`yellow%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "8" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`yellow%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_level_preview%" EQU "9" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`yellow%9%`r%
)

if "%extens_output_UP%" EQU "PNG" (
echo:
if "%ConfigHighQuality_selected%" EQU "4" (echo:   %bg`black-%%fg`white%^> %bg`black-%%fg`green%FILTRO%bg`black-%%fg`white% ^>%`r%) else (echo:   %bg`black-%%fg`green%FILTRO%`r%)
if "%quality_png_compression_filter_preview%" EQU "0" echo:   %bg`black-%%fg`yellow%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "1" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`yellow%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "2" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`yellow%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "3" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`yellow%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "4" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`yellow%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "5" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`yellow%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "6" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`yellow%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "7" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`yellow%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "8" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`yellow%8%`r%  %bg`black-%%fg`green%9%`r%
if "%quality_png_compression_filter_preview%" EQU "9" echo:   %bg`black-%%fg`green%0%`r%  %bg`black-%%fg`green%1%`r%  %bg`black-%%fg`green%2%`r%  %bg`black-%%fg`green%3%`r%  %bg`black-%%fg`green%4%`r%  %bg`black-%%fg`green%5%`r%  %bg`black-%%fg`green%6%`r%  %bg`black-%%fg`green%7%`r%  %bg`black-%%fg`green%8%`r%  %bg`black-%%fg`yellow%9%`r%
)

echo:
if "%ConfigHighQuality_selected%" EQU "5" (echo:   %bg`black-%%fg`white%^> %bg`black-%%fg`green%QUALIDADE%bg`black-%%fg`white% ^>  %fg`cyan-%DICA: QUANTO MAIOR O NÚMERO MELHOR A QUALIDADE DA IMAGEM%`r%) else (echo:   %bg`black-%%fg`green%QUALIDADE%`r%)
echo:   %bg`black-%%fg`yellow%%quality_set_value_preview%%`r%

echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%← -^> MUDAR VALOR PARA A ESQUERDA%`r%
echo:%fg`yellow%→ -^> MUDAR VALOR PARA A DIREITA%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> CANCELAR%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a ConfigHighQuality_selected-=1
if %errorlevel% EQU -80 set /a ConfigHighQuality_selected+=1
if %errorlevel% EQU 13 cls & set "ConfigHighQuality_selected=" & call :LoadValuesToSave & call :Save1 & goto ConfigPATHEXT
if %errorlevel% EQU 27 cls & set "ConfigHighQuality_selected=" & goto :ConfigPATHEXT

if "%extens_output_UP%" NEQ "PNG" if %ConfigHighQuality_selected% EQU 2 set /a ConfigHighQuality_selected=5
if "%extens_output_UP%" NEQ "PNG" if %ConfigHighQuality_selected% EQU 3 set /a ConfigHighQuality_selected=5
if "%extens_output_UP%" NEQ "PNG" if %ConfigHighQuality_selected% EQU 4 set /a ConfigHighQuality_selected=1

if %ConfigHighQuality_selected% EQU 0 set ConfigHighQuality_selected=5
if %ConfigHighQuality_selected% EQU 6 set ConfigHighQuality_selected=1

if %errorlevel% EQU -75 if %ConfigHighQuality_selected% EQU 1 set /a quality_depth_preview-=1
if %errorlevel% EQU -75 if %ConfigHighQuality_selected% EQU 2 set /a quality_png_compression_strategy_preview-=1
if %errorlevel% EQU -75 if %ConfigHighQuality_selected% EQU 3 set /a quality_png_compression_level_preview-=1
if %errorlevel% EQU -75 if %ConfigHighQuality_selected% EQU 4 set /a quality_png_compression_filter_preview-=1
if %errorlevel% EQU -75 if %ConfigHighQuality_selected% EQU 5 set /a quality_set_value_preview-=1

if %errorlevel% EQU -77 if %ConfigHighQuality_selected% EQU 1 set /a quality_depth_preview+=1
if %errorlevel% EQU -77 if %ConfigHighQuality_selected% EQU 2 set /a quality_png_compression_strategy_preview+=1
if %errorlevel% EQU -77 if %ConfigHighQuality_selected% EQU 3 set /a quality_png_compression_level_preview+=1
if %errorlevel% EQU -77 if %ConfigHighQuality_selected% EQU 4 set /a quality_png_compression_filter_preview+=1
if %errorlevel% EQU -77 if %ConfigHighQuality_selected% EQU 5 set /a quality_set_value_preview+=1

if %quality_depth_preview% EQU 0 set quality_depth_preview=6
if %quality_depth_preview% EQU 7 set quality_depth_preview=1

if %quality_png_compression_strategy_preview% EQU -1 set quality_png_compression_strategy_preview=4
if %quality_png_compression_strategy_preview% EQU 5 set quality_png_compression_strategy_preview=0

if %quality_png_compression_level_preview% EQU -1 set quality_png_compression_level_preview=9
if %quality_png_compression_level_preview% EQU 10 set quality_png_compression_level_preview=0

if %quality_png_compression_filter_preview% EQU -1 set quality_png_compression_filter_preview=9
if %quality_png_compression_filter_preview% EQU 10 set quality_png_compression_filter_preview=0

if %quality_set_value_preview% EQU 0 set quality_set_value_preview=100
if %quality_set_value_preview% EQU 101 set quality_set_value_preview=1

cls & goto ConfigHighQuality

:LoadValuesToSave
set quality_depth=%quality_depth_preview%
set quality_png_compression_strategy=%quality_png_compression_strategy_preview%
set quality_png_compression_level=%quality_png_compression_level_preview%
set quality_png_compression_filter=%quality_png_compression_filter_preview%
set quality_set_value=%quality_set_value_preview%
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██   ██  ██████  ████████  ██████  ██    ██ ████████ 
::██      ██   ██ ██    ██    ██    ██    ██ ██    ██    ██    
::███████ ███████ ██    ██    ██    ██    ██ ██    ██    ██    
::     ██ ██   ██ ██    ██    ██    ██    ██ ██    ██    ██    
::███████ ██   ██  ██████     ██     ██████   ██████     ██    
::                                                             

:Shotout_Menu
set shotout_select_menu=1
set shotout_select_menu_option=1
IF "%shotout_crop_iniciar%" EQU "" set shotout_crop_iniciar=        
IF "%shotout_crop_config%" EQU "" set shotout_crop_config=        
IF "%shotout_crop_direto%" EQU "" set shotout_crop_direto=        
IF "%shotout_convert_iniciar%" EQU "" set shotout_convert_iniciar=        
IF "%shotout_convert_config%" EQU "" set shotout_convert_config=        
IF "%shotout_montage_iniciar%" EQU "" set shotout_montage_iniciar=        
IF "%shotout_montage_config%" EQU "" set shotout_montage_config=        
IF "%shotout_montage_direto%" EQU "" set shotout_montage_direto=        
IF "%shotout_montage_escolher%" EQU "" set shotout_montage_escolher=        
IF "%shotout_reneme_iniciar%" EQU "" set shotout_reneme_iniciar=        
IF "%shotout_reneme_config%" EQU "" set shotout_reneme_config=        
IF "%shotout_config_menu%" EQU "" set "shotout_config_menu=CTRL + H"
IF "%shotout_config_menu_shotout%" EQU "" set shotout_config_menu_shotout=        
IF "%shotout_config_menu_deve%" EQU "" set shotout_config_menu_deve=        
:loop10
echo:
call :Shotout_Text
echo:
IF "%Developer_ON%" EQU "1" ECHO:%shotout_select_menu% ^+ %shotout_select_menu_option%
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%← -^> MUDAR O MENU PARA A ESQUERDA%`r%
echo:%fg`yellow%→ -^> MUDAR O MENU PARA A DIREITA%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR UMA OPÇÃO%`r%
echo:%fg`yellow%ESC -^> VOLTAR%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
IF %ERRORLEVEL% EQU 13 set "shotout_error_1=0" & set "shotout_error_2=0" & CALL :Check_Set_Shotout
call :Shotout_page
IF %ERRORLEVEL% EQU 27 cls & goto ConfigPATHEXT
IF %ERRORLEVEL% EQU -72 SET /A "shotout_select_menu_option-=1" & CALL :Shotout_before_menu
IF %ERRORLEVEL% EQU -80 SET /A "shotout_select_menu_option+=1" & CALL :Shotout_before_menu
IF %ERRORLEVEL% EQU -77 SET /A "shotout_select_menu+=1" & CALL :Shotout_next_menu
IF %ERRORLEVEL% EQU -75 SET /A "shotout_select_menu-=1" & CALL :Shotout_next_menu

IF %shotout_select_menu% EQU 0 SET shotout_select_menu=5
IF %shotout_select_menu% EQU 6 SET shotout_select_menu=1
CALL :PreSaveShotout_code
CLS & GOTO loop10

:Shotout_next_menu
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 1 SET shotout_select_menu_option=1
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 2 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=3

IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 2 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 4 SET shotout_select_menu_option=2

IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 4 SET shotout_select_menu_option=2

IF %shotout_select_menu% EQU 0 IF %shotout_select_menu_option% EQU 2 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 0 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=3
GOTO :EOF

:Shotout_before_menu
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 0 SET shotout_select_menu_option=3
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 4 SET shotout_select_menu_option=1

IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 0 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=1

IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 0 SET shotout_select_menu_option=4
IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 5 SET shotout_select_menu_option=1

IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 0 SET shotout_select_menu_option=2
IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 3 SET shotout_select_menu_option=1

IF %shotout_select_menu% EQU 5 IF %shotout_select_menu_option% EQU 0 SET shotout_select_menu_option=3
IF %shotout_select_menu% EQU 5 IF %shotout_select_menu_option% EQU 4 SET shotout_select_menu_option=1
GOTO :EOF


:Check_Set_Shotout
cls & echo: & call :Shotout_Text
echo:
echo:%fg`yellow%CTRL + LETRA -^> PARA CRIAR UM ATALHO%`r%
echo:%fg`yellow%ESC -^> APAGAR/VOLTAR%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
IF %ERRORLEVEL% EQU 1 SET "set_shotout=%shotout_code_1%"
IF %ERRORLEVEL% EQU 2 SET "set_shotout=%shotout_code_2%"
IF %ERRORLEVEL% EQU 3 SET "set_shotout=%shotout_code_3%"
IF %ERRORLEVEL% EQU 4 SET "set_shotout=%shotout_code_4%"
IF %ERRORLEVEL% EQU 5 SET "set_shotout=%shotout_code_5%"
IF %ERRORLEVEL% EQU 6 SET "set_shotout=%shotout_code_6%"
IF %ERRORLEVEL% EQU 7 SET "set_shotout=%shotout_code_7%"
IF %ERRORLEVEL% EQU 8 SET "set_shotout=%shotout_code_8%"
IF %ERRORLEVEL% EQU 9 SET "set_shotout=%shotout_code_9%"
IF %ERRORLEVEL% EQU 10 SET "set_shotout=%shotout_code_10%"
IF %ERRORLEVEL% EQU 11 SET "set_shotout=%shotout_code_11%"
IF %ERRORLEVEL% EQU 12 SET "set_shotout=%shotout_code_12%"
IF %ERRORLEVEL% EQU 13 SET "set_shotout=%shotout_code_13%"
IF %ERRORLEVEL% EQU 14 SET "set_shotout=%shotout_code_14%"
IF %ERRORLEVEL% EQU 15 SET "set_shotout=%shotout_code_15%"
IF %ERRORLEVEL% EQU 16 SET "set_shotout=%shotout_code_16%"
IF %ERRORLEVEL% EQU 17 SET "set_shotout=%shotout_code_17%"
IF %ERRORLEVEL% EQU 18 SET "set_shotout=%shotout_code_18%"
IF %ERRORLEVEL% EQU 19 SET "set_shotout=%shotout_code_19%"
IF %ERRORLEVEL% EQU 20 SET "set_shotout=%shotout_code_20%"
IF %ERRORLEVEL% EQU 21 SET "set_shotout=%shotout_code_21%"
IF %ERRORLEVEL% EQU 22 SET "set_shotout=%shotout_code_22%"
IF %ERRORLEVEL% EQU 23 SET "set_shotout=%shotout_code_23%"
IF %ERRORLEVEL% EQU 24 SET "set_shotout=%shotout_code_24%"
IF %ERRORLEVEL% EQU 25 SET "set_shotout=%shotout_code_25%"
IF %ERRORLEVEL% EQU 26 SET "set_shotout=%shotout_code_26%"
IF %ERRORLEVEL% EQU 27 SET set_shotout=DELET
IF %ERRORLEVEL% GEQ 28 SET "set_shotout=DELET" & SET "shotout_error_2=1"

IF "%set_shotout%" EQU "%shotout_crop_iniciar%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_crop_config%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_crop_direto%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_convert_iniciar%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_convert_config%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_montage_iniciar%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_montage_config%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_montage_direto%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_montage_escolher%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_reneme_iniciar%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_reneme_config%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_config_menu%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_config_menu_shotout%" set "shotout_error_1=1" & GOTO :EOF
IF "%set_shotout%" EQU "%shotout_config_menu_deve%" set "shotout_error_1=1" & GOTO :EOF



IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 1 SET "shotout_crop_iniciar=%set_shotout%"
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 2 SET "shotout_crop_config=%set_shotout%"
IF %shotout_select_menu% EQU 1 IF %shotout_select_menu_option% EQU 3 SET "shotout_crop_direto=%set_shotout%"

IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 1 SET "shotout_convert_iniciar=%set_shotout%"
IF %shotout_select_menu% EQU 2 IF %shotout_select_menu_option% EQU 2 SET "shotout_convert_config=%set_shotout%"

IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 1 SET "shotout_montage_iniciar=%set_shotout%"
IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 2 SET "shotout_montage_config=%set_shotout%"
IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 3 SET "shotout_montage_direto=%set_shotout%"
IF %shotout_select_menu% EQU 3 IF %shotout_select_menu_option% EQU 4 SET "shotout_montage_escolher=%set_shotout%"

IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 1 SET "shotout_reneme_iniciar=%set_shotout%"
IF %shotout_select_menu% EQU 4 IF %shotout_select_menu_option% EQU 2 SET "shotout_reneme_config=%set_shotout%"

IF %shotout_select_menu% EQU 5 IF %shotout_select_menu_option% EQU 1 SET "shotout_config_menu=%set_shotout%"
IF %shotout_select_menu% EQU 5 IF %shotout_select_menu_option% EQU 2 SET "shotout_config_menu_shotout=%set_shotout%"
IF %shotout_select_menu% EQU 5 IF %shotout_select_menu_option% EQU 3 SET "shotout_config_menu_deve=%set_shotout%"



IF "%shotout_crop_iniciar%" EQU "DELET" set shotout_crop_iniciar=        
IF "%shotout_crop_config%" EQU "DELET" set shotout_crop_config=        
IF "%shotout_crop_direto%" EQU "DELET" set shotout_crop_direto=        
IF "%shotout_convert_iniciar%" EQU "DELET" set shotout_convert_iniciar=        
IF "%shotout_convert_config%" EQU "DELET" set shotout_convert_config=        
IF "%shotout_montage_iniciar%" EQU "DELET" set shotout_montage_iniciar=        
IF "%shotout_montage_config%" EQU "DELET" set shotout_montage_config=        
IF "%shotout_montage_direto%" EQU "DELET" set shotout_montage_direto=        
IF "%shotout_montage_escolher%" EQU "DELET" set shotout_montage_escolher=        
IF "%shotout_reneme_iniciar%" EQU "DELET" set shotout_reneme_iniciar=        
IF "%shotout_reneme_config%" EQU "DELET" set shotout_reneme_config=        
IF "%shotout_config_menu%" EQU "DELET" set shotout_config_menu=        
IF "%shotout_config_menu_shotout%" EQU "DELET" set shotout_config_menu_shotout=        
IF "%shotout_config_menu_deve%" EQU "DELET" set shotout_config_menu_deve=        
GOTO :EOF

:PreSaveShotout_code
SET COUNT=1
FOR %%I IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (
    IF "%shotout_crop_iniciar%" EQU "CTRL + %%I" set shotout_crop_iniciar_set=!COUNT!
    IF "%shotout_crop_config%" EQU "CTRL + %%I" set shotout_crop_config_set=!COUNT!
    IF "%shotout_crop_direto%" EQU "CTRL + %%I" set shotout_crop_direto_set=!COUNT!
    IF "%shotout_convert_iniciar%" EQU "CTRL + %%I" set shotout_convert_iniciar_set=!COUNT!
    IF "%shotout_convert_config%" EQU "CTRL + %%I" set shotout_convert_config_set=!COUNT!
    IF "%shotout_montage_iniciar%" EQU "CTRL + %%I" set shotout_montage_iniciar_set=!COUNT!
    IF "%shotout_montage_config%" EQU "CTRL + %%I" set shotout_montage_config_set=!COUNT!
    IF "%shotout_montage_direto%" EQU "CTRL + %%I" set shotout_montage_direto_set=!COUNT!
    IF "%shotout_montage_escolher%" EQU "CTRL + %%I" set shotout_montage_escolher_set=!COUNT!
    IF "%shotout_reneme_iniciar%" EQU "CTRL + %%I" set shotout_reneme_iniciar_set=!COUNT!
    IF "%shotout_reneme_config%" EQU "CTRL + %%I" set shotout_reneme_config_set=!COUNT!
    IF "%shotout_config_menu%" EQU "CTRL + %%I" set shotout_config_menu_set=!COUNT!
    IF "%shotout_config_menu_shotout%" EQU "CTRL + %%I" set shotout_config_menu_shotout_set=!COUNT!
    IF "%shotout_config_menu_deve%" EQU "CTRL + %%I" set shotout_config_menu_deve_set=!COUNT!
    SET /A COUNT+=1
)

IF "%shotout_crop_iniciar%" EQU "        " set shotout_crop_iniciar_set=
IF "%shotout_crop_config%" EQU "        " set shotout_crop_config_set=
IF "%shotout_crop_direto%" EQU "        " set shotout_crop_direto_set=
IF "%shotout_convert_iniciar%" EQU "        " set shotout_convert_iniciar_set=
IF "%shotout_convert_config%" EQU "        " set shotout_convert_config_set=
IF "%shotout_montage_iniciar%" EQU "        " set shotout_montage_iniciar_set=
IF "%shotout_montage_config%" EQU "        " set shotout_montage_config_set=
IF "%shotout_montage_direto%" EQU "        " set shotout_montage_direto_set=
IF "%shotout_montage_escolher%" EQU "        " set shotout_montage_escolher_set=
IF "%shotout_reneme_iniciar%" EQU "        " set shotout_reneme_iniciar_set=
IF "%shotout_reneme_config%" EQU "        " set shotout_reneme_config_set=
IF "%shotout_config_menu%" EQU "        " set shotout_config_menu_set=
IF "%shotout_config_menu_shotout%" EQU "        " set shotout_config_menu_shotout_set=
IF "%shotout_config_menu_deve%" EQU "        " set shotout_config_menu_deve_set=

for %%I in (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26) do (
    if "%shotout_crop_iniciar_set%" EQU "%%I" set "shotout_code_call_1=Crop_start"
    if "%shotout_crop_config_set%" EQU "%%I" set "shotout_code_call_2=Crop_Config"
    if "%shotout_crop_direto_set%" EQU "%%I" set "shotout_code_call_3=Crop_Custom"
    
    if "%shotout_convert_iniciar_set%" EQU "%%I" set "shotout_code_call_4=Converter_start"
    if "%shotout_convert_config_set%" EQU "%%I" set "shotout_code_call_5=Converter_Config"
    
    if "%shotout_montage_iniciar_set%" EQU "%%I" set "shotout_code_call_6=Montage_start"
    if "%shotout_montage_config_set%" EQU "%%I" set "shotout_code_call_7=Montage_Config"
    if "%shotout_montage_direto_set%" EQU "%%I" set "shotout_code_call_8=Montage_Custom"
    if "%shotout_montage_escolher_set%" EQU "%%I" set "shotout_code_call_9=Montage_select_files"
    
    if "%shotout_reneme_iniciar_set%" EQU "%%I" set "shotout_code_call_10=Rename_start2"
    if "%shotout_reneme_config_set%" EQU "%%I" set "shotout_code_call_11=Rename_Config"
    
    if "%shotout_config_menu_set%" EQU "%%I" set "shotout_code_call_12=ConfigPATHEXT"
    if "%shotout_config_menu_shotout_set%" EQU "%%I" set "shotout_code_call_13=Shotout_Menu"
    if "%shotout_config_menu_deve_set%" EQU "%%I" set "shotout_code_call_14=Shotout_Menu_Deve"
)
IF "%shotout_crop_iniciar_set%" EQU "" SET shotout_code_call_1=
IF "%shotout_crop_config_set%" EQU "" SET shotout_code_call_2=
IF "%shotout_crop_direto_set%" EQU "" SET shotout_code_call_3=
IF "%shotout_convert_iniciar_set%" EQU "" SET shotout_code_call_4=
IF "%shotout_convert_config_set%" EQU "" SET shotout_code_call_5=
IF "%shotout_montage_iniciar_set%" EQU "" SET shotout_code_call_6=
IF "%shotout_montage_config_set%" EQU "" SET shotout_code_call_7=
IF "%shotout_montage_direto_set%" EQU "" SET shotout_code_call_8=
IF "%shotout_montage_escolher_set%" EQU "" SET shotout_code_call_9=
IF "%shotout_reneme_iniciar_set%" EQU "" SET shotout_code_call_10=
IF "%shotout_reneme_config_set%" EQU "" SET shotout_code_call_11=
IF "%shotout_config_menu_set%" EQU "" SET shotout_code_call_12=
IF "%shotout_config_menu_shotout_set%" EQU "" SET shotout_code_call_13=
IF "%shotout_config_menu_deve_set%" EQU "" SET shotout_code_call_14=
CALL :save1
GOTO :EOF



:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ██    ██ ███████ ██████  ████████                                                                                                     
::██      ██    ██ ████   ██ ██    ██ ██      ██   ██    ██                                                                                                        
::██      ██    ██ ██ ██  ██ ██    ██ █████   ██████     ██                                                                                                        
::██      ██    ██ ██  ██ ██  ██  ██  ██      ██   ██    ██                                                                                                        
:: ██████  ██████  ██   ████   ████   ███████ ██   ██    ██                                                                                                        
::                                                            

:Convert
title Convert - Menu - %version_%
echo:%fg`green%Convert%`r%
if "%Developer_ON%" EQU "1" (echo. & echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
echo:%fg`white%1. ^|Crop%`r%
echo:%fg`white%2. ^|Converter%`r%
echo:%fg`white%3. ^|Fill%`r% %fg`red%^(DESATIVADO^)%`r%
echo.
echo:%fg`white%4. ^|Menu%`r%
echo:%fg`white%5. ^|Fechar%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 cls & goto Crop
if %errorlevel% EQU 50 cls & goto Converter
::if %errorlevel% EQU 51 cls & goto Fill
if %errorlevel% EQU 52 cls & goto Menu
if %errorlevel% EQU 53 cls & exit 0
if %errorlevel% EQU 27 cls & goto Menu
cls & goto Convert

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██████   ██████  ██████                                                                                                                                  
::██      ██   ██ ██    ██ ██   ██                                                                                                                                 
::██      ██████  ██    ██ ██████                                                                                                                                  
::██      ██   ██ ██    ██ ██                                                                                                                                      
:: ██████ ██   ██  ██████  ██                                                                                                                                      
::                               

:Crop
title Crop — Menu — %version_% & color 07
echo:%fg`green%Crop%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%crop_config%" NEQ "" if "%crop_match%" EQU "" (echo:%fg`yellow%TAMANHO DO CORTE ^(TAMANHO^)%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TAMANHO DO CORTE ^(TAMANHO^)%`r%%fg`white%:%`r% %fg`green%%crop_match%%`r%)
if "%crop_config%" NEQ "" if "%crop_limit%" EQU "" (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%crop_limit%%`r%)
if "%crop_config%" NEQ "" if "%crop_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_config%" NEQ "" if "%crop_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%crop_config%" NEQ "" if "%crop_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_config%" NEQ "" if "%crop_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%crop_config%" NEQ "" if "%crop_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%crop_config%" NEQ "" if "%crop_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%crop_config%" NEQ "" if "%crop_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
if "%crop_config%" NEQ "" if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%crop_config%" NEQ "" if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
if "%crop_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
if "%crop_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER%`r%
IF "%Developer_ON%" EQU "1" echo:%imagemagick_path%
if "%crop_error1%" EQU "1" echo. & echo:%fg`white%O diretório %crop_dir% não foi encontrado.%`r% & set "crop_error1=0"
if "%crop_error2%" EQU "1" echo. & echo:%fg`white%Você cancelou.%`r% & set "crop_error2=0"
if "%crop_error3%" EQU "1" echo. & echo:%fg`white%Não foi encontrado nada em '%crop_dir%'%`r% & set "crop_error3=0"
if "%crop_error4%" EQU "1" echo. & echo:%fg`white%A exata pasta 'C:\' não pode ser selecionada.%`r% & set "crop_error4=0"
if "%crop_error5%" EQU "1" echo. & echo:%fg`red%Aviso%fg`white%: Você precisa configurar a '%fg`yellow%Extensão de saída%fg`white%'.%`r% & echo:       %fg`white%Na aba '%fg`yellow%Menu%fg`white%' vai nas '%fg`yellow%Configuração%`r%' e depois em '%fg`yellow%Extensão de saída%fg`white%'.%`r% & set "crop_error5=0" & IF "%shotout_config_menu%" NEQ "" echo:       %fg`white%Caso queira ir direto para lá aperte '%fg`yellow%%shotout_config_menu%%fg`white%'.

call :Clean_var
echo.
if "%crop_config%" EQU "1" (
    echo:%fg`white%1. ^|Iniciar%`r%
    echo:%fg`white%2. ^|Configuração%`r%
    echo:%fg`white%P. ^|Direto ^(PERSONALIZADO^)%`r%
    echo.
    echo:%fg`white%3. ^|Voltar%`r%
    echo:%fg`white%4. ^|Menu%`r%
    echo:%fg`white%5. ^|Fechar%`r%
    "%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
    goto crop_select1
) else (
    echo:%fg`white%1. ^|Configuração%`r%
    echo:%fg`white%P. ^|Direto ^(PERSONALIZADO^)%`r%
    echo.
    echo:%fg`white%2. ^|Voltar%`r%
    echo:%fg`white%3. ^|Menu%`r%
    echo:%fg`white%4. ^|Fechar%`r%
    "%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
    goto crop_select2
)

:crop_select1
call :Shotout_page
if %errorlevel% EQU 49 cls & goto Crop_start
if %errorlevel% EQU 50 cls & goto Crop_Config
if %errorlevel% EQU 51 cls & goto Convert
if %errorlevel% EQU 52 cls & goto Menu
if %errorlevel% EQU 53 cls & exit 0
IF %errorlevel% EQU 112 cls & goto Crop_Custom
IF %errorlevel% EQU 80 cls & goto Crop_Custom
if %errorlevel% EQU 27 cls & goto Convert
cls & goto Crop

:crop_select2
call :Shotout_page
if %errorlevel% EQU 49 cls & goto Crop_Config
if %errorlevel% EQU 50 cls & goto Menu
if %errorlevel% EQU 51 cls & goto Menu
if %errorlevel% EQU 52 cls & exit 0
IF %errorlevel% EQU 112 cls & goto Crop_Custom
IF %errorlevel% EQU 80 cls & goto Crop_Custom
if %errorlevel% EQU 27 cls & goto Convert
cls & goto Crop

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ██    ██ ███████ ██████  ████████ ███████ ██████                                                                                      
::██      ██    ██ ████   ██ ██    ██ ██      ██   ██    ██    ██      ██   ██                                                                                     
::██      ██    ██ ██ ██  ██ ██    ██ █████   ██████     ██    █████   ██████                                                                                      
::██      ██    ██ ██  ██ ██  ██  ██  ██      ██   ██    ██    ██      ██   ██                                                                                     
:: ██████  ██████  ██   ████   ████   ███████ ██   ██    ██    ███████ ██   ██                                                                                     
::                                                                                   

:Converter
title Converter — Menu — %version_% & color 07
echo:%fg`green%Converter%`r%
echo:%fg`magenta-%Somente direto%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%converter_config%" NEQ "" if "%converter_default_in%" EQU "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE ENTRADA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE ENTRADA%`r%%fg`white%:%`r% %fg`green%%converter_default_in%%`r%)
if "%converter_config%" NEQ "" if "%converter_default_out%" EQU "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%converter_default_out%%`r%)
if "%converter_config%" NEQ "" if "%converter_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%converter_config%" NEQ "" if "%converter_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%converter_config%" NEQ "" if "%converter_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%converter_config%" NEQ "" if "%converter_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%converter_config%" NEQ "" if "%converter_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%converter_config%" NEQ "" if "%converter_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%converter_config%" NEQ "" if "%converter_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
if "%converter_config%" NEQ "" if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
if "%converter_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
if "%converter_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER%`r%
if "%Developer_ON%" EQU "1" echo:%imagemagick_path%
if "%converter_error2%" EQU "1" echo. & echo:%fg`white%Você cancelou.%`r% & set "converter_error2=0"
if "%converter_error3%" EQU "1" echo. & echo:%fg`white%A exata pasta 'C:\' não pode ser selecionada.%`r% & set "converter_error3=0"
if "%converter_error4%" EQU "1" echo. & echo:%fg`white%A pasta que você selecinou não tem um arquivo com a extensão de entrada ^(%converter_temp1_in%^)%`r%. & set "converter_error4=0"
if "%converter_error6%" EQU "1" echo. & echo:%fg`yellow%Você não pode definir o %`r%%fg`cyan%'QUALQUER UM'%`r% %fg`yellow%na SAÍDA.%`r% & set "converter_error6=0"
if "%converter_error7%" EQU "1" echo. & echo:%fg`white%Você precisa definir uma extensão de '%fg`yellow%entrada%fg`white%' e '%fg`yellow%saída%fg`white%'.%`r% & set "converter_error7=0"
if "%converter_error8%" EQU "1" echo. & echo:%fg`white%Você precisa definir uma extensão de '%fg`yellow%entrada%fg`white%'.%`r% & set "converter_error8=0"
if "%converter_error9%" EQU "1" echo. & echo:%fg`white%Você precisa definir uma extensão de '%fg`yellow%saída%fg`white%'.%`r% & set "converter_error9=0"
call :Clean_var
echo.
if "%converter_config%" NEQ "" echo:%fg`white%1. ^|Iniciar%`r%
echo:%fg`white%2. ^|Configuração%`r%
echo.
echo:%fg`white%3. ^|Voltar%`r%
echo:%fg`white%4. ^|Menu%`r%
echo:%fg`white%5. ^|Fechar%`r%
echo. 
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if "%converter_config%" NEQ "" if %errorlevel% EQU 49 cls & goto Converter_start
if %errorlevel% EQU 50 cls & goto Converter_Config
if %errorlevel% EQU 51 cls & goto Convert
if %errorlevel% EQU 52 cls & goto Menu
if %errorlevel% EQU 53 cls & exit 0
if %errorlevel% EQU 27 cls & goto Convert
if %errorlevel% EQU 127 cls & goto ConfigPATHEXT
if %errorlevel% EQU 9 cls & goto ConfigPATHEXT
cls & goto Converter

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███  ██████  ███    ██ ████████  █████   ██████  ███████                                                                                                  
::████  ████ ██    ██ ████   ██    ██    ██   ██ ██       ██                                                                                                       
::██ ████ ██ ██    ██ ██ ██  ██    ██    ███████ ██   ███ █████                                                                                                    
::██  ██  ██ ██    ██ ██  ██ ██    ██    ██   ██ ██    ██ ██                                                                                                       
::██      ██  ██████  ██   ████    ██    ██   ██  ██████  ███████                                                                                                  
::                                                                             

:Montage
title Montage — Menu — %version_% & color 07
echo:%fg`green%Montage%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%montage_config%" NEQ "" if "%montage_match%" EQU "" (echo:%fg`yellow%QUANTIDADE DA JUNÇÃO%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%QUANTIDADE DA JUNÇÃO%`r%%fg`white%:%`r% %fg`green%%montage_match%%`r%)
if "%montage_config%" NEQ "" if "%montage_limit%" EQU "" (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%montage_limit%%`r%)
if "%montage_config%" NEQ "" if "%montage_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_config%" NEQ "" if "%montage_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%montage_config%" NEQ "" if "%montage_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_config%" NEQ "" if "%montage_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%montage_config%" NEQ "" if "%montage_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%montage_config%" NEQ "" if "%montage_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%montage_config%" NEQ "" if "%montage_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
if "%montage_config%" NEQ "" if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%montage_config%" NEQ "" if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
if "%montage_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
if "%montage_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER %fg`white%^(%fg`yellow%A OPÇÃO %fg`white%'%fg`green%Escolher%fg`white%' %fg`yellow%É SOMENTE NO %fg`green%MODO JANELA%fg`white%^)%`r%
IF "%Developer_ON%" EQU "1" echo:%imagemagick_path%
if "%montage_error1%" EQU "1" echo. & echo:%fg`white%Você cancelou.%`r% & set "montage_error1=0"
if "%montage_error2%" EQU "1" echo. & echo:%fg`white%O diretório %montage_dir% não foi encontrado.%`r% & set "montage_error2=0"
if "%montage_error3%" EQU "1" echo. & echo:%fg`white%Não foi encontrado nada em '%montage_dir%'%`r% & set "montage_error3=0"
if "%montage_error4%" EQU "1" echo. & echo:%fg`white%A exata pasta '%fg`yellow%C:\%fg`white%' não pode ser selecionada.%`r% & set "montage_error4=0"
if "%montage_error5%" EQU "1" echo. & echo:%fg`red%Aviso%fg`white%: Você precisa configurar a '%fg`yellow%Extensão de saída%fg`white%'.%`r% & echo:       %fg`white%Na aba '%fg`yellow%Menu%fg`white%' vai nas '%fg`yellow%Configuração%`r%' e depois em '%fg`yellow%Extensão de saída%fg`white%'.%`r% & set "crop_error5=0" & IF "%shotout_config_menu%" NEQ "" echo:       %fg`white%Caso queira ir direto para lá aperte '%fg`yellow%%shotout_config_menu%%fg`white%'.
call :Clean_var
echo.
if "%montage_config%" NEQ "" echo:%fg`white%1. ^|Iniciar%`r%
echo:%fg`white%2. ^|Configuração%`r%
if "%montage_config%" NEQ "" echo:%fg`white%P. ^|Direto ^(PERSONALIZADO^)%`r%
if "%montage_config%" NEQ "" echo:%fg`white%E. ^|Escolher ^(PERSONALIZADO^)%`r%
echo.
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if "%montage_config%" NEQ "" if %errorlevel% EQU 49 cls & goto Montage_start
if %errorlevel% EQU 50 cls & goto Montage_Config
if %errorlevel% EQU 51 cls & goto Menu
if %errorlevel% EQU 52 cls & exit 0
if "%montage_config%" NEQ "" IF %errorlevel% EQU 112 cls & goto Montage_Custom
if "%montage_config%" NEQ "" IF %errorlevel% EQU 80 cls & goto Montage_Custom
if "%montage_config%" NEQ "" if %errorlevel% EQU 101 cls & goto Montage_select_files
if "%montage_config%" NEQ "" if %errorlevel% EQU 69 cls & goto Montage_select_files
if %errorlevel% EQU 27 cls & goto Menu
cls & goto Montage

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████  ███████ ███    ██  █████  ███    ███ ███████         ███    ███ ███████ ███    ██ ██    ██                                                               
::██   ██ ██      ████   ██ ██   ██ ████  ████ ██              ████  ████ ██      ████   ██ ██    ██                                                               
::██████  █████   ██ ██  ██ ███████ ██ ████ ██ █████           ██ ████ ██ █████   ██ ██  ██ ██    ██                                                               
::██   ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██              ██  ██  ██ ██      ██  ██ ██ ██    ██                                                               
::██   ██ ███████ ██   ████ ██   ██ ██      ██ ███████ ███████ ██      ██ ███████ ██   ████  ██████                                                                
::                                                                                                         

:Rename_menu
title Rename — Menu — %version_% 
echo:%fg`green%Rename%`r%
echo:%fg`magenta-%Somente direto
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%rename_config%" NEQ "" if "%rename_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
if "%rename_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
if "%rename_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER%`r%
:: if "%rename_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
:: if "%rename_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER%`r%
if "%rename_error1%" EQU "1" echo. & echo:%fg`white%Você cancelou.%`r% & set "rename_error1=0"
if "%rename_error2%" EQU "1" echo. & echo:%fg`white%O diretório '%rename_dir%' não foi encontrado%`r% & set "rename_error2=0"
if "%rename_error3%" EQU "1" echo. & echo:%fg`white%Não foi encontrado nada em '%rename_dir%'%`r% & set "rename_error3=0"
if "%rename_error4%" EQU "1" echo. & echo:%fg`white%A exata pasta 'C:\' não pode ser selecionada.%`r% & set "rename_error4=0"
call :Clean_var
echo.
if "%rename_config%" NEQ "" echo:%fg`white%1. ^|Iniciar%`r%
echo:%fg`white%3. ^|Configuração%`r%
echo.
echo:%fg`white%4. ^|Menu%`r%
echo:%fg`white%5. ^|Fechar%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if "%rename_config%" NEQ "" if %errorlevel% EQU 49 cls & goto Rename_start3
if %errorlevel% EQU 50 cls & goto Rename_Config
if %errorlevel% EQU 51 cls & goto Menu
if %errorlevel% EQU 52 cls & exit 0
if %errorlevel% EQU 27 cls & goto Menu
cls & goto Rename_menu

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██ ██      ██                                                                                                                                            
::██      ██ ██      ██                                                                                                                                            
::█████   ██ ██      ██                                                                                                                                            
::██      ██ ██      ██                                                                                                                                            
::██      ██ ███████ ███████                                                                                                                                       
::                                        

:Fill
title Fill — Menu — %version_% 
echo:%fg`green%Fill%`r%
echo:%fg`magenta-%Somente direto ^(Escolha de arquivos^)%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%. & echo.)
if "%fill_config%" NEQ "" if "%fill_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
if "%fill_config%" NEQ "" if "%select_folder_type%" EQU "1" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`green%JANELA%`r%
if "%fill_config%" NEQ "" if "%select_folder_type%" EQU "2" echo:%fg`yellow%MODO DE SELECIONAR PASTA%`r%%fg`white%:%`r% %fg`yellow-%ESCREVER%`r%
if "%Fill%" EQU "1" echo. & echo:%fg`red%Você cancelou.%`r% & set "rename_error1=0"
call :Clean_var
echo.
if "%fill_config%" NEQ "" echo:%fg`white%1. ^|Continuar%`r%
echo:%fg`white%2. ^|Configuração%`r%
echo.
echo:%fg`white%3. ^|Voltar%`r%
echo:%fg`white%4. ^|Menu%`r%
echo:%fg`white%5. ^|Fechar%`r%
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if "%fill_config%" NEQ "" if %errorlevel% EQU 49 cls & goto Fill_start
if %errorlevel% EQU 50 cls & goto Fill_Config
if %errorlevel% EQU 51 cls & goto Convert
if %errorlevel% EQU 52 cls & goto Menu
if %errorlevel% EQU 53 cls & exit 0
if %errorlevel% EQU 27 cls & goto Convert
cls & goto Fill

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██████   ██████  ██████      ██████  ██████  ███    ██ ███████ ██  ██████                                                                                
::██      ██   ██ ██    ██ ██   ██    ██      ██    ██ ████   ██ ██      ██ ██                                                                                     
::██      ██████  ██    ██ ██████     ██      ██    ██ ██ ██  ██ █████   ██ ██   ███                                                                               
::██      ██   ██ ██    ██ ██         ██      ██    ██ ██  ██ ██ ██      ██ ██    ██                                                                               
:: ██████ ██   ██  ██████  ██ ███████  ██████  ██████  ██   ████ ██      ██  ██████                                                                                
::                                                                                           

:Crop_Config
title Crop — Configuração
if "%crop_backup%" EQU "" set "crop_backup=1"
if "%crop_rename%" EQU "" set "crop_rename=1"
echo:%fg`blue%CROP — CONFIGURAÇÃO%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
if "%crop_match%" EQU "" (echo:%fg`yellow%TAMANHO DO CORTE ^(ALTURA^)%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TAMANHO DO CORTE ^(TAMANHO^)%`r%%fg`white%:%`r% %fg`green%%crop_match%%`r%)
echo.
if "%crop_limit%" EQU "" (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%crop_limit%%`r%)
echo.
if "%crop_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
::if "%crop_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%crop_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%crop_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%crop_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%crop_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
echo.
echo:%fg`white%1. ^|Corte%`r%
echo:%fg`white%2. ^|Limite%`r%
echo:%fg`white%3. ^|Backup%`r%
echo:%fg`white-%4. ^|Renomear%`r%
echo.
echo:%fg`white%5. ^|Voltar%`r%
echo:%fg`white%6. ^|Menu%`r%
echo:%fg`white%7. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 cls & set "config_number_name=Crop" & set "config_number=0" & call :Config_Number
if %errorlevel% EQU 50 cls & set "config_number_name=Limite1" & set "config_number=0" & call :Config_Number
if %errorlevel% EQU 51 if %crop_backup%==0 set "crop_backup=1" & call :save1
if %errorlevel% EQU 51 if %crop_backup%==1 set "crop_backup=0" & call :save1
::if %errorlevel% EQU 52 if %crop_rename%==0 set "crop_rename=1" & call :save1
::if %errorlevel% EQU 52 if %crop_rename%==1 set "crop_rename=2" & call :save1
::if %errorlevel% EQU 52 if %crop_rename%==2 set "crop_rename=0" & call :save1
if %errorlevel% EQU 53 cls & goto Crop
if %errorlevel% EQU 54 cls & goto Menu
if %errorlevel% EQU 55 cls & exit 0
if %errorlevel% EQU 27 cls & goto Crop
cls & goto Crop_Config

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████  ███████ ███    ██  █████  ███    ███ ███████          ██████  ██████  ███    ██ ███████ ██  ██████                                                       
::██   ██ ██      ████   ██ ██   ██ ████  ████ ██              ██      ██    ██ ████   ██ ██      ██ ██                                                            
::██████  █████   ██ ██  ██ ███████ ██ ████ ██ █████           ██      ██    ██ ██ ██  ██ █████   ██ ██   ███                                                      
::██   ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██              ██      ██    ██ ██  ██ ██ ██      ██ ██    ██                                                      
::██   ██ ███████ ██   ████ ██   ██ ██      ██ ███████ ███████  ██████  ██████  ██   ████ ██      ██  ██████                                                       
::                                                                                                                 

:Rename_Config
title Rename - configuração
if "%rename_backup%" EQU "" set "rename_backup=1"
echo:%fg`blue%RENAME — CONFIGURAÇÃO%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
if "%rename_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
echo:%fg`white%1. ^|Backup%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 if %rename_backup%==1 set "rename_backup=0" & call :save1
if %errorlevel% EQU 49 if %rename_backup%==0 set "rename_backup=1" & call :save1
if %errorlevel% EQU 50 cls & goto Rename_menu
if %errorlevel% EQU 51 cls & goto Menu
if %errorlevel% EQU 52 cls & exit 0 
if %errorlevel% EQU 27 cls & goto Rename_menu
cls & goto Rename_Config

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███  ██████  ███    ██ ████████  █████   ██████  ███████          ██████  ██████  ███    ██ ███████ ██  ██████                                            
::████  ████ ██    ██ ████   ██    ██    ██   ██ ██       ██              ██      ██    ██ ████   ██ ██      ██ ██                                                 
::██ ████ ██ ██    ██ ██ ██  ██    ██    ███████ ██   ███ █████           ██      ██    ██ ██ ██  ██ █████   ██ ██   ███                                           
::██  ██  ██ ██    ██ ██  ██ ██    ██    ██   ██ ██    ██ ██              ██      ██    ██ ██  ██ ██ ██      ██ ██    ██                                           
::██      ██  ██████  ██   ████    ██    ██   ██  ██████  ███████ ███████  ██████  ██████  ██   ████ ██      ██  ██████                                            
::                                                                                                                              

:Montage_Config
title Montage — Configuração
if "%montage_backup%" EQU "" set "montage_backup=1"
echo:%fg`blue%MONTAGE — CONFIGURAÇÃO%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
if "%montage_match%" EQU "" (echo:%fg`yellow%TAMANHO DA JUNÇÃO ^(QUANTIDADE^)%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%QUANTIDADE DA JUNÇÃO%`r%%fg`white%:%`r% %fg`green%%montage_match%%`r%)
echo.
if "%montage_limit%" EQU "" (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%montage_limit%%`r%)
echo.
if "%montage_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
::if "%montage_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
:;if "%montage_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%montage_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%montage_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%montage_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
echo.
echo:%fg`white%1. ^|Juntar%`r%
echo:%fg`white%2. ^|Limite%`r%
echo:%fg`white%3. ^|Backup%`r%
echo:%fg`white-%4. ^|Renomear%`r%
echo.
echo:%fg`white%4. ^|Voltar%`r%
echo:%fg`white%5. ^|Menu%`r%
echo:%fg`white%6. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 cls & set "config_number_name=Montage" & set "config_number=0" & call :Config_Number
if %errorlevel% EQU 50 cls & set "config_number_name=Limite2" & set "config_number=0" & call :Config_Number
if %errorlevel% EQU 51 if %montage_backup%==1 set "montage_backup=0" & call :save1
if %errorlevel% EQU 51 if %montage_backup%==0 set "montage_backup=1" & call :save1
::if %errorlevel% EQU 52 if %montage_rename%==0 set "montage_rename=1" & call :save1
::if %errorlevel% EQU 52 if %montage_rename%==1 set "montage_rename=2" & call :save1
::if %errorlevel% EQU 52 if %montage_rename%==2 set "montage_rename=0" & call :save1
if %errorlevel% EQU 53 cls & goto Montage
if %errorlevel% EQU 54 cls & goto Menu
if %errorlevel% EQU 55 cls & exit 0
if %errorlevel% EQU 27 cls & goto Montage
cls & goto Montage_Config

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ██    ██ ███████ ██████  ████████ ███████ ██████           ██████  ██████  ███    ██ ███████ ██  ██████                               
::██      ██    ██ ████   ██ ██    ██ ██      ██   ██    ██    ██      ██   ██         ██      ██    ██ ████   ██ ██      ██ ██                                    
::██      ██    ██ ██ ██  ██ ██    ██ █████   ██████     ██    █████   ██████          ██      ██    ██ ██ ██  ██ █████   ██ ██   ███                              
::██      ██    ██ ██  ██ ██  ██  ██  ██      ██   ██    ██    ██      ██   ██         ██      ██    ██ ██  ██ ██ ██      ██ ██    ██                              
:: ██████  ██████  ██   ████   ████   ███████ ██   ██    ██    ███████ ██   ██ ███████  ██████  ██████  ██   ████ ██      ██  ██████                               
::                                                                                                                                         

:Converter_Config
title Converter — Configuração
if "%converter_backup%" EQU "" set "converter_backup=1"
echo:%fg`blue%CONVERTER — CONFIGURAÇÃO%`r%
if "%Developer_ON%" EQU "1" (echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
if "%converter_default_in%" EQU "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE ENTRADA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE ENTRADA%`r%%fg`white%:%`r% %fg`green%%converter_default_in%%`r%)
echo.
if "%converter_default_out%" EQU "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%converter_default_out%%`r%)
echo.
if "%converter_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
::if "%converter_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%converter_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%converter_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%converter_rename%" EQU "0" (echo:%fg`white-%RENOMEAR: DESATIVADO%`r%)
if "%converter_rename%" EQU "1" (echo:%fg`white-%RENOMEAR: ATIVADO%`r%)
if "%converter_rename%" EQU "2" (echo:%fg`white-%RENOMEAR: SIMPLES%`r%)
echo.
if "%converter_error1%" EQU "1" echo:%fg`yellow%Você não pode colocar as mesmas extensões na ENTRADA e SAÍDA.%`r% & set "converter_error1=0"
if "%converter_error6%" EQU "1" echo:%fg`yellow%Você não pode definir o %`r%%fg`cyan%'QUALQUER UM'%`r% %fg`yellow%na SAÍDA.%`r% & set "converter_error6=0"
echo.
echo:%fg`white%1. ^|Entrada%`r%
echo:%fg`white%2. ^|Saída%`r%
echo:%fg`white%3. ^|Backup%`r%
echo:%fg`white-%4. ^|Renomear%`r%
echo.
echo:%fg`white%4. ^|Voltar%`r%
echo:%fg`white%5. ^|Menu%`r%
echo:%fg`white%6. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 cls & set "config_extension_in=Converter" & call :Extension_Select
if %errorlevel% EQU 50 cls & set "config_extension_out=Converter" & call :Extension_Select
if %errorlevel% EQU 51 if %converter_backup%==1 set "converter_backup=0" & call :save1
if %errorlevel% EQU 51 if %converter_backup%==0 set "converter_backup=1" & call :save1
::if %errorlevel% EQU 52 if %converter_rename%==0 set "converter_rename=1" & call :save1
::if %errorlevel% EQU 52 if %converter_rename%==1 set "converter_rename=2" & call :save1
::if %errorlevel% EQU 52 if %converter_rename%==2 set "converter_rename=0" & call :save1
if %errorlevel% EQU 53 cls & goto Converter
if %errorlevel% EQU 54 cls & goto Menu
if %errorlevel% EQU 55 cls & exit 0
if %errorlevel% EQU 27 cls & goto Converter
cls & goto Converter_Config

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██ ██      ██               ██████  ██████  ███    ██ ███████ ██  ██████                                                                                 
::██      ██ ██      ██              ██      ██    ██ ████   ██ ██      ██ ██                                                                                      
::█████   ██ ██      ██              ██      ██    ██ ██ ██  ██ █████   ██ ██   ███                                                                                
::██      ██ ██      ██              ██      ██    ██ ██  ██ ██ ██      ██ ██    ██                                                                                
::██      ██ ███████ ███████ ███████  ██████  ██████  ██   ████ ██      ██  ██████                                                                                 
::                                                                                         

:Fill_Config
title Fill - configuração
if "%fill_backup%" EQU "" set "fill_backup=1"
echo:%fg`blue%FILL — CONFIGURAÇÃO%`r%
if "%Developer_ON%" EQU "1" (echo. & echo:%fg`white%Modo %fg`cyan-%Deve%fg`white% está %fg`green%ativo%fg`white%.)
echo.
if "%fill_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
echo:%fg`white%1. ^|Backup%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
call :Shotout_page
if %errorlevel% EQU 49 if %fill_backup%==1 set "fill_backup=0" & call :save1
if %errorlevel% EQU 49 if %fill_backup%==0 set "fill_backup=1" & call :save1
if %errorlevel% EQU 50 cls & goto Fill
if %errorlevel% EQU 51 cls & goto Menu
if %errorlevel% EQU 52 cls & exit 0
if %errorlevel% EQU 27 cls & goto Fill
cls & goto Fill_Config

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ███████ ██  ██████          ███    ██ ██    ██ ███    ███ ██████  ███████ ██████                                                      
::██      ██    ██ ████   ██ ██      ██ ██               ████   ██ ██    ██ ████  ████ ██   ██ ██      ██   ██                                                     
::██      ██    ██ ██ ██  ██ █████   ██ ██   ███         ██ ██  ██ ██    ██ ██ ████ ██ ██████  █████   ██████                                                      
::██      ██    ██ ██  ██ ██ ██      ██ ██    ██         ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██      ██   ██                                                     
:: ██████  ██████  ██   ████ ██      ██  ██████  ███████ ██   ████  ██████  ██      ██ ██████  ███████ ██   ██                                                     
::                                                                                                                      

:Config_Number
if %config_number% LEQ -1 set "config_convert_negative_number=1"
if %config_number% LEQ -1 set "config_number=0"
if "%config_number_name%" EQU "Crop" echo:%fg`yellow%DEFINIR O TAMANHO DO CORTE%`r%%fg`white%:%`r% %fg`green%%config_number%%`r%
if "%config_number_name%" EQU "Limite1" echo:%fg`yellow%DEFINIR O LIMITE%`r%%fg`white%:%`r% %fg`green%%config_number%%`r%
if "%config_number_name%" EQU "Montage" echo:%fg`yellow%DEFINIR A QUANTIDADE DE JUNTAR%`r%%fg`white%:%`r% %fg`green%%config_number%%`r%
if "%config_number_name%" EQU "Limite2" echo:%fg`yellow%DEFINIR O LIMITE%`r%%fg`white%:%`r% %fg`green%%config_number%%`r%

echo.
echo:%fg`white%A. ^|+1%`r%
echo:%fg`white%S. ^|+10%`r%
echo:%fg`white%D. ^|+100%`r%
echo:%fg`white%F. ^|+1000%`r%
echo.
echo:%fg`white%B. ^|0%`r%
echo.
echo:%fg`white%H. ^|-1%`r%
echo:%fg`white%J. ^|-10%`r%
echo:%fg`white%K. ^|-100%`r%
echo:%fg`white%L. ^|-1000%`r%
echo.
echo:%fg`white%U. ^|Salvar%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %ERRORLEVEL% EQU 97 cls & SET /a "config_number+=1" & goto Config_Number
if %ERRORLEVEL% EQU 115 cls & SET /a "config_number+=10" & goto Config_Number
if %ERRORLEVEL% EQU 100 cls & SET /a "config_number+=100" & goto Config_Number
if %ERRORLEVEL% EQU 102 cls & SET /a "config_number+=1000" & goto Config_Number
if %ERRORLEVEL% EQU 98 cls & SET "config_number=0" & goto Config_Number
if %ERRORLEVEL% EQU 104 cls & SET /a "config_number-=1" & goto Config_Number
if %ERRORLEVEL% EQU 106 cls & SET /a "config_number-=10" & goto Config_Number
if %ERRORLEVEL% EQU 107 cls & SET /a "config_number-=100" & goto Config_Number
if %ERRORLEVEL% EQU 108 cls & SET /a "config_number-=1000" & goto Config_Number

if %ERRORLEVEL% EQU 65 cls & SET /a "config_number+=1" & goto Config_Number
if %ERRORLEVEL% EQU 83 cls & SET /a "config_number+=10" & goto Config_Number
if %ERRORLEVEL% EQU 68 cls & SET /a "config_number+=100" & goto Config_Number
if %ERRORLEVEL% EQU 70 cls & SET /a "config_number+=1000" & goto Config_Number
if %ERRORLEVEL% EQU 66 cls & SET "config_number=0" & goto Config_Number
if %ERRORLEVEL% EQU 72 cls & SET /a "config_number-=1" & goto Config_Number
if %ERRORLEVEL% EQU 74 cls & SET /a "config_number-=10" & goto Config_Number
if %ERRORLEVEL% EQU 75 cls & SET /a "config_number-=100" & goto Config_Number
if %ERRORLEVEL% EQU 76 cls & SET /a "config_number-=1000" & goto Config_Number

if %ERRORLEVEL% EQU 27 cls & if "%config_number_name%" EQU "Crop" set "config_number_name=" & set "config_number=0" & goto Crop_Config
if %ERRORLEVEL% EQU 27 cls & if "%config_number_name%" EQU "Limite1" set "config_number_name=" & set "config_number=0" & goto Crop_Config
if %ERRORLEVEL% EQU 27 cls & if "%config_number_name%" EQU "Montage" set "config_number_name=" & set "config_number=0" & goto Montage_Config
if %ERRORLEVEL% EQU 27 cls & if "%config_number_name%" EQU "Limite2" set "config_number_name=" & set "config_number=0" & goto Montage_Config

if %ERRORLEVEL% EQU 117 cls & goto Config_Number1
if %ERRORLEVEL% EQU 85 cls & goto Config_Number1
if %ERRORLEVEL% EQU 13 cls & goto Config_Number1
cls & goto Config_Number

:Config_Number1
call :Check_config_number
if "%config_number_name%" EQU "Crop" set "crop_match=%config_number%"
if "%config_number_name%" EQU "Limite1" set "crop_limit=%config_number%"
if "%config_number_name%" EQU "Montage" set "montage_match=%config_number%"
if "%config_number_name%" EQU "Limite2" set "montage_limit=%config_number%"
set "config_number="
if "%config_number_name%" EQU "Crop" call :save1
if "%config_number_name%" EQU "Limite1" call :save1
if "%config_number_name%" EQU "Montage" call :save1
if "%config_number_name%" EQU "Limite2" call :save1
goto :eof

:Check_config_number
if "%config_number%" EQU "0" if "%config_number_name%" EQU "Crop" set "config_number=5000" & goto :eof
if "%config_number%" EQU "0" if "%config_number_name%" EQU "Limite1"  set "config_number=1000" & goto :eof
if "%config_number%" EQU "0" if "%config_number_name%" EQU "Montage" set "config_number=2" & goto :eof
if "%config_number%" EQU "1" if "%config_number_name%" EQU "Montage" set "config_number=2" & goto :eof
if "%config_number%" EQU "0" if "%config_number_name%" EQU "Limite2"  set "config_number=1000" & goto :eof
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██   ██ ████████ ███████ ███    ██ ███████ ██  ██████  ███    ██         ███████ ███████ ██      ███████  ██████ ████████                                
::██       ██ ██     ██    ██      ████   ██ ██      ██ ██    ██ ████   ██         ██      ██      ██      ██      ██         ██                                   
::█████     ███      ██    █████   ██ ██  ██ ███████ ██ ██    ██ ██ ██  ██         ███████ █████   ██      █████   ██         ██                                   
::██       ██ ██     ██    ██      ██  ██ ██      ██ ██ ██    ██ ██  ██ ██              ██ ██      ██      ██      ██         ██                                   
::███████ ██   ██    ██    ███████ ██   ████ ███████ ██  ██████  ██   ████ ███████ ███████ ███████ ███████ ███████  ██████    ██                                   
::                                                                                                                                         

:Extension_Select
title Escolhendo Extensão
set select_extens=0
:loop4
if "%config_extension_in%" EQU "Converter" echo:%fg`yellow%EXTENSÃO DE ENTRADA%`r%
if "%config_extension_out%" EQU "Converter" echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%
if "%config_extension_in%" EQU "Converter_Temp1" echo:%fg`yellow%EXTENSÃO DE ENTRADA%`r%
if "%config_extension_out%" EQU "Converter_Temp1" echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%
echo.
if %select_extens% EQU 0 (echo:%bg`green%%fg`blue%PNG%`r% & set "select_extens_value=1") else (echo:%bg`black-%%fg`white%PNG%`r%)
if %select_extens% EQU 1 (echo:%bg`green%%fg`blue%JPG%`r% & set "select_extens_value=2") else (echo:%bg`black-%%fg`white%JPG%`r%)
if %select_extens% EQU 2 (echo:%bg`green%%fg`blue%JPEG%`r% & set "select_extens_value=3") else (echo:%bg`black-%%fg`white%JPEG%`r%)
if %select_extens% EQU 3 (echo:%bg`green%%fg`blue%PSD%`r% & set "select_extens_value=4") else (echo:%bg`black-%%fg`white%PSD%`r%)
if %select_extens% EQU 4 (echo:%bg`green%%fg`blue%PSB%`r% & set "select_extens_value=5") else (echo:%bg`black-%%fg`white%PSB%`r%)
if %select_extens% EQU 5 (echo:%bg`green%%fg`blue%GIF%`r% & set "select_extens_value=6") else (echo:%bg`black-%%fg`white%GIF%`r%)
if %select_extens% EQU 6 (echo:%bg`green%%fg`blue%PDF%`r% & set "select_extens_value=7") else (echo:%bg`black-%%fg`white%PDF%`r%)
if %select_extens% EQU 7 (echo:%bg`green%%fg`blue%WEBP%`r% & set "select_extens_value=8") else (echo:%bg`black-%%fg`white%WEBP%`r%)
if %select_extens% EQU 8 (echo:%bg`green%%fg`blue%QUALQUER UM%`r% & set "select_extens_value=9") else (echo:%bg`black-%%fg`white%QUALQUER UM%`r%)
if %select_extens% EQU 9 (echo:%bg`green%%fg`blue%NENHUM%`r% & set "select_extens_value=10") else (echo:%bg`black-%%fg`white%NENHUM%`r%)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> CANCELAR%`r%
echo.
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_extens-=1
if %errorlevel% EQU -80 set /a select_extens+=1
if %select_extens% EQU -1 set select_extens=9
if %select_extens% EQU 10 set select_extens=0
if %errorlevel% EQU 13 cls & call :Verify_select_extens_value & call :Check_extens_value & call :clear_values1 & call :clear_values2 & color 07 & goto save1 & goto :eof
if %errorlevel% EQU 27 cls & call :clear_values2 & goto Converter_Config
cls & goto :loop4

:Verify_select_extens_value
if %select_extens_value% EQU 1 set select_extens_value_name=PNG
if %select_extens_value% EQU 2 set select_extens_value_name=JPG
if %select_extens_value% EQU 3 set select_extens_value_name=JPEG
if %select_extens_value% EQU 4 set select_extens_value_name=PSD
if %select_extens_value% EQU 5 set select_extens_value_name=PSB
if %select_extens_value% EQU 6 set select_extens_value_name=GIF
if %select_extens_value% EQU 7 set select_extens_value_name=PDF
if %select_extens_value% EQU 8 set select_extens_value_name=WEBP
if %select_extens_value% EQU 9 set "select_extens_value_name=QUALQUER UM"
if %select_extens_value% EQU 10 set select_extens_value_name=
if %select_extens_value% EQU 10 goto :eof

if "%converter_default_in%" EQU "%select_extens_value_name%" cls & set "converter_error1=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter_Config
if "%converter_default_out%" EQU "%select_extens_value_name%" cls & set "converter_error1=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter_Config

if "%config_extension_out%" EQU "Converter" if "%select_extens_value_name%" EQU "QUALQUER UM" cls & set "converter_error6=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter_Config
if "%config_extension_out%" EQU "Converter_Temp1" if "%select_extens_value_name%" EQU "QUALQUER UM" cls & set "converter_error6=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter
goto :eof


:Check_extens_value
if "%config_extension_in%" EQU "Converter" set converter_default_in=%select_extens_value_name%
if "%config_extension_out%" EQU "Converter" set converter_default_out=%select_extens_value_name%

if "%config_extension_out%" EQU "Converter" if "%select_extens_value_name%" EQU "QUALQUER UM" cls & set "converter_error6=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter_Config
if "%config_extension_out%" EQU "Converter_Temp1" if "%select_extens_value_name%" EQU "QUALQUER UM" cls & set "converter_error6=1" & call :clear_values1 & call :clear_values2 & color 07 & goto Converter
goto :eof

:clear_values1
set select_extens_value=
set select_extens_value_name=
set select_extens=
goto :eof

:clear_values2
set config_extension_in=
set config_extension_out=
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████  ███████ ███    ██  █████  ███    ███ ███████ ███████                                                                                                     
::██   ██ ██      ████   ██ ██   ██ ████  ████ ██      ██                                                                                                          
::██████  █████   ██ ██  ██ ███████ ██ ████ ██ █████   ███████                                                                                                     
::██   ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██           ██                                                                                                     
::██   ██ ███████ ██   ████ ██   ██ ██      ██ ███████ ███████                                                                                                     
::                                                                        

:rename1
for %%i in ("0-*.*") do (set fname=%%i) & call :rename
goto :eof
:rename
::Cuts off 1st four chars, then appends prefix
ren "%fname%" "%fname:~2%"
goto :eof
exit 0



:rename2
set "number_ren_verify=5000"
set "number_ren_set=5001"
for /l %%N in ( 5000 -1 0 ) do (
    if exist "%%N.*" ren "%%N.*" "!number_ren_set!.*" >nul
    set /a number_ren_set-=1
)
call :rename4
goto :eof



:rename3
set/a fileNum = 1

for %%f in (*.*) do (
  ren %%~nf%%~xf !fileNum!%%~xf
  set/a fileNum += 1
)
goto :eof



:rename4
ren 1.* 01.*
ren 2.* 02.*
ren 3.* 03.*
ren 4.* 04.*
ren 5.* 05.*
ren 6.* 06.*
ren 7.* 07.*
ren 8.* 08.*
ren 9.* 09.*
goto :eof



:rename5
if exist ".\*.PNG" ren *.PNG *.png
if exist ".\*.JPG" ren *.JPG *.jpg
if exist ".\*.JPEG" ren *.JPEG *.jpeg
if exist ".\*.PSD" ren *.PSD *.psd
if exist ".\*.PSB" ren *.PSB *.psb
if exist ".\*.GIF" ren *.GIF *.gif
if exist ".\*.PDF" ren *.PDF *.pdf
if exist ".\*.WEBP" ren *.WEBP *.webp
goto :eof



:rename6
set Count=1
FOR /F "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\temp_file"') do (
    set Temp_file_!Count!="%%A"
    set /a "Count+=1"
)
FOR /L %%A IN ( 1 1 5000 ) DO (
    IF "!Temp_file_%%A!" NEQ "" ren "!Temp_file_%%A!" %%A.*
)
call :rename4
FOR /L %%A IN ( 1 1 5000 ) DO (
    IF "!Temp_file_%%A!" NEQ "" set Temp_file_%%A=
)
del "%TEMP%\_MENU---TEMP---FILES\temp_file" >nul
set Count=
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██   ██ ███████  ██████ ██   ██         ██████  ██████  ██ ██    ██ ███████                                                                              
::██      ██   ██ ██      ██      ██  ██          ██   ██ ██   ██ ██ ██    ██ ██                                                                                   
::██      ███████ █████   ██      █████           ██   ██ ██████  ██ ██    ██ █████                                                                                
::██      ██   ██ ██      ██      ██  ██          ██   ██ ██   ██ ██  ██  ██  ██                                                                                   
:: ██████ ██   ██ ███████  ██████ ██   ██ ███████ ██████  ██   ██ ██   ████   ███████                                                                              
::                                                                                          

:check_drive
set "start_folder_value=%start_folder%"
set "start_folder_value=%start_folder_value:~0,2%"
set "check_drive=%check_drive:~0,2%"
if "%check_drive%" EQU "a:" set "check_drive=A:"
if "%check_drive%" EQU "b:" set "check_drive=B:"
if "%check_drive%" EQU "c:" set "check_drive=C:"
if "%check_drive%" EQU "d:" set "check_drive=D:"
if "%check_drive%" EQU "e:" set "check_drive=E:"
if "%check_drive%" EQU "f:" set "check_drive=F:"
if "%check_drive%" EQU "g:" set "check_drive=G:"
if "%check_drive%" EQU "h:" set "check_drive=H:"
if "%check_drive%" EQU "i:" set "check_drive=I:"
if "%check_drive%" EQU "j:" set "check_drive=J:"
if "%check_drive%" EQU "k:" set "check_drive=K:"
if "%check_drive%" EQU "l:" set "check_drive=L:"
if "%check_drive%" EQU "m:" set "check_drive=M:"
if "%check_drive%" EQU "n:" set "check_drive=N:"
if "%check_drive%" EQU "o:" set "check_drive=O:"
if "%check_drive%" EQU "p:" set "check_drive=P:"
if "%check_drive%" EQU "q:" set "check_drive=Q:"
if "%check_drive%" EQU "r:" set "check_drive=R:"
if "%check_drive%" EQU "s:" set "check_drive=S:"
if "%check_drive%" EQU "t:" set "check_drive=T:"
if "%check_drive%" EQU "u:" set "check_drive=U:"
if "%check_drive%" EQU "v:" set "check_drive=V:"
if "%check_drive%" EQU "w:" set "check_drive=W:"
if "%check_drive%" EQU "x:" set "check_drive=X:"
if "%check_drive%" EQU "y:" set "check_drive=Y:"
if "%check_drive%" EQU "z:" set "check_drive=Z:"
if not "%start_folder_value%" EQU "%check_drive%" (set "check_value_set=1") else (set "check_value_set=0")
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████  █████  ██    ██ ███████  ██                                                                                                                             
::██      ██   ██ ██    ██ ██      ███                                                                                                                             
::███████ ███████ ██    ██ █████    ██                                                                                                                             
::     ██ ██   ██  ██  ██  ██       ██                                                                                                                             
::███████ ██   ██   ████   ███████  ██                                                                                                                             
::                                                

:save1
title Salvando Configurações
if "%crop_match%" NEQ "" set "crop_config=1"
if "%crop_limit%" NEQ "" set "crop_config=1"
if "%crop_backup%" NEQ "" set "crop_config=1"
if "%crop_rename%" NEQ "" set "crop_config=1"
if "%montage_match%" NEQ "" set "montage_config=1"
if "%montage_limit%" NEQ "" set "montage_config=1"
if "%montage_backup%" NEQ "" set "montage_config=1"
if "%montage_rename%" NEQ "" set "montage_config=1"
if "%rename_backup%" NEQ "" set "rename_config=1"
if "%converter_default_in%" NEQ "" set "converter_config=1"
if "%converter_default_out%" NEQ "" set "converter_config=1"
if "%converter_backup%" NEQ "" set "converter_config=1"
if "%fill_backup%" NEQ "" set "fill_config=1"

if "%quality_depth%" EQU "" set "quality_depth_set_value=+depth"

if "%quality_depth%" EQU "1" set "quality_depth_set_value=-depth 8"
if "%quality_depth%" EQU "2" set "quality_depth_set_value=-depth 16"
if "%quality_depth%" EQU "3" set "quality_depth_set_value=-depth 24"
if "%quality_depth%" EQU "4" set "quality_depth_set_value=-depth 32"
if "%quality_depth%" EQU "5" set "quality_depth_set_value=-depth 64"
if "%quality_depth%" EQU "6" set "quality_depth_set_value=+depth"

if "%quality_set_value%" EQU "" (set "quality_set_value_set=-quality 100") else (set "quality_set_value_set=-quality %quality_set_value%")

if "%extens_output_UP%" EQU "JPG" set quality_png_compression_strategy_set_value=
if "%extens_output_UP%" EQU "JPG" set quality_png_compression_level_set_value=
if "%extens_output_UP%" EQU "JPG"  set quality_png_compression_filter_set_value=

if "%extens_output_UP%" EQU "PNG" (if "%quality_png_compression_strategy%" EQU "" (set "quality_png_compression_strategy_set_value=-define png:compression-strategy=0") else (set "quality_png_compression_strategy_set_value=-define png:compression-strategy=%quality_png_compression_strategy%"))
if "%extens_output_UP%" EQU "PNG" (if "%quality_png_compression_level%" EQU "" (set "quality_png_compression_level_set_value=-define png:compression-level=9") else (set "quality_png_compression_level_set_value=-define png:compression-level=%quality_png_compression_level%"))
if "%extens_output_UP%" EQU "PNG" (if "%quality_png_compression_filter%" EQU "" (set "quality_png_compression_filter_set_value=-define png:compression-filter=0") else (set "quality_png_compression_filter_set_value=-define png:compression-filter=%quality_png_compression_filter%"))

if "%high_quality%" EQU "1" SET "QUALITY_SET= %quality_depth_set_value% %quality_png_compression_filter_set_value% %quality_png_compression_level_set_value% %quality_png_compression_strategy_set_value% %quality_set_value_set%"
if "%high_quality%" EQU "0" SET QUALITY_SET=

(
echo://////////////CROP////////////////////////////
echo:crop_config=%crop_config%
echo:crop_match=%crop_match%
echo:crop_limit=%crop_limit%
echo:crop_backup=%crop_backup%
echo:crop_rename=%crop_rename%
echo://////////////CROP////////////////////////////
echo.
echo.
echo.
echo://////////////MONTAGE/////////////////////////
echo:montage_config=%montage_config%
echo:montage_match=%montage_match%
echo:montage_limit=%montage_limit%
echo:montage_backup=%montage_backup%
echo:montage_rename=%montage_rename%
echo://////////////MONTAGE/////////////////////////
echo.
echo.
echo.
echo://////////////RENAME//////////////////////////
echo:rename_config=%rename_config%
echo:rename_backup=%rename_backup%
echo://////////////RENAME//////////////////////////
echo.
echo.
echo.
echo://////////////CONVERTER///////////////////////
echo:converter_config=%converter_config%
echo:converter_default_in=%converter_default_in%
echo:converter_default_out=%converter_default_out%
echo:converter_backup=%converter_backup%
echo:converter_rename=%converter_rename%
echo://////////////RENAME//////////////////////////
echo.
echo.
echo.
echo://////////////FILL////////////////////////////
echo:fill_config=%fill_config%
echo:fill_backup=%fill_backup%
echo://////////////FILL////////////////////////////
echo.
echo.
echo.
echo://////////////EXTENSÃO////////////////////////
echo:extens_output_UP=%extens_output_UP%
echo:extens_output_DOWN=%extens_output_DOWN%
echo://////////////EXTENSÃO////////////////////////
echo.
echo.
echo.
echo://////////////CONFIGURAÇÕES///////////////////
echo:error_veriffy=%error_veriffy%
echo:Att_verify=%Att_verify%
echo:Developer_ON=%Developer_ON%
echo:high_quality=%high_quality%
echo:QUALITY_SET=%QUALITY_SET%
echo:select_folder_type=%select_folder_type%
echo://////////////CONFIGURAÇÕES///////////////////
echo.
echo.
echo.
echo://////////////////ATALHOS/////////////////////
echo:shotout_crop_iniciar=%shotout_crop_iniciar%
echo:shotout_crop_iniciar_set=%shotout_crop_iniciar_set%
echo:shotout_crop_config=%shotout_crop_config%
echo:shotout_crop_config_set=%shotout_crop_config_set%
echo:shotout_crop_direto=%shotout_crop_direto%
echo:shotout_crop_direto_set=%shotout_crop_direto_set%
echo:shotout_convert_iniciar=%shotout_convert_iniciar%
echo:shotout_convert_iniciar_set=%shotout_convert_iniciar_set%
echo:shotout_convert_config=%shotout_convert_config%
echo:shotout_convert_config_set=%shotout_convert_config_set%
echo:shotout_montage_iniciar=%shotout_montage_iniciar%
echo:shotout_montage_iniciar_set=%shotout_montage_iniciar_set%
echo:shotout_montage_config=%shotout_montage_config%
echo:shotout_montage_config_set=%shotout_montage_config_set%
echo:shotout_montage_direto=%shotout_montage_direto%
echo:shotout_montage_direto_set=%shotout_montage_direto_set%
echo:shotout_montage_escolher=%shotout_montage_escolher%
echo:shotout_montage_escolher_set=%shotout_montage_escolher_set%
echo:shotout_reneme_iniciar=%shotout_reneme_iniciar%
echo:shotout_reneme_iniciar_set=%shotout_reneme_iniciar_set%
echo:shotout_reneme_config=%shotout_reneme_config%
echo:shotout_reneme_config_set=%shotout_reneme_config_set%
echo:shotout_config_menu=%shotout_config_menu%
echo:shotout_config_menu_set=%shotout_config_menu_set%
echo:shotout_config_menu_shotout=%shotout_config_menu_shotout%
echo:shotout_config_menu_shotout_set=%shotout_config_menu_shotout_set%
echo:shotout_config_menu_deve=%shotout_config_menu_deve%
echo:shotout_config_menu_deve_set=%shotout_config_menu_deve_set%
echo:shotout_code_call_1=%shotout_code_call_1%
echo:shotout_code_call_2=%shotout_code_call_2%
echo:shotout_code_call_3=%shotout_code_call_3%
echo:shotout_code_call_4=%shotout_code_call_4%
echo:shotout_code_call_5=%shotout_code_call_5%
echo:shotout_code_call_6=%shotout_code_call_6%
echo:shotout_code_call_7=%shotout_code_call_7%
echo:shotout_code_call_8=%shotout_code_call_8%
echo:shotout_code_call_9=%shotout_code_call_9%
echo:shotout_code_call_10=%shotout_code_call_10%
echo:shotout_code_call_11=%shotout_code_call_11%
echo:shotout_code_call_12=%shotout_code_call_12%
echo:shotout_code_call_13=%shotout_code_call_13%
echo:shotout_code_call_14=%shotout_code_call_14%
echo://////////////////ATALHOS/////////////////////
)>"%HOMEDRIVE%%HOMEPATH%\start-config"
goto :eof
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██████   ██████  ██████     ███████ ████████  █████  ██████  ████████                                                                                    
::██      ██   ██ ██    ██ ██   ██    ██         ██    ██   ██ ██   ██    ██                                                                                       
::██      ██████  ██    ██ ██████     ███████    ██    ███████ ██████     ██                                                                                       
::██      ██   ██ ██    ██ ██              ██    ██    ██   ██ ██   ██    ██                                                                                       
:: ██████ ██   ██  ██████  ██ ███████ ███████    ██    ██   ██ ██   ██    ██                                                                                       
::                                                                                    

:Crop_start
title Crop - PAI
if "%extens_output_UP%" EQU "" cls & set "crop_error5=1" & goto Crop
echo:%fg`yellow%DIRETÓRIO ^(PAI^)%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Crop---dir"
if "%select_folder_type%" EQU "2" set /p "crop_dir="
if "%select_folder_type%" EQU "2" echo:%crop_dir%>"%TEMP%\_MENU---TEMP---FILES\Crop---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Crop---dir"') do set crop_dir=%%~G
del "%TEMP%\_MENU---TEMP---FILES\Crop---dir" >nul & cls
if "%crop_dir%" EQU "C:\" cls & call :Clean_var & set "crop_error4=1" & goto Crop
if "%crop_dir%" EQU "" cls & set "crop_error2=1" & goto Crop
if not exist "%crop_dir%" set "crop_error1=1" & goto Crop
echo:%fg`yellow%DIRETÓRIO%`r%%fg`white%:%`r% %fg`green%%crop_dir%%`r%
if "%crop_match%" EQU "0" cls & echo:%fg`white%Necessário definir o tamanho do corte maior que 0%`r% & goto Crop_Config
if "%crop_match%" EQU "" cls & echo:%fg`white%Necessário definir o tamanho do corte%`r% & goto Crop_Config
echo:%fg`yellow%TAMANHO DO CORTE%`r%%fg`white%:%`r% %fg`green%%crop_match%%`r%
if "%crop_limit%" EQU "0" cls & echo:%fg`white%Necessário definir o limite maior que 0%`r% & goto Crop_Config
if "%crop_limit%" EQU "" cls & echo:%fg`white%Necessário definir o limite%`r% & goto Crop_Config
echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%crop_limit%%`r%
if "%crop_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%crop_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
cd /d "%crop_dir%" & DIR /D /A:D
echo.
echo:%fg`white%1. ^|Iniciar%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
choice /c 1234 /n /t 60 /d 1
if %errorlevel% EQU 1 cls
if %errorlevel% EQU 2 cls & cd /d "%start_folder%" & goto Crop
if %errorlevel% EQU 3 cls & cd /d "%start_folder%" & goto Menu
if %errorlevel% EQU 4 cls & exit 0

set "num_count=0"
title Crop - Verificando - %num_count%
:loop2
if exist ".\%num_count%" (
    title Crop - Processando - %num_count%
    cd /d ".\%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\%num_count% *" (
    title Crop - Processando - %num_count%
    cd /d ".\%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\* - c%num_count% *" (
    title Crop - Processando - %num_count%
    cd /d ".\* - c%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\* - c%num_count%" (
    title Crop - Processando - %num_count%
    cd /d ".\* - c%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\0%num_count%" (
    title Crop - Processando - %num_count%
    cd /d ".\0%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\0%num_count% *" (
    title Crop - Processando - %num_count%
    cd /d ".\0%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\* - c0%num_count% *" (
    title Crop - Processando - %num_count%
    cd /d ".\* - c0%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\* - c0%num_count%" (
    title Crop - Processando - %num_count%
    cd /d ".\* - c0%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if exist ".\Ch. %num_count% - Capítulo %num_count%" (
    title Crop - Processando - %num_count%
    cd /d ".\Ch. %num_count% - Capítulo %num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%crop_backup%" EQU "0" rd temp /s /q
    cd ..
    cls & title Crop - Verificando - %num_count%
)
if "%num_count%" EQU "%crop_limit%" (cls & cd /d "%start_folder%" & call :Clean_var & goto Crop) else (cls & title Crop - Verificando - %num_count% & set /a "num_count+=1" & goto loop2)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██████   ██████  ██████      ██████ ██    ██ ███████ ████████  ██████  ███    ███                                                                        
::██      ██   ██ ██    ██ ██   ██    ██      ██    ██ ██         ██    ██    ██ ████  ████                                                                        
::██      ██████  ██    ██ ██████     ██      ██    ██ ███████    ██    ██    ██ ██ ████ ██                                                                        
::██      ██   ██ ██    ██ ██         ██      ██    ██      ██    ██    ██    ██ ██  ██  ██                                                                        
:: ██████ ██   ██  ██████  ██ ███████  ██████  ██████  ███████    ██     ██████  ██      ██                                                                        
::                                                                                              

:Crop_Custom
title Crop - DIRETO
if "%extens_output_UP%" EQU "" cls & set "crop_error5=1" & goto Crop
echo:%fg`yellow%DIRETÓRIO ^(DIRETO^)%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Crop_Custom---dir"
if "%select_folder_type%" EQU "2" set /p "crop_dir="
if "%select_folder_type%" EQU "2" echo:%crop_dir%>"%TEMP%\_MENU---TEMP---FILES\Crop_Custom---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Crop_Custom---dir"') do set crop_dir=%%~G
del "%TEMP%\_MENU---TEMP---FILES\Crop_Custom---dir" >nul & cls
if "%crop_dir%" EQU "C:\" cls & call :Clean_var & set "crop_error4=1" & goto Crop
if "%crop_dir%" EQU "" cls & set "crop_error2=1" & goto Crop
if not exist "%crop_dir%\*.jpg" set "cp_tmn=1"
if "%cp_tmn%" EQU "1" if not exist "%crop_dir%\*.png" cls & set "crop_error3=1" & set "cp_tmn=0" & goto Crop
echo:%fg`yellow%DIRETÓRIO%`r%%fg`white%:%`r% %fg`green%%crop_dir%%`r%
if "%crop_match%" EQU "0" cls & echo:%fg`white%Necessário definir o tamanho do corte maior que 0%`r% & goto Crop_Config
if "%crop_match%" EQU "" cls & echo:%fg`white%Necessário definir o tamanho do corte%`r% & goto Crop_Config
echo:%fg`yellow%TAMANHO DO CORTE%`r%%fg`white%:%`r% %fg`green%%crop_match%%`r%
if "%crop_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%crop_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%crop_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
cd /d "%crop_dir%"
if not exist "*.*" (set "crop_error3=1") else (goto convert_skip1)
if "%crop_error3%" EQU "1" cls & cd /d "%start_folder%" & goto Crop
:convert_skip1
DIR /D /A:-D
echo.
echo:%fg`white%1. ^|Iniciar%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
choice /c 1234 /n /t 60 /d 1
if %errorlevel% EQU 1 cls
if %errorlevel% EQU 2 cls & cd /d "%start_folder%" & goto Crop
if %errorlevel% EQU 3 cls & cd /d "%start_folder%" & goto Menu
if %errorlevel% EQU 4 cls & exit 0
mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1 & magick convert ".\temp\*.*"%QUALITY_SET% -crop 32000x%crop_match% "0.%extens_output_DOWN%"
"%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
cls & call :MensagemType2 & call :rename6
if "%crop_backup%" EQU "1" attrib -h temp & call :Backup_check
if "%crop_backup%" EQU "0" rd temp /s /q
cls & cd /d "%start_folder%" & call :Clean_var & goto Crop
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████  ███████ ███    ██  █████  ███    ███ ███████         ███████ ████████  █████  ██████  ████████ ██████                                                    
::██   ██ ██      ████   ██ ██   ██ ████  ████ ██              ██         ██    ██   ██ ██   ██    ██         ██                                                   
::██████  █████   ██ ██  ██ ███████ ██ ████ ██ █████           ███████    ██    ███████ ██████     ██     █████                                                    
::██   ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██                   ██    ██    ██   ██ ██   ██    ██    ██                                                        
::██   ██ ███████ ██   ████ ██   ██ ██      ██ ███████ ███████ ███████    ██    ██   ██ ██   ██    ██    ███████                                                   
::                                                                                                                            

:Rename_start2
echo:%fg`yellow%ESCOLHA AS IMAGENS%`r%
call "%TEMP%\_MENU---TEMP---FILES\FileDialog.cmd"
cls & move /y "%TEMP%\_MENU---TEMP---FILES\save_folderpathfiles" "%TEMP%\_MENU---TEMP---FILES\Rename_Selects---Files"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Rename_Selects---Files"') do set rename_dir=%%G
if "%rename_dir%" EQU "" set "rename_error1=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Rename_Selects---Files" & cls & goto Rename_menu
set "Count=1"
FOR /f "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\Rename_Selects---Files"') do (
    set Reneme!Count!="%%A"
    set /a "Count+=1"
)
del "%TEMP%\_MENU---TEMP---FILES\Rename_Selects---Files" >nul & cls
set Count=
for %%I in (%Reneme1%) do set "otu2=%%~dpI"
if "%rename_backup%" EQU "1" mkdir "%otu2%temp" && copy "%otu2%*.*" "%otu2%temp" & attrib +h temp
FOR /L %%G IN (1 1 1000) DO (
    REN !Reneme%%G! "__%%G.*" >nul & cls
)
FOR /L %%G IN (1 1 1000) DO (
    REN "!otu2!__%%G.*" "%%G.*" >nul & cls
)
call :MensagemType2
cd /d "%otu2%" & call :Rename4
if "%rename_backup%" EQU "1" attrib -h temp & call :Backup_check
cls & cd /d "%start_folder%" & call :Clean_var3 & goto Rename_menu
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████  ███████ ███    ██  █████  ███    ███ ███████         ███████ ████████  █████  ██████  ████████ ██████  
::██   ██ ██      ████   ██ ██   ██ ████  ████ ██              ██         ██    ██   ██ ██   ██    ██         ██ 
::██████  █████   ██ ██  ██ ███████ ██ ████ ██ █████           ███████    ██    ███████ ██████     ██     █████  
::██   ██ ██      ██  ██ ██ ██   ██ ██  ██  ██ ██                   ██    ██    ██   ██ ██   ██    ██         ██ 
::██   ██ ███████ ██   ████ ██   ██ ██      ██ ███████ ███████ ███████    ██    ██   ██ ██   ██    ██    ██████  
::                                                                                                              

:Rename_start3
echo:%fg`yellow%ESCOLHA AS IMAGENS%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Rename---dir"
if "%select_folder_type%" EQU "2" set /p "rename_dir="
if "%select_folder_type%" EQU "2" echo:%rename_dir%>"%TEMP%\_MENU---TEMP---FILES\Rename---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Rename---dir"') do set rename_dir=%%G
if "%rename_dir%" EQU "" set "rename_error1=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Rename---dir" & cls & goto Rename_menu
if "%rename_dir%" EQU "C:\" set "rename_error4=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Rename---dir" & cls & goto Rename_menu
if not exist "%rename_dir%\*.*" set "rename_error3=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Rename---dir" & cls & goto Rename_menu
if not exist "%rename_dir%" cls & set "rename_error2=1" & del "%TEMP%\_MENU---TEMP---FILES\Rename---dir" & cls & goto Rename_menu
cd /d "%rename_dir%"
"%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\Rename---dir"
set "Count=1"
FOR /f "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\Rename---dir"') do (
    set Reneme!Count!="%%A"
    set /a "Count+=1"
)
del "%TEMP%\_MENU---TEMP---FILES\Rename---dir" >nul & cls
set Count=
if "%rename_backup%" EQU "1" mkdir temp & copy ".\*.*" ".\temp" & attrib +h temp
call :MensagemType1
FOR /L %%I IN (1 1 5000) DO (
    if "!Reneme%%I!" NEQ "" ren "!Reneme%%I!.*" %%I.* >nul
)
cls & call :MensagemType2 & call :rename4
if "%rename_backup%" EQU "1" attrib -h temp & call :Backup_check
cls & cd /d "%start_folder%" & call :Clean_var3 & goto Rename_menu

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███  ██████  ███    ██ ████████  █████   ██████  ███████         ███████ ████████  █████  ██████  ████████                                                
::████  ████ ██    ██ ████   ██    ██    ██   ██ ██       ██              ██         ██    ██   ██ ██   ██    ██                                                   
::██ ████ ██ ██    ██ ██ ██  ██    ██    ███████ ██   ███ █████           ███████    ██    ███████ ██████     ██                                                   
::██  ██  ██ ██    ██ ██  ██ ██    ██    ██   ██ ██    ██ ██                   ██    ██    ██   ██ ██   ██    ██                                                   
::██      ██  ██████  ██   ████    ██    ██   ██  ██████  ███████ ███████ ███████    ██    ██   ██ ██   ██    ██                                                   
::                                                                                                                       

:Montage_start
title Montage - PAI
if "%extens_output_UP%" EQU "" cls & set "montage_error5=1" & goto Montage
echo:%fg`yellow%DIRETÓRIO ^(PAI^)%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Montage---dir"
if "%select_folder_type%" EQU "2" set /p "montage_dir="
if "%select_folder_type%" EQU "2" echo:%montage_dir%>"%TEMP%\_MENU---TEMP---FILES\Montage---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Montage---dir"') do set montage_dir=%%~G
del "%TEMP%\_MENU---TEMP---FILES\Montage---dir" >nul & cls
if "%montage_dir%" EQU "C:\" cls & call :Clean_var & set "montage_error4=1" & goto Montage
if "%montage_dir%" EQU "" cls & set "montage_error1=1" & goto Montage
if not exist "%montage_dir%" set "montage_error2=1" & goto Montage
echo:%fg`yellow%DIRETÓRIO%`r%%fg`white%:%`r% %fg`green%%montage_dir%%`r%
if "%montage_match%" EQU "0" cls & echo:%fg`white%Necessário definir o tamanho do corte maior que 0%`r% & goto Montage_Config
if "%montage_match%" EQU "" cls & echo:%fg`white%Necessário definir o tamanho do corte%`r% & goto Montage_Config
echo:%fg`yellow%QUANTIDADE QUE VAI JUNTAR%`r%%fg`white%:%`r% %fg`green%%montage_match%%`r%
if "%montage_limit%" EQU "0" cls & echo:%fg`white%Necessário definir o limite maior que 0%`r% & goto Montage_Config
if "%montage_limit%" EQU "" cls & echo:%fg`white%Necessário definir o limite%`r% & goto Montage_Config
echo:%fg`yellow%LIMITE%`r%%fg`white%:%`r% %fg`green%%montage_limit%%`r%
if "%montage_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%montage_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
cd /d "%montage_dir%" & DIR /D /A:D
echo.
echo:%fg`white%1. ^|Iniciar%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
choice /c 1234 /n /t 60 /d 1
if %errorlevel% EQU 1 cls
if %errorlevel% EQU 2 cls & cd /d "%start_folder%" & goto Montage
if %errorlevel% EQU 3 cls & cd /d "%start_folder%" & goto Menu
if %errorlevel% EQU 4 cls & exit 0

set "num_count=0"
title Montage - Verificando - %num_count%
:loop3
if exist ".\%num_count%" (
    title Montage - Processando - %num_count%
    cd /d ".\%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
if exist ".\%num_count% *" (
    title Montage - Processando - %num_count%
    cd /d ".\%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
title Montage - Verificando - %num_count%
if exist ".\* - c%num_count% *" (
    title Montage - Processando - %num_count%
    cd /d ".\* - c%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
title Montage - Verificando - %num_count%
if exist ".\* - c%num_count%" (
    title Montage - Processando - %num_count%
    cd /d ".\* - c%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
if exist ".\0%num_count%" (
    title Montage - Processando - %num_count%
    cd /d ".\0%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
if exist ".\0%num_count% *" (
    title Montage - Processando - %num_count%
    cd /d ".\0%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
title Montage - Verificando - %num_count%
if exist ".\* - c0%num_count% *" (
    title Montage - Processando - %num_count%
    cd /d ".\* - c0%num_count% *" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
title Montage - Verificando - %num_count%
if exist ".\* - c0%num_count%" (
    title Montage - Processando - %num_count%
    cd /d ".\* - c0%num_count%" & mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
    magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
    "%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
    cls & call :MensagemType2 & call :rename6
    if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
    if "%montage_backup%" EQU "0" rd temp /s /q
    cd ..
    title Montage - Verificando - %num_count%
)
if "%num_count%" EQU "%montage_limit%" (cls & cd /d "%start_folder%" & call :Clean_var & goto Montage) else (cls & title Montage - Verificando - %num_count% & set /a "num_count+=1" & goto loop3)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███  ██████  ███    ██ ████████  █████   ██████  ███████          ██████ ██    ██ ███████ ████████  ██████  ███    ███                                    
::████  ████ ██    ██ ████   ██    ██    ██   ██ ██       ██              ██      ██    ██ ██         ██    ██    ██ ████  ████                                    
::██ ████ ██ ██    ██ ██ ██  ██    ██    ███████ ██   ███ █████           ██      ██    ██ ███████    ██    ██    ██ ██ ████ ██                                    
::██  ██  ██ ██    ██ ██  ██ ██    ██    ██   ██ ██    ██ ██              ██      ██    ██      ██    ██    ██    ██ ██  ██  ██                                    
::██      ██  ██████  ██   ████    ██    ██   ██  ██████  ███████ ███████  ██████  ██████  ███████    ██     ██████  ██      ██                                    
::                                                                                                                                     

:Montage_Custom
title Montage - DIRETO
if "%extens_output_UP%" EQU "" cls & set "montage_error5=1" & goto Montage
echo:%fg`yellow%DIRETÓRIO ^(DIRETO^)%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Montage_Custom---dir"
if "%select_folder_type%" EQU "2" set /p "montage_dir="
if "%select_folder_type%" EQU "2" echo:%montage_dir%>"%TEMP%\_MENU---TEMP---FILES\Montage_Custom---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Montage_Custom---dir"') do set montage_dir=%%~G
del "%TEMP%\_MENU---TEMP---FILES\Montage_Custom---dir" >nul & cls
if "%montage_dir%" EQU "C:\" cls & call :Clean_var & set "montage_error4=1" & goto Montage
if "%montage_dir%" EQU "" cls & set "montage_error1=1" & goto Montage
echo:%fg`yellow%DIRETÓRIO%`r%%fg`white%:%`r% %fg`green%%montage_dir%%`r%
if "%montage_match%" EQU "0" cls & echo:%fg`white%Necessário definir o tamanho do corte maior que 0%`r% & goto Montage_Config
if "%montage_match%" EQU "" cls & echo:%fg`white%Necessário definir o tamanho do corte%`r% & goto Montage_Config
echo:%fg`yellow%QUANTIDADE QUE VAI JUNTAR%`r%%fg`white%:%`r% %fg`green%%montage_match%%`r%
if "%montage_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%montage_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%montage_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
cd /d "%montage_dir%"
if not exist "*.jpg" (set "montage_error3=1") else (goto montage_skip1)
if not exist "*.png" (set "montage_error3=1") else (set "montage_error3=0" & goto montage_skip1)
if "%montage_error3%" EQU "1" cls & cd /d "%start_folder%" & goto Montage
:montage_skip1
DIR /D /A:-D
echo.
echo:%fg`white%1. ^|Iniciar%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
choice /c 1234 /n /t 60 /d 1
if %errorlevel% EQU 1 cls
if %errorlevel% EQU 2 cls & cd /d "%start_folder%" & goto Montage
if %errorlevel% EQU 3 cls & cd /d "%start_folder%" & goto Menu
if %errorlevel% EQU 4 cls & exit 0
mkdir temp & move ".\*.*" ".\temp" >nul & attrib +h temp & del ".\temp\.nomedia" >nul & cls & call :MensagemType1
magick montage ".\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "0.%extens_output_DOWN%"
"%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
cls & call :MensagemType2 & call :rename6
if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
if "%montage_backup%" EQU "0" rd temp /s /q
cls & cd /d "%start_folder%" & call :Clean_var & goto Montage
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███    ███  ██████  ███    ██ ████████  █████   ██████  ███████         ███████ ███████ ██      ███████  ██████ ████████      ███████ ██ ██      ███████ ███████ 
::████  ████ ██    ██ ████   ██    ██    ██   ██ ██       ██              ██      ██      ██      ██      ██         ██         ██      ██ ██      ██      ██      
::██ ████ ██ ██    ██ ██ ██  ██    ██    ███████ ██   ███ █████           ███████ █████   ██      █████   ██         ██         █████   ██ ██      █████   ███████ 
::██  ██  ██ ██    ██ ██  ██ ██    ██    ██   ██ ██    ██ ██                   ██ ██      ██      ██      ██         ██         ██      ██ ██      ██           ██ 
::██      ██  ██████  ██   ████    ██    ██   ██  ██████  ███████ ███████ ███████ ███████ ███████ ███████  ██████    ██ ███████ ██      ██ ███████ ███████ ███████ 
::                                                                                                                                                                 

:Montage_select_files
title Montage - ESCOLHAS
if "%extens_output_UP%" EQU "" cls & set "montage_error5=1" & goto Montage
echo:%fg`yellow%ESCOLHAS AS IMAGENS%`r%
call "%TEMP%\_MENU---TEMP---FILES\FileDialog.cmd"
cls & move /y "%TEMP%\_MENU---TEMP---FILES\save_folderpathfiles" "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files"') do set montage_dir=%%G
if "%montage_dir%" EQU "" set "montage_error1=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files" & goto Montage
if "%montage_dir%" EQU "C:\" set "montage_error4=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files" & goto Montage
set "Count=1"
FOR /f "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files"') do (
    set Montaage!Count!="%%A"
    set Montaage__!Count!=%%~nA
    set /a "Count+=1"
)
set Count=
del "%TEMP%\_MENU---TEMP---FILES\Montage_Selects---Files" >nul & cls
if %Montaage2% EQU "" set "montage_erro6=1" & cls & goto Montage
for %%I in (%Montaage1%) do set "otu3=%%~dpI"
if "%montage_backup%" EQU "1" mkdir "%otu3%temp" && copy "%otu3%*.*" "%otu3%temp"
mkdir "%otu3%temp2" >nul & cls & attrib +h "%otu3%temp" & attrib +h "%otu3%temp2"
mkdir "%otu3%temp2\temp" >nul & cls
FOR /L %%I IN (1 1 1000) DO (
    if exist !Montaage%%I! copy !Montaage%%I! "!otu3!temp2\temp" >nul & cls
    if exist !Montaage%%I! del !Montaage%%I! >nul & cls
)
cd /d "%otu3%temp2"
call :MensagemType1 & magick montage "%otu3%temp2\temp\*.*" -tile 1x%montage_match% -geometry +0+0%QUALITY_SET% "%otu3%temp2\0.%extens_output_DOWN%"
timeout /t 3 >nul & cls
call :MensagemType2
set "Count=0"
if exist "%otu3%temp2\0.%extens_output_DOWN%" (
    ren "%otu3%temp2\0.%extens_output_DOWN%" %Montaage__1%.%extens_output_DOWN%
) else (
    for /L %%I in (1 %montage_match% 5000) do (
        if exist "!otu3!temp2\0-!Count!.!extens_output_DOWN!" ren "!otu3!temp2\0-!Count!.!extens_output_DOWN!" "!Montaage__%%I!.%extens_output_DOWN%" >nul
        set /a "Count+=1"
    )
)
set Count=
MOVE /Y * .\.. & cd .. & rd /s /q temp2
if "%montage_backup%" EQU "1" attrib -h temp & call :Backup_check
cls & cd /d "%start_folder%" & call :Clean_var4 & goto Montage
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████  ██████  ███    ██ ██    ██ ███████ ██████  ████████ ███████ ██████          ███████ ████████  █████  ██████  ████████                                   
::██      ██    ██ ████   ██ ██    ██ ██      ██   ██    ██    ██      ██   ██         ██         ██    ██   ██ ██   ██    ██                                      
::██      ██    ██ ██ ██  ██ ██    ██ █████   ██████     ██    █████   ██████          ███████    ██    ███████ ██████     ██                                      
::██      ██    ██ ██  ██ ██  ██  ██  ██      ██   ██    ██    ██      ██   ██              ██    ██    ██   ██ ██   ██    ██                                      
:: ██████  ██████  ██   ████   ████   ███████ ██   ██    ██    ███████ ██   ██ ███████ ███████    ██    ██   ██ ██   ██    ██                                      
::                                                                                                                                     

:Converter_start
title Converter — Definir pasta
if "%converter_default_out%" EQU "" if "%converter_default_in%" EQU "" cls & set "converter_error7=1" & goto Converter
if "%converter_default_in%" EQU "" if "%converter_default_out%" EQU "" cls & set "converter_error7=1" & goto Converter
if "%converter_default_out%" EQU "" cls & set "converter_error9=1" & goto Converter
if "%converter_default_in%" EQU "" cls & set "converter_error8=1" & goto Converter
echo:%fg`yellow%DIRETÓRIO ^(DIRETO^)%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Converter---dir"
if "%select_folder_type%" EQU "2" set /p "converter_dir="
if "%select_folder_type%" EQU "2" echo:%converter_dir%>"%TEMP%\_MENU---TEMP---FILES\Converter---dir"
FOR /f "tokens=1* delims=" %%G in ('type "%TEMP%\_MENU---TEMP---FILES\Converter---dir"') do set converter_dir=%%~G
del "%TEMP%\_MENU---TEMP---FILES\Converter---dir" > nul & cls
if "%converter_dir%" EQU "C:\" cls & call :Clean_var & set "converter_error3=1" & goto Converter
if "%converter_dir%" EQU "" set "converter_error2=1" & cls & goto Converter
title Converter — Confirmação
if "%converter_default_in%" EQU "QUALQUER UM" (if not exist "%converter_dir%\*.*" cls & set "converter_error4=1" & goto Converter) else (if not exist "%converter_dir%\*.%converter_default_in%" cls & set "converter_error4=1" & goto Converter)
cd /d "%converter_dir%"
dir /d
echo.
echo.
if "%converter_default_in%" NEQ "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE ENTRADA%`r%%fg`white%:%`r% %fg`green%%converter_default_in%%`r%)
if "%converter_default_out%" NEQ "" (echo:%fg`yellow%TIPO DE ARQUIVO PADRÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%converter_default_out%%`r%)
if "%converter_backup%" EQU "0" (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%BACKUP%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%converter_rename%" EQU "0" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%)
::if "%converter_rename%" EQU "1" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
::if "%converter_rename%" EQU "2" (echo:%fg`yellow%RENOMEAR%`r%%fg`white%:%`r% %fg`green%SIMPLES%`r%)
if "%extens_output_UP%" EQU "" (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`red%Não definido%`r%) else (echo:%fg`yellow%EXTENSÃO DE SAÍDA%`r%%fg`white%:%`r% %fg`green%%extens_output_UP%%`r%)
if "%high_quality%" EQU "0" (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`red%DESATIVADO%`r%) else (echo:%fg`yellow%QUALIDADE ALTA%`r%%fg`white%:%`r% %fg`green%ATIVADO%`r%)
echo.
echo:%fg`white%1. ^|Iniciar%`r%
echo.
echo:%fg`white%2. ^|Voltar%`r%
echo:%fg`white%3. ^|Menu%`r%
echo:%fg`white%4. ^|Fechar%`r%
echo.
CHOICE /C 1234 /N /T 60 /D 1
IF %ERRORLEVEL% EQU 1 cls
IF %ERRORLEVEL% EQU 2 cls & call :Clean_var & cd /d "%start_folder%" & goto Converter
IF %ERRORLEVEL% EQU 3 cls & call :Clean_var & cd /d "%start_folder%" & goto Menu
IF %ERRORLEVEL% EQU 4 cls & exit 0
title Converter — Iniciando
mkdir temp & move ".\*.*" ".\temp"
if "%converter_default_in%" EQU "QUALQUER UM" set "save_default_value_in=1" & set "converter_default_in=*"
if "%converter_default_in%" NEQ "" if "%converter_default_out%" NEQ "" magick convert ".\temp\*.%converter_default_in%"[0]%QUALITY_SET% "0.%converter_default_out%"
"%TEMP%\_MENU---TEMP---FILES\MiniGit\usr\bin\ls.exe" -v -1 *.* >"%TEMP%\_MENU---TEMP---FILES\temp_file"
cls & call :MensagemType2 & call :rename6 & call :rename5
if "%converter_backup%" EQU "1" call :Backup_check
if "%converter_backup%" EQU "0" rd temp /s /q
if "%converter_default_in%" EQU "1" set "save_default_value_in=0" & set "converter_default_in=QUALQUER UM"
cls & cd /d "%start_folder%" & call :Clean_var & goto Converter
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██ ██      ██              ███████ ████████  █████  ██████  ████████                                                                                     
::██      ██ ██      ██              ██         ██    ██   ██ ██   ██    ██                                                                                        
::█████   ██ ██      ██              ███████    ██    ███████ ██████     ██                                                                                        
::██      ██ ██      ██                   ██    ██    ██   ██ ██   ██    ██                                                                                        
::██      ██ ███████ ███████ ███████ ███████    ██    ██   ██ ██   ██    ██                                                                                        
::                                                                                        

:Fill_start
echo:%fg`yellow%ESCOLHAS AS IMAGENS%`r%
if "%select_folder_type%" EQU "1" "%TEMP%\_MENU---TEMP---FILES\FileDialog.exe" Folder ThisPC>"%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files"
if "%select_folder_type%" EQU "2" set /p "fill_dir="
if "%select_folder_type%" EQU "2" echo:%fill_dir%>"%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files"
move /y "%TEMP%\_MENU---TEMP---FILES\save_folderpathfiles" "%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files"
::"%TEMP%\_MENU---TEMP---FILES\wxFileDialog.exe" "Todos os arquivos (*.*)|*.*" c:\ Open -m >"%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files" & cls
if exist "%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files" for /f "delims== tokens=1,2" %%G in (%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files) do set "fill_dir=%%G"
if "%fill_dir%" EQU "" set "fill_error1=1" & cls & del "%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files" & goto Fill
set "Count=1"
FOR /f "tokens=1* delims=" %%A in ('type "%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files"') do (
    set Fill!Count!="%%A"
    set /a "Count+=1"
)
set Count=
for %%I in (%Fill1%) do set "otu1=%%~dpI"
robocopy "%otu1%" "%otu1%temp"
mkdir "%otu1%temp2" >nul & cls & cd /d "%otu1%"
FOR /L %%I IN (1 1 100) DO (
    copy !Fill%%I! "%otu1%temp2" >nul & cls
)
cd /d "%otu1%temp2" & dir /d
magick convert * -fill white -colorize 100 -set filename:f %%t %%[filename:f].png
MOVE /Y * .\.. & cd .. & rd temp2
del "%TEMP%\_MENU---TEMP---FILES\Fill_Selects---Files"
if "%fill_backup%" EQU "1" call :Backup_check
if "%fill_backup%" EQU "0" rd temp /s /q
cls & cd /d "%start_folder%" & call :Clean_var2 & goto Fill
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██████   █████   ██████ ██   ██ ██    ██ ██████      ██████ ██   ██ ███████  ██████ ██   ██                                                                      
::██   ██ ██   ██ ██      ██  ██  ██    ██ ██   ██    ██      ██   ██ ██      ██      ██  ██                                                                       
::██████  ███████ ██      █████   ██    ██ ██████     ██      ███████ █████   ██      █████                                                                        
::██   ██ ██   ██ ██      ██  ██  ██    ██ ██         ██      ██   ██ ██      ██      ██  ██                                                                       
::██████  ██   ██  ██████ ██   ██  ██████  ██ ███████  ██████ ██   ██ ███████  ██████ ██   ██                                                                      
::                                                                                                  

:Backup_check
if not exist Backup ren temp Backup && cls & goto :eof
if not exist Backup2 ren temp Backup2 && cls & goto :eof
set loop_backup=2
:loop_backup
if exist Backup%loop_backup% (
    set /a loop_backup+=1
    goto loop_backup
) else (
    ren temp Backup%loop_backup%
    set loop_backup=
    cls
    goto :eof
)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██      ███████  █████  ███    ██        ██    ██  █████  ██████                                                                                         
::██      ██      ██      ██   ██ ████   ██        ██    ██ ██   ██ ██   ██                                                                                        
::██      ██      █████   ███████ ██ ██  ██        ██    ██ ███████ ██████                                                                                         
::██      ██      ██      ██   ██ ██  ██ ██         ██  ██  ██   ██ ██   ██                                                                                        
:: ██████ ███████ ███████ ██   ██ ██   ████ ███████  ████   ██   ██ ██   ██                                                                                        
::                                                                                     

:Clean_var
set crop_dir=
set montage_dir=
set converter_dir=
set num_count=
goto :eof

:Clean_var2
set otu1=
set fill_dir=
IF %Fill1% NEQ "" set "Fill1=%Fill1:"=%" & FOR /L %%I IN (1 1 1000) DO set Fill%%I=
goto :eof

:Clean_var3
set otu2=
set rename_dir=
FOR /L %%I IN (1 1 5000) DO (
    if "!Reneme%%I!" NEQ "" set Reneme%%I=
)
goto :eof

:Clean_var4
set montage_dir=
set otu3=
IF %Montaage1% NEQ "" FOR /L %%I IN (1 1 1000) DO set Montaage%%I=
IF "%Montaage__1%" NEQ "" FOR /L %%I IN (1 1 1000) DO set Montaage__%%I=
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
:: ██████ ██   ██  █████  ███    ██  ██████  ███████         ██       ██████   ██████                                                                              
::██      ██   ██ ██   ██ ████   ██ ██       ██              ██      ██    ██ ██                                                                                   
::██      ███████ ███████ ██ ██  ██ ██   ███ █████           ██      ██    ██ ██   ███                                                                             
::██      ██   ██ ██   ██ ██  ██ ██ ██    ██ ██              ██      ██    ██ ██    ██                                                                             
:: ██████ ██   ██ ██   ██ ██   ████  ██████  ███████ ███████ ███████  ██████   ██████                                                                              
::                                                                                           

:Change_log
title Change Log - %version_%
set select_change_log_1=1
echo:%fg`white%Baixando... & chcp 437 >nul & powershell -command "$cli = New-Object System.Net.WebClient;$cli.DownloadFile('https://pt.textbin.net/raw/pz7avghjcc', '%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Change_Log.cmd')" & chcp 65001 >nul
cls & mode 120, 38 & call "%TEMP%\_MENU---TEMP---FILES\%version_%---TEMP---Change_Log.cmd"
del "%TEMP%\_MENU---TEMP---FILES\*---TEMP---Change_Log.cmd" >nul & mode 120, 35
cls & goto Menu

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███╗   ███╗███████╗███╗   ██╗███████╗ █████╗  ██████╗ ███████╗███╗   ██╗███████╗
::████╗ ████║██╔════╝████╗  ██║██╔════╝██╔══██╗██╔════╝ ██╔════╝████╗  ██║██╔════╝
::██╔████╔██║█████╗  ██╔██╗ ██║███████╗███████║██║  ███╗█████╗  ██╔██╗ ██║███████╗
::██║╚██╔╝██║██╔══╝  ██║╚██╗██║╚════██║██╔══██║██║   ██║██╔══╝  ██║╚██╗██║╚════██║
::██║ ╚═╝ ██║███████╗██║ ╚████║███████║██║  ██║╚██████╔╝███████╗██║ ╚████║███████║
::╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝
::

:MensagemType1
@ECHO:
@ECHO:██████╗ ██████╗  ██████╗  ██████╗███████╗███████╗███████╗ █████╗ ███╗   ██╗██████╗  ██████╗          
@ECHO:██╔══██╗██╔══██╗██╔═══██╗██╔════╝██╔════╝██╔════╝██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗         
@ECHO:██████╔╝██████╔╝██║   ██║██║     █████╗  ███████╗███████╗███████║██╔██╗ ██║██║  ██║██║   ██║         
@ECHO:██╔═══╝ ██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║╚════██║██╔══██║██║╚██╗██║██║  ██║██║   ██║         
@ECHO:██║     ██║  ██║╚██████╔╝╚██████╗███████╗███████║███████║██║  ██║██║ ╚████║██████╔╝╚██████╔╝██╗██╗██╗
@ECHO:╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ ╚═╝╚═╝╚═╝
@ECHO:
goto :eof

:MensagemType2
@ECHO:
@ECHO: ██████╗ ██████╗  ██████╗  █████╗ ███╗   ██╗██╗███████╗ █████╗ ███╗   ██╗██████╗  ██████╗          
@ECHO:██╔═══██╗██╔══██╗██╔════╝ ██╔══██╗████╗  ██║██║╚══███╔╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗         
@ECHO:██║   ██║██████╔╝██║  ███╗███████║██╔██╗ ██║██║  ███╔╝ ███████║██╔██╗ ██║██║  ██║██║   ██║         
@ECHO:██║   ██║██╔══██╗██║   ██║██╔══██║██║╚██╗██║██║ ███╔╝  ██╔══██║██║╚██╗██║██║  ██║██║   ██║         
@ECHO:╚██████╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚████║██║███████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝██╗██╗██╗
@ECHO: ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ ╚═╝╚═╝╚═╝
@ECHO:
goto :eof

:MensagemType3
@ECHO:
@ECHO:██╗   ██╗███████╗██████╗ ██╗███████╗██╗ ██████╗ █████╗ ███╗   ██╗██████╗  ██████╗          
@ECHO:██║   ██║██╔════╝██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗         
@ECHO:██║   ██║█████╗  ██████╔╝██║█████╗  ██║██║     ███████║██╔██╗ ██║██║  ██║██║   ██║         
@ECHO:╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝  ██║██║     ██╔══██║██║╚██╗██║██║  ██║██║   ██║         
@ECHO: ╚████╔╝ ███████╗██║  ██║██║██║     ██║╚██████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝██╗██╗██╗
@ECHO:  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ ╚═╝╚═╝╚═╝
@ECHO:
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::██       ██████   █████  ██████  ███████ ██   ██  ██████  ████████  ██████  ██    ██ ████████       ██████  ██████  ██████  ███████ 
::██      ██    ██ ██   ██ ██   ██ ██      ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██      ██    ██ ██   ██ ██      
::██      ██    ██ ███████ ██   ██ ███████ ███████ ██    ██    ██    ██    ██ ██    ██    ██         ██      ██    ██ ██   ██ █████   
::██      ██    ██ ██   ██ ██   ██      ██ ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██      ██    ██ ██   ██ ██      
::███████  ██████  ██   ██ ██████  ███████ ██   ██  ██████     ██     ██████   ██████     ██ ███████  ██████  ██████  ██████  ███████ 
::                                                                                                                                    
                                                                                                                                    
:loadShotout_code
set "shotout_code_1=CTRL + A"
set "shotout_code_2=CTRL + B"
set "shotout_code_3=CTRL + C"
set "shotout_code_4=CTRL + D"
set "shotout_code_5=CTRL + E"
set "shotout_code_6=CTRL + F"
set "shotout_code_7=CTRL + G"
set "shotout_code_8=CTRL + H"
set "shotout_code_9=CTRL + I"
set "shotout_code_10=CTRL + J"
set "shotout_code_11=CTRL + K"
set "shotout_code_12=CTRL + L"
set "shotout_code_13=CTRL + M"
set "shotout_code_14=CTRL + N"
set "shotout_code_15=CTRL + O"
set "shotout_code_16=CTRL + P"
set "shotout_code_17=CTRL + Q"
set "shotout_code_18=CTRL + R"
set "shotout_code_19=CTRL + S"
set "shotout_code_20=CTRL + T"
set "shotout_code_21=CTRL + U"
set "shotout_code_22=CTRL + V"
set "shotout_code_23=CTRL + W"
set "shotout_code_24=CTRL + X"
set "shotout_code_25=CTRL + Y"
set "shotout_code_26=CTRL + Z"
GOTO :EOF

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██   ██  ██████  ████████  ██████  ██    ██ ████████      ██████   █████   ██████  ███████ 
::██      ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██   ██ ██   ██ ██       ██      
::███████ ███████ ██    ██    ██    ██    ██ ██    ██    ██         ██████  ███████ ██   ███ █████   
::     ██ ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██      ██   ██ ██    ██ ██      
::███████ ██   ██  ██████     ██     ██████   ██████     ██ ███████ ██      ██   ██  ██████  ███████ 
::                                                                                                   

:Shotout_page
if "%Developer_ON%" EQU "1" (
    if "%crop_config%" NEQ "" if "%errorlevel%" EQU "%shotout_crop_iniciar_set%" cls & goto %shotout_code_call_1%
    if "%errorlevel%" EQU "%shotout_crop_config_set%" cls & goto %shotout_code_call_2%
    if "%crop_config%" NEQ "" if "%errorlevel%" EQU "%shotout_crop_direto_set%" cls & goto %shotout_code_call_3%
    if "%errorlevel%" EQU "%shotout_convert_iniciar_set%" cls & goto %shotout_code_call_4%
    if "%converter_config%" NEQ "" if "%errorlevel%" EQU "%shotout_convert_config_set%" cls & goto %shotout_code_call_5%
    if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_iniciar_set%" cls & goto %shotout_code_call_6%
    if "%errorlevel%" EQU "%shotout_montage_config_set%" cls & goto %shotout_code_call_7%
    if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_direto_set%" cls & goto %shotout_code_call_8%
    if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_escolher_set%" cls & goto %shotout_code_call_9%
    if "%rename_config%" NEQ "" if "%errorlevel%" EQU "%shotout_reneme_iniciar_set%" cls & goto %shotout_code_call_10%
) else (
    if "%imagemagick_path%" NEQ "" if "%crop_config%" NEQ "" if "%errorlevel%" EQU "%shotout_crop_iniciar_set%" cls & goto %shotout_code_call_1%
    if "%imagemagick_path%" NEQ "" if "%errorlevel%" EQU "%shotout_crop_config_set%" cls & goto %shotout_code_call_2%
    if "%imagemagick_path%" NEQ "" if "%crop_config%" NEQ "" if "%errorlevel%" EQU "%shotout_crop_direto_set%" cls & goto %shotout_code_call_3%
    if "%imagemagick_path%" NEQ "" if "%errorlevel%" EQU "%shotout_convert_iniciar_set%" cls & goto %shotout_code_call_4%
    if "%imagemagick_path%" NEQ "" if "%converter_config%" NEQ "" if "%errorlevel%" EQU "%shotout_convert_config_set%" cls & goto %shotout_code_call_5%
    if "%imagemagick_path%" NEQ "" if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_iniciar_set%" cls & goto %shotout_code_call_6%
    if "%imagemagick_path%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_config_set%" cls & goto %shotout_code_call_7%
    if "%imagemagick_path%" NEQ "" if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_direto_set%" cls & goto %shotout_code_call_8%
    if "%imagemagick_path%" NEQ "" if "%montage_config%" NEQ "" if "%errorlevel%" EQU "%shotout_montage_escolher_set%" cls & goto %shotout_code_call_9%
    if "%imagemagick_path%" NEQ "" if "%rename_config%" NEQ "" if "%errorlevel%" EQU "%shotout_reneme_iniciar_set%" cls & goto %shotout_code_call_10%
)
if "%errorlevel%" EQU "%shotout_reneme_config_set%" cls & goto %shotout_code_call_11%
if "%errorlevel%" EQU "%shotout_config_menu_set%" cls & goto %shotout_code_call_12%
if "%errorlevel%" EQU "%shotout_config_menu_shotout_set%" cls & goto %shotout_code_call_13%
if "%errorlevel%" EQU "%shotout_config_menu_deve_set%" cls & call :%shotout_code_call_14%
goto :eof

:Shotout_Menu_Deve
if %Developer_ON%==0 set "Developer_ON=1" & call :save1 & goto :eof
if %Developer_ON%==1 set "Developer_ON=0" & call :save1 & goto :eof
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
::███████ ██   ██  ██████  ████████  ██████  ██    ██ ████████   ████████ ███████ ██   ██ ████████ 
::██      ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██    ██       ██ ██     ██    
::███████ ███████ ██    ██    ██    ██    ██ ██    ██    ██         ██    █████     ███      ██    
::     ██ ██   ██ ██    ██    ██    ██    ██ ██    ██    ██         ██    ██       ██ ██     ██    
::███████ ██   ██  ██████     ██     ██████   ██████     ██ ███████ ██    ███████ ██   ██    ██    
::                                                                                                

:Shotout_Text
echo:       %fg`green%Atalhos%`r%
if "%shotout_error_1%" EQU "1" echo: & echo:        %bg`black-%%fg`red%Aviso%fg`white%: %fg`yellow%O atalho %fg`white%'%fg`cyan%%set_shotout%%fg`white%' %fg`yellow%já está sendo usado.
if "%shotout_error_2%" EQU "1" echo: & echo:        %bg`black-%%fg`red%Aviso%fg`white%: %fg`yellow%Você só pode usar o %fg`white%'%fg`green%CTRL%fg`white%' %fg`cyan-%+ %fg`white%'%fg`green%LETRA%fg`white%' %fg`yellow%para criar um atalho.

echo.
if "%shotout_select_menu%" EQU "1" (echo:       %bg`white%%fg`black-%Crop%bg`black-%        %fg`green%Convert         Fill %fg`white%^(%fg`red%DESATIVADO%fg`white%^)         %fg`green%Montage         Rename          Configuração)
if "%shotout_select_menu%" EQU "2" (echo:       %bg`black-%%fg`green%Crop        %bg`white%%fg`black-%Convert%bg`black-%         %fg`green%Fill %fg`white%^(%fg`red%DESATIVADO%fg`white%^)         %fg`green%Montage         Rename          Configuração)
if "%shotout_select_menu%" EQU "3" (echo:       %bg`black-%%fg`green%Crop%bg`black-%        %fg`green%Convert         Fill %fg`white%^(%fg`red%DESATIVADO%fg`white%^)         %bg`white%%fg`black-%Montage%bg`black-%%fg`green%         Rename          Configuração)
if "%shotout_select_menu%" EQU "4" (echo:       %bg`black-%%fg`green%Crop%bg`black-%        %fg`green%Convert         Fill %fg`white%^(%fg`red%DESATIVADO%fg`white%^)         %fg`green%Montage         %bg`white%%fg`black-%Rename%bg`black-%%fg`green%          Configuração)
if "%shotout_select_menu%" EQU "5" (echo:       %bg`black-%%fg`green%Crop%bg`black-%        %fg`green%Convert         Fill %fg`white%^(%fg`red%DESATIVADO%fg`white%^)         %fg`green%Montage         Rename          %bg`white%%fg`black-%Configuração%bg`black-%%fg`green%)
echo.



if "%shotout_select_menu%" EQU "1" if "%shotout_select_menu_option%" EQU "1" (
echo:                                    
echo:       %bg`white%%fg`black-%INICIAR%bg`black-%%fg`white% ^>%fg`green%          ^> %shotout_crop_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_crop_config% ^<
echo:       %bg`black-%%fg`green%DIRETO             ^> %shotout_crop_direto% ^<
)
if "%shotout_select_menu%" EQU "1" if "%shotout_select_menu_option%" EQU "2" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_crop_iniciar% ^<
echo:       %bg`white%%fg`black-%CONFIGURAÇÃO%bg`black-%%fg`white% ^>%fg`green%     ^> %shotout_crop_config% ^<
echo:       %bg`black-%%fg`green%DIRETO             ^> %shotout_crop_direto% ^<
)
if "%shotout_select_menu%" EQU "1" if "%shotout_select_menu_option%" EQU "3" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_crop_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_crop_config% ^<
echo:       %bg`white%%fg`black-%DIRETO%bg`black-%%fg`white% ^>%fg`green%           ^> %shotout_crop_direto% ^<
)



if "%shotout_select_menu%" EQU "2" if "%shotout_select_menu_option%" EQU "1" (
echo:                                    
echo:       %bg`white%%fg`black-%INICIAR%bg`black-%%fg`white% ^>%fg`green%          ^> %shotout_convert_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_convert_config% ^<
)
if "%shotout_select_menu%" EQU "2" if "%shotout_select_menu_option%" EQU "2" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_convert_iniciar% ^<
echo:       %bg`white%%fg`black-%CONFIGURAÇÃO%bg`black-%%fg`white% ^>%fg`green%     ^> %shotout_convert_config% ^<
)



if "%shotout_select_menu%" EQU "3" if "%shotout_select_menu_option%" EQU "1" (
echo:                                    
echo:       %bg`white%%fg`black-%INICIAR%bg`black-%%fg`white% ^>%fg`green%          ^> %shotout_montage_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_montage_config% ^<
echo:       %bg`black-%%fg`green%DIRETO             ^> %shotout_montage_direto% ^<
echo:       %bg`black-%%fg`green%ESCOLHER           ^> %shotout_montage_escolher% ^<
)
if "%shotout_select_menu%" EQU "3" if "%shotout_select_menu_option%" EQU "2" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_montage_iniciar% ^<
echo:       %bg`white%%fg`black-%CONFIGURAÇÃO%bg`black-%%fg`white% ^>%fg`green%     ^> %shotout_montage_config% ^<
echo:       %bg`black-%%fg`green%DIRETO             ^> %shotout_montage_direto% ^<
echo:       %bg`black-%%fg`green%ESCOLHER           ^> %shotout_montage_escolher% ^<
)
if "%shotout_select_menu%" EQU "3" if "%shotout_select_menu_option%" EQU "3" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_montage_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_montage_config% ^<
echo:       %bg`white%%fg`black-%DIRETO%bg`black-%%fg`white% ^>%fg`green%           ^> %shotout_montage_direto% ^<
echo:       %bg`black-%%fg`green%ESCOLHER           ^> %shotout_montage_escolher% ^<
)
if "%shotout_select_menu%" EQU "3" if "%shotout_select_menu_option%" EQU "4" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_montage_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_montage_config% ^<
echo:       %bg`black-%%fg`green%DIRETO             ^> %shotout_montage_direto% ^<
echo:       %bg`white%%fg`black-%ESCOLHER%bg`black-%%fg`white% ^>%fg`green%         ^> %shotout_montage_escolher% ^<
)



if "%shotout_select_menu%" EQU "4" if "%shotout_select_menu_option%" EQU "1" (
echo:                                    
echo:       %bg`white%%fg`black-%INICIAR%bg`black-%%fg`white% ^>%fg`green%          ^> %shotout_reneme_iniciar% ^<
echo:       %bg`black-%%fg`green%CONFIGURAÇÃO       ^> %shotout_reneme_config% ^<
)
if "%shotout_select_menu%" EQU "4" if "%shotout_select_menu_option%" EQU "2" (
echo:                                    
echo:       %bg`black-%%fg`green%INICIAR            ^> %shotout_reneme_iniciar% ^<
echo:       %bg`white%%fg`black-%CONFIGURAÇÃO%bg`black-%%fg`white% ^>%fg`green%     ^> %shotout_reneme_config% ^<
)



if "%shotout_select_menu%" EQU "5" if "%shotout_select_menu_option%" EQU "1" (
echo:
echo:       %bg`white%%fg`black-%MENU%bg`black-%%fg`white% ^>%fg`green%             ^> %shotout_config_menu% ^<
echo:       %bg`black-%%fg`green%ATALHO             ^> %shotout_config_menu_shotout% ^<
echo:       %bg`black-%%fg`green%DEVE               ^> %shotout_config_menu_deve% ^<
)
if "%shotout_select_menu%" EQU "5" if "%shotout_select_menu_option%" EQU "2" (
echo:
echo:       %bg`black-%%fg`green%MENU               ^> %shotout_config_menu% ^<
echo:       %bg`white%%fg`black-%ATALHO%bg`black-%%fg`white% ^>%fg`green%           ^> %shotout_config_menu_shotout% ^<
echo:       %bg`black-%%fg`green%DEVE               ^> %shotout_config_menu_deve% ^<
)
if "%shotout_select_menu%" EQU "5" if "%shotout_select_menu_option%" EQU "3" (
echo:
echo:       %bg`black-%%fg`green%MENU               ^> %shotout_config_menu% ^<
echo:       %bg`black-%%fg`green%ATALHO             ^> %shotout_config_menu_shotout% ^<
echo:       %bg`white%%fg`black-%DEVE%bg`black-%%fg`white% ^>%fg`green%             ^> %shotout_config_menu_deve% ^<
)
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

:FirstStart
IF "%shotout_config_menu%" EQU "" set "shotout_config_menu=CTRL + H"
IF "%shotout_config_menu_set%" EQU "" set "shotout_config_menu_set=8"
IF "%shotout_code_call_12%" EQU "" set "shotout_code_call_12=ConfigPATHEXT"
if "%converter_backup%" EQU "" set "converter_backup=1"
if "%fill_backup%" EQU "" set "fill_backup=1"
if "%crop_backup%" EQU "" set "crop_backup=1"
if "%crop_rename%" EQU "" set "crop_rename=1"
if "%rename_backup%" EQU "" set "rename_backup=1"
if "%montage_backup%" EQU "" set "montage_backup=1"
if "%montage_limit%" EQU "" set "montage_limit=1000"
if "%montage_match%" EQU "" set "montage_match=2"
if "%montage_rename%" EQU "" set "montage_rename=1"
if "%crop_limit%" EQU "" set "crop_limit=1000"
if "%crop_match%" EQU "" set "crop_match=5000"
if "%extens_output_UP%" EQU "" set extens_output_UP=JPG
if "%extens_output_DOWN%" EQU "" set extens_output_DOWN=jpg
:: if "%Att_verify%" EQU "" set Att_verify=1
if "%Att_verify%" EQU "0" set Att_verify=1
if "%error_veriffy%" EQU "" set error_veriffy=1
if "%high_quality%" EQU "" set high_quality=0
if "%Developer_ON%" EQU "" set Developer_ON=0
if "%select_folder_type%" EQU "" set select_folder_type=1
if "%converter_rename%" EQU "" set converter_rename=1
call :save1
goto :eof

:: \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\