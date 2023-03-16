@echo off
chcp 65001 >nul
call "%TEMP%\_MENU---TEMP---FILES\TEMP---Color_set.bat"
set select_change_log_1=1
:Loop5
echo:       %fg`green%Change Log%`r%
echo:   %fg`yellow%Versão usando%`r%%fg`white%:%`r% %fg`green%%version_%%`r%
if %select_change_log_1% EQU 1 (
echo:
echo:   %bg`white%%fg`black-%Versão 2.3%bg`black-%%fg`white% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequenas correções no %fg`white%'%fg`yellow%Crop%fg`white%'%fg`white% e %fg`white%'%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Foi feito uma melhoria em renomear no %fg`white%'%fg`yellow%Crop%fg`white%', %fg`white%'%fg`yellow%Converter%fg`white%', %fg`white%'%fg`yellow%Montage%fg`white% e %fg`white%'%fg`yellow%Rename%fg`white%'.
echo:       %fg`white%▪ A opção %fg`white%'%fg`green%Renomear%fg`white%' no %fg`white%'%fg`yellow%Crop%fg`white%', %fg`white%'%fg`yellow%Converter%fg`white%' e %fg`white%'%fg`yellow%Montage%fg`white%' foi %fg`red%desativado%fg`white%.
echo:       %fg`white%▪ 14/02/2023 — 14/03/2023
echo:
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 2 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`white%%fg`black-%Versão 2.2%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Menu que pode configurar teclas de atalhos foi adicionado.
echo:       %fg`white%▪ Foi adicionado a opção de %fg`green%ativar%fg`white% ou %fg`red%desativar%fg`white% ou uma forma %fg`cyan-%simples%fg`white%
echo:       %fg`white%  para renomear no %fg`white%'%fg`yellow%Crop%fg`white%', %fg`white%'%fg`yellow%Converter%fg`white%' e %fg`white%'%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Pequenas correções no %fg`white%'%fg`yellow%Crop%fg`white%' do %fg`white%'%fg`cyan%Convert%fg`white%'.
echo:       %fg`white%▪ Pequena correção nas %fg`yellow%configurações de qualidade%fg`white%.
echo:       %fg`white%▪ Foi feito uma alteração na variável do %fg`white%'%fg`yellow%PATH%fg`white%' do %fg`green%ImageMagick%fg`white%.
echo:       %fg`white%▪ Foi adicionado uma verificação se está usando a versão mínima para usar o programa.
echo:       %fg`white%▪ Foi adicionado uma opção para escolher entre %fg`white%'%fg`green%modo janela%fg`white%' e '%fg`yellow-%modo escrever%fg`white%' quando for
echo:       %fg`white%  selecionar a pasta. %fg`white%^(%fg`magenta%padrão modo janela%fg`white%^)
echo:       %fg`white%▪ A opção %fg`white%'%fg`green%Verificar atualizações%fg`white%' foi %fg`red%desativada%fg`white% por causa de um problema.
echo:       %fg`white%▪ Foi feito uma melhoria na velocidade para organizar a numeração no %fg`white%'%fg`yellow%Crop%fg`white%', %fg`white%'%fg`yellow%Converter%fg`white%' e '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Foi feito uma alteração na inicialização para verificar o WinGet.
echo:       %fg`white%▪ Foi feito uma mudança na instalação do %fg`cyan-%WinGet%fg`white% e foi adicionado uma opção para instalar o %fg`green%ImageMagick%fg`white%
echo:       %fg`white%  em outro %fg`yellow-%servidor%fg`white% caso o %fg`yellow-%servidor%fg`white% do %fg`cyan-%WinGet%fg`white% não esteja funcionando corretamente. %fg`yellow%^(%fg`magenta%Caso instale o 
echo:       %fg`white%  %fg`green%ImageMagick%fg`magenta% desse outro %fg`yellow-%servidor%fg`magenta%, o %fg`cyan-%WinGet%fg`magenta% não vai conseguir atualizar ele.%fg`yellow%^)
echo:       %fg`white%▪ 25/02/2023 — 12/03/2023
echo:
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 3 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`white%%fg`black-%Versão 2.1%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Corrigido um erro no menu de opções.
echo:
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 4 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`white%%fg`black-%Versão 2.0%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequenas mudanças.
echo:       %fg`white%▪ Novo comportamento nas pastas que são criadas quando usa o '%fg`yellow%Crop%fg`white%' ou o '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Agora mostra a extensão de saída no menu do '%fg`yellow%Crop%fg`white%' e do '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Atualização no %fg`green%ImageMagick%fg`white%.
echo:       %fg`white%▪ Foi adicionaod a opção '%fg`cyan-%Qualidade alta%fg`white%' para '%fg`yellow%Crop%fg`white%', '%fg`yellow%Converter%fg`white%' e '%fg`yellow%Montage%fg`white%'. ^(%fg`magenta%Desativado por padrão%fg`white%^) 
echo:       %fg`white%▪ Foi adicionado um menu de configuração para '%fg`cyan-%Qualidade alta%fg`white%'.
echo:       %fg`white%▪ O '%fg`cyan-%Qualidade alta%fg`white%' é mostrado no '%fg`yellow%Crop%fg`white%', '%fg`yellow%Converter%fg`white%' e no '%fg`yellow%Montage%fg`white%' se está %fg`green%ativado%fg`white% ou %fg`red%desativado%fg`white%.
echo:       %fg`white%▪ Corrigido um erro em salvar.
echo: 
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 5 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 6 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`white%%fg`black-%Versão 1.8%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 7 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 8 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`white%%fg`black-%Versão 1.6%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ As strings ^(%fg`red%variáveis%fg`white%^) dos diretórios são apagados agora.
echo:       %fg`white%▪ Organização no código.
echo:       %fg`white%▪ Algumas correções.
echo:       %fg`white%▪ A mensagem de erro que não foi encontrado nada nas pastas ^(%fg`cyan%DIRETO%fg`white%^) foi
echo:       %fg`white%  adicionado para o '%fg`yellow%Convert%fg`white%' e o '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Corrigido um erro no '%fg`yellow%DEFINIR O TAMANHO DO CORTE%fg`white%', '%fg`yellow%DEFINIR A QUANTIDADE
echo:       %fg`yellow%  DE JUNTAR%fg`white%' e '%fg`yellow%DEFINIR O LIMITE%fg`white%', em que se você deixa como 0, não
echo:       %fg`white%  era substituído pelo número padrão.
echo:
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 9 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`white%%fg`black-%Versão 1.5%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Algumas correções.
echo:       %fg`white%▪ Pequenas mudanças.
echo:       %fg`white%▪ Verificação de um programa necessário está instalado foi adicionado.
echo:
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 10 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`white%%fg`black-%Versão 1.4%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Organização no código.
echo:       %fg`white%▪ Opção '%fg`yellow%Fechar%fg`white%' foi adicionado na aba Menu.
echo:       %fg`white%▪ Variável da pasta de inicialização corrigida.
echo:       %fg`white%▪ Corrigido a variável que mostra o número da versão.
echo:       %fg`white%▪ Corrigido um erro no atualizador em que a variável da versão não era 
echo:       %fg`white%  atualizada junto.
echo:
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 11 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`white%%fg`black-%Versão 1.3%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Uma nova forma de chamar o instalador do ImageMagick foi colocado.
echo:
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 12 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`white%%fg`black-%Versão 1.2%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Corrigido um erro de se conectar com outras partições.
echo:       %fg`white%▪ Corrigido um erro onde o '%fg`yellow%Montage%fg`white%' cortava na pasta customizada.
echo:
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 13 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`white%%fg`black-%Versão 1.1%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Foi adicionado o '%fg`yellow%Montage%fg`white%' e '%fg`yellow%Rename%fg`white%'.
echo:       %fg`white%▪ Foi adicionado um comando para o '%fg`yellow%Convert%fg`white%' e o '%fg`yellow%Montage%fg`white%' no seu 
echo:       %fg`white%  respectivo menu a opção oculta '%fg`yellow%P%fg`white%' para cortar ou juntar em 
echo:       %fg`white%  uma pasta específica.
echo:       %fg`white%▪ Correção de bugs.
echo:
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_1% EQU 14 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`white%%fg`black-%Versão 1.0%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Versão inicial criada para usar o '%fg`yellow%Convert%fg`white%'.
)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> SAIR/VOLTAR%`r%
echo.
::enter 13
::esc 27
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_change_log_1-=1
if %errorlevel% EQU -80 set /a select_change_log_1+=1
if %errorlevel% EQU 13 if %select_change_log_1% EQU 7 cls & goto loop6
if %errorlevel% EQU 13 if %select_change_log_1% EQU 6 cls & goto loop7
if %errorlevel% EQU 13 if %select_change_log_1% EQU 5 cls & goto loop8
if %errorlevel% EQU 27 cls & goto :eof
if %select_change_log_1% EQU 0 set select_change_log_1=14
if %select_change_log_1% EQU 15 set select_change_log_1=1
cls & goto loop5







:loop6
echo:       %fg`green%Change Log%`r%
echo:   %fg`yellow%Versão usando%`r%%fg`white%:%`r% %fg`green%%version_%%`r%
if "%select_change_log_2%" EQU "" set select_change_log_2=1
if %select_change_log_2% EQU 1 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.6%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Correção no '%fg`yellow%Converter%fg`white%' sobre os arquivos '%fg`yellow%PSD%fg`white%' e variáveis.
echo:
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_2% EQU 2 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.5%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequenas correções no '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Corrigido um erro de criação de 'Backup' no '%fg`yellow%Montage%fg`white%', '%fg`yellow%Crop%fg`white%' e '%fg`yellow%Converter%fg`white%'.
echo:       %fg`white%▪ Correção no painel de configuração do '%fg`yellow%Converter%fg`white%'.
echo:       %fg`white%▪ Corrigido um erro na mensagem de erro do '%fg`yellow%Converter%fg`white%'.
echo:
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_2% EQU 3 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.4%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Adicionado pré-visualização nos respectivos menus.
echo:       %fg`white%▪ Organização no código.
echo:       %fg`white%▪ Melhoria na velocidade em mostrar as mensagens.
echo:
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_2% EQU 4 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.3%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Corrigido um erro no '%fg`yellow%Backup%fg`white%'.
echo:       %fg`white%▪ Corrigido as variáveis do '%fg`yellow%Crop%fg`white%'.
echo:       %fg`white%▪ Um novo método de escolher a pasta foi implementado.
echo:       %fg`white%▪ Organização no código.
echo:
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_2% EQU 5 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.2%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Erros do '%fg`yellow%Montage%fg`white%' foram corrigidos, onde se você não tivesse configurado antes 
echo:       %fg`white%  ele te mandava para as configurações do '%fg`yellow%Crop%fg`white%'.
echo:       %fg`white%▪ Corrigido um erro no '%fg`yellow%DEFINIR O TAMANHO DO CORTE%fg`white%', '%fg`yellow%DEFINIR A QUANTIDADE
echo:       %fg`yellow%  DE JUNTAR%fg`white%' e '%fg`yellow%DEFINIR O LIMITE%fg`white%', em que não salvava os valores.
echo:       %fg`white%▪ Corrigido um erro no '%fg`yellow%Converter%fg`white%' onde o valor de ^(%fg`cyan%ENTRADA%fg`white%^) era substituído
echo:       %fg`white%  pelo valor de ^(%fg`cyan%SAÍDA%fg`white%^) nas configurações.
echo:       %fg`white%▪ Organização no código.
echo:
echo:       %bg`black-%%fg`green%Versão 1.7.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_2% EQU 6 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`white%%fg`black-%Versão 1.7%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.7.2%`r%
echo:       %bg`white%%fg`black-%Versão 1.7.1%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ '%fg`yellow%Convert%fg`white%' foi mudado para '%fg`yellow%Crop%fg`white%'.
echo:       %fg`white%▪ '%fg`yellow%Converter%fg`white%' foi adicionado.
echo:       %fg`white%▪ Organização no código.
echo:
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> SAIR/VOLTAR%`r%
echo.
::enter 13
::esc 27
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_change_log_2-=1
if %errorlevel% EQU -80 set /a select_change_log_2+=1
if %errorlevel% EQU 27 set "select_change_log_2=1" & cls & goto loop5
if %select_change_log_2% EQU 0 set select_change_log_2=6
if %select_change_log_2% EQU 7 set select_change_log_2=1
cls & goto loop6











:loop7
echo:       %fg`green%Change Log%`r%
echo:   %fg`yellow%Versão usando%`r%%fg`white%:%`r% %fg`green%%version_%%`r%
if "%select_change_log_3%" EQU "" set select_change_log_3=1
if %select_change_log_3% EQU 1 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`white%%fg`black-%Versão 1.8%bg`black-%%fg`white% ^>%`r%
echo:       %bg`white%%fg`black-%Versão 1.8.3%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Corrigido um erro de loop no '%fg`yellow%Verificador de programas%fg`white%'.
echo:       %fg`white%▪ Foi adicionado um comando ^(%fg`red%X%fg`white%^) para apagar alguns arquivos do programa antes de iniciar o 
echo:       %fg`white%  '%fg`yellow%Verificador de programas%fg`white%'.
echo:       %fg`white%▪ Limpeza e otimização no código.
echo:
echo:       %bg`black-%%fg`green%Versão 1.8.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_3% EQU 2 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`white%%fg`black-%Versão 1.8%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.3%`r%
echo:       %bg`white%%fg`black-%Versão 1.8.2%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ O instalado do '%fg`green%ImageMagick%fg`white%' é automático agora. ^(%fg`cyan%versão: 7.1.0-57-Q16-HDRI-x64%fg`white%^)
echo:       %fg`white%▪ Organização no código.
echo:
echo:       %bg`black-%%fg`green%Versão 1.8.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_3% EQU 3 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`black-%%fg`green%Versão 1.9%`r%
echo:   %bg`white%%fg`black-%Versão 1.8%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.8.2%`r%
echo:       %bg`white%%fg`black-%Versão 1.8.1%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ '%fg`yellow%Fill%fg`white%' foi adicionado no '%fg`yellow%Convert%fg`white%'.
echo:       %fg`white%▪ A opção de comando '%fg`yellow%P%fg`white%' no '%fg`yellow%Crop%fg`white%' e no '%fg`yellow%Montage%fg`white%' agora é visível.
echo:       %fg`white%▪ Uma mudança no '%fg`yellow%Rename%fg`white%' foi feita. Agora você tem que escolher as imagens para ser renomeado.
echo:       %fg`white%▪ Organização no código.
echo:
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> SAIR/VOLTAR%`r%
echo.
::enter 13
::esc 27
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_change_log_3-=1
if %errorlevel% EQU -80 set /a select_change_log_3+=1
if %errorlevel% EQU 27 set "select_change_log_3=1" & cls & goto loop5
if %select_change_log_3% EQU 0 set select_change_log_3=3
if %select_change_log_3% EQU 4 set select_change_log_3=1
cls & goto loop7







:loop8
echo:       %fg`green%Change Log%`r%
echo:   %fg`yellow%Versão usando%`r%%fg`white%:%`r% %fg`green%%version_%%`r%
if "%select_change_log_4%" EQU "" set select_change_log_4=1
if %select_change_log_4% EQU 1 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.9%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequena melhoria na velocidade de donwload dos recursos necessários.
echo:       %fg`white%▪ Alteração na visualização do '%fg`green%Change Log%fg`white%'.
echo:       %fg`white%▪ Pequenas mudanças.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 2 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.8%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Foi adicionado um aviso de nova versão caso tenha desativado a verificação de atualizações.
echo:       %fg`white%▪ Pequenas mudanças.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 3 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.7%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Agora você pode desativar a mensagem de erro e verificação de atualizações.
echo:       %fg`white%▪ Melhoria na velocidade de download no %fg`green%ImageMagick%fg`white%.
echo:       %fg`white%▪ Pequenas correções.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 4 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.6%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Corrigido um erro em que o '%fg`yellow%Montage - Escolher%fg`white%' fechava o programa.
echo:       %fg`white%▪ Corrigido um erro na configurações do '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Pequenas correções.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 5 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.5%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequenas correções.
echo:       %fg`white%▪ '%fg`yellow%Converter%fg`white%' foi reativado.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 6 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.4%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Pequenas correções.
echo:       %fg`white%▪ Foi adicionado o '%fg`yellow%selecionar imagens%fg`white%' que você quer juntar no '%fg`yellow%Montage%fg`white%'.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 7 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.3%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ Correção no '%fg`yellow%Rename%fg`white%'.
echo:       %fg`white%▪ Foi adicionado uma configuração de '%fg`yellow%extensão de saída%fg`white%' para o '%fg`yellow%Crop%fg`white%' e o '%fg`yellow%Montage%fg`white%'.
echo:       %fg`white%▪ Foi adicionado uma mensagem de erro no '%fg`yellow%Crop%fg`white%' e '%fg`yellow%Montage%fg`white%' sobre a '%fg`yellow%extensão de saída%fg`white%'.
echo:       %fg`white%▪ Pequenas mudanças no '%fg`yellow%Crop%fg`white%' e '%fg`yellow%Montage%fg`white%'.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 8 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.2%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ O erro ao clicar no programa ^(%fg`red%script%fg`white%^) com o mouse e ele fecha, foi corrigido parcialmente.
echo:       %fg`white%▪ Corrigido um erro que a tela muda o tamanho e as letras ao usar o '%fg`yellow%Rename%fg`white%'.
echo:
echo:       %bg`black-%%fg`green%Versão 1.9.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
if %select_change_log_4% EQU 9 (
echo:
echo:   %bg`black-%%fg`green%Versão 2.3%`r% %fg`yellow%^(%fg`magenta%EM TESTE%fg`yellow%^)%`r%
echo:   %bg`black-%%fg`green%Versão 2.2%`r%
echo:   %bg`black-%%fg`green%Versão 2.1%`r%
echo:   %bg`black-%%fg`green%Versão 2.0%`r%
echo:   %bg`white%%fg`black-%Versão 1.9%bg`black-%%fg`white% ^>%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.9%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.8%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.7%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.6%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.5%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.4%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.3%`r%
echo:       %bg`black-%%fg`green%Versão 1.9.2%`r%
echo:       %bg`white%%fg`black-%Versão 1.9.1%bg`black-%%fg`white% ^>%`r%
echo:       %fg`white%▪ O erro de %fg`magenta%PATH%fg`white% com caracteres '%fg`yellow%Chinês%fg`white%' ou '%fg`yellow%Japonês%fg`white%' foi corrigido.
echo:       %fg`white%▪ O botão '%fg`yellow%ESC%fg`white%' foi adicionado em quase tudo para voltar na aba anterior.
echo:       %fg`white%▪ Corrigido um erro de %fg`magenta%PATH%fg`white% no '%fg`yellow%Convert%fg`white%'.
echo:       %fg`white%▪ '%fg`yellow%Converter%fg`white%' e '%fg`yellow%Fill%fg`white%' foram desativados por causa de um erro.
echo:       %fg`white%▪ Corrigido um erro na instalação automática do ImageMagick.
echo:
echo:   %bg`black-%%fg`green%Versão 1.8%`r%
echo:   %bg`black-%%fg`green%Versão 1.7%`r%
echo:   %bg`black-%%fg`green%Versão 1.6%`r%
echo:   %bg`black-%%fg`green%Versão 1.5%`r%
echo:   %bg`black-%%fg`green%Versão 1.4%`r%
echo:   %bg`black-%%fg`green%Versão 1.3%`r%
echo:   %bg`black-%%fg`green%Versão 1.2%`r%
echo:   %bg`black-%%fg`green%Versão 1.1%`r%
echo:   %bg`black-%%fg`green%Versão 1.0%`r%
)
echo.
echo:%fg`yellow%↑ -^> SELECIONAR PARA CIMA%`r%
echo:%fg`yellow%↓ -^> SELECIONAR PARA BAIXO%`r%
echo:%fg`yellow%ENTER -^> CONFIRMAR%`r%
echo:%fg`yellow%ESC -^> SAIR/VOLTAR%`r%
echo.
::enter 13
::esc 27
"%TEMP%\_MENU---TEMP---FILES\GetKey.exe"
if %errorlevel% EQU -72 set /a select_change_log_4-=1
if %errorlevel% EQU -80 set /a select_change_log_4+=1
if %errorlevel% EQU 27 set "select_change_log_4=1" & cls & goto loop5
if %select_change_log_4% EQU 0 set select_change_log_4=9
if %select_change_log_4% EQU 10 set select_change_log_4=1
cls & goto loop8