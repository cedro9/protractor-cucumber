cls
@echo off

:dados
cls
echo Iniciando a execucao do Teste Automatico AMBIENTE Gerdau (Sugestao: utilizar usuario regional.1400)
echo:
echo:
echo Digite o numero da VM do ambiente e pressione ENTER
echo Se o campo ficar em branco, o valor padrao sera 38
set /p VM=:
echo:
echo:
echo Digite o numero da Porta  e pressione ENTER 
echo Se o campo ficar em branco, o valor padrao sera 8087
set /p porta=:
echo:
echo:
echo Digite o numero da Revisao e pressione ENTER 
echo Se o campo ficar em branco, o valor padrao sera 0000
set /p revisao=:
echo:
echo:
echo Digite o Login e pressione ENTER 
echo Se o campo ficar em branco, o valor padrao sera neolog@neolog.com.br
set /p login=:
echo:
echo:
echo Digite a Senha e pressione ENTER 
echo Se o campo ficar em branco, o valor padrao sera neolog
set /p senha=:
echo:
echo:

:confirmacao
cls
echo:
echo:
echo CONFIRME AS INFORMACOES PREENCHIDAS
echo:
echo URL: http://nlg%VM%v.neolog.com.br:%porta%/front-end-web
echo Revisao: %revisao%
echo Login: %login% (se estiver em branco, sera considerado o padrao neolog@neolog.com.br)
echo Senha: %senha% (se estiver em branco sera considerado o padrao neolog)
echo:
echo:

:choice
set /P c=As informacoes preenchidas estao corretas[Y/N]?
if /I "%c%" EQU "Y" goto :inicio
if /I "%c%" EQU "N" goto :dados
goto :choice

:inicio
echo:
echo:
echo:
echo Iniciando a execucao Teste Automatico
echo:
set mydate=%date%
set mytime=%time%

set START_HOUR=%mytime%
set START_DATE=%mydate%
set CPL_VM=%VM%
set CPL_PORT=%porta%
set REVISAO=%revisao%
set CLIENT_NAME=grd
set USER_NEOLOG=%login%
set USER_SELECAO_RETORNO=%login%
set PASSWORD_NEOLOG=%senha%
set "DESTINO=0000003400"
set "DESTINO_OPM2=0000001407"
set "FOLDER=GRD"
set "INVOLUCRO=Bobina"
set "ITEM_PEDIDO=CRITICO"
set "ORIGEM=1400-1400"
set "PARADA_DESCARREGAMENTO=GERDAU ACOS LONGOS S A - 0000001407"
set "PARADA_OPM=GERDAU ACOS LONGOS S A - Araçariguama (SP)"
set "PROJETO=Teste Automatizado Gerdau"
set "TIPO_PEDIDO=FOB"
set "TIPO_SERVICO_FBVM=FULL_TRUCK_LOAD"
set "TIPO_SERVICO_OPM=FOBT"
set "TRANSPORTADORA=SCR - THV"
set "TRANS_OPM=SCR - AUTOBAMA"
set "VEICULO_OPM=TOCO"

cmd /c npm run grd
echo:
echo:
echo Teste automatico Concluido
echo:
echo:
set crm="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe "
set url1="\.tmp\%FOLDER%\report\index.html"

%crm% "%CD%%url1%"
pause
exit