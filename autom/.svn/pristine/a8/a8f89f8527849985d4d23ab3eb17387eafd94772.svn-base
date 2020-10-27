cls
@echo off
set crm="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe "
set url1="\.tmp\WHP\report\index.html"
echo Iniciando a execucao do Teste Automatico AMBIENTE WHP
echo:
echo ATENCAO: Para correta execucao dos testes, e necessario que integre os IDOCs dos pedidos que serao utilizados no testes da tela de analise, os mesmos estao disponiveis em: test\CPL\Dependencias\xmls\WHP\pedidosWHP.xml
echo:
echo:
echo Digite a URL completa e pressione a tecla ENTER
echo (Exemplo: http://nlgXXv.neolog.com.br:XXXXX/front-end-web)
echo:
set /p url=:
echo:
echo: Digite o numero da Revisao
set /p revisao=:
set $PSDefaultParameterValues = @{'Out-File:Encoding' = 'utf8'}
powershell -Command "(gc .\test\CPL\pages\LoginPage.js) -replace '(^var\s{1}url\s{1}=\s{1}).*("""$)', '$1"""%url%$2' | Out-File -encoding ascii .\test\CPL\pages\LoginPage.js"
powershell -Command "(gc protractorWHP.conf.js) -replace '(^\s+{\s{1}label:\s{1}.{1}Revisao.{1},\s{1}value:\s{1}).*(.{1}\s+},)', '$1''%revisao%$2' | Out-File -encoding ascii protractorWHP.conf.js"
echo:
echo:
echo:
echo Iniciando o Webdriver-Manager
start StartWebdriver.exe 
timeout /T 5 /NOBREAK
echo:
echo:
echo Iniciando a execucao Teste Automatico
echo:
set mydate=%date%
set mytime=%time%

set START_HOUR=%mytime%
set START_DATE=%mydate%
cmd /c npm run whp

echo:
echo:
echo Teste automatico Concluido
echo:
echo:
taskkill /F /IM StartWebdriver.exe
taskkill /F /IM java.exe

%crm% "%CD%%url1%"
pause
exit