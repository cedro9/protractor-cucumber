#language:pt

@GTF-Agro
@MovimentoEntreCestasGTF-Agro

Funcionalidade: Movimento entre Cestas GTF

Cenario: Cadastro de Dependências
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPMDCAgro"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPMDCAgro"

Dado que cadastro a origem "LOCORIGEMDEPMDCAgro" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro o destino "LOCDESTDEPMDCAgro" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro o hub de passagem "LOCPASSHUBDEPMDCAgro" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro o hub de destino "LOCDESTHUBDEPMDCAgro" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro a categoria de produto "CATPRODDEP01MDCAgro"
Dado que cadastro o embarcador "EMBDEP01MDCAgro"
Dado que cadastro o produto "PRODDEP01MDCAgro" com a categoria "CATPRODDEP01MDCAgro" e embarcador "EMBDEP01MDCAgro"
Dado que cadastro o invólucro "INVDEP01MDCAgro" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDO01-MDC" do embarcador "EMBDEP01MDCAgro" tipo de pedido "TIPOPEDIDODEPMDCAgro" destino "LOCDESTDEPMDCAgro" origem "LOCORIGEMDEPMDCAgro" produto "PRODDEP01MDCAgro" item de pedido "TIPOITEMDEPMDCAgro" e invólucro "INVDEP01MDCAgro" e Hub de destino "LOCPASSHUBDEPMDCAgro"
Dado que copio o Pedido "PEDIDO01-MDC", localidade "LOCORIGEMDEPMDCAgro", Produtos "PRODDEP01MDCAgro", tipo de Item de Pedido "TIPOITEMDEPMDCAgro" e Involucros "INVDEP01MDCAgro" "15" vezes
Dado que cadastro a viagem "PEDIDO01-MDC2"

Cenario: Cesta de Pedidos - Mover um Pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC1"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-MDC1" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
## Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC1"
## Quando clico no pedido "PEDIDO01-MDC1" para visualizar a UT
## E valido se o usuário selecionado é o "Neolog"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC1"
Então o pedido "PEDIDO01-MDC1" deve ser exibido

Cenario: Cesta de Viagens - Mover uma Viagem com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Viagem com o codigo "PEDIDO01-MDC2"
Quando Seleciono a viagem "PEDIDO01-MDC2" da Cesta de viagem
E clico no botão Mover Viagens
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de viagens efetuada com sucesso."
E clico no botão OK
E valido se o usuário selecionado na viagem é o "Neolog"
E retorno a viagem para o usuario Logado

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando somente uma UT
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC0"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono uma  UT do pedido "PEDIDO01-MDC0" na cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC0"
Então o pedido "PEDIDO01-MDC0" deve ser exibido

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de um pedido
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC6,PEDIDO01-MDC7"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDC6" da Cesta de Pedidos
Quando Seleciono o pedido "PEDIDO01-MDC7" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
E configuro a Ordenação da cesta do usuário em ordem crescente
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC6,PEDIDO01-MDC7"
Então o pedido "PEDIDO01-MDC6" deve ser exibido

Cenario: Cesta Geral - Recriar Uts
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEP01MDCAgro" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC8"
Quando Seleciono o pedido "PEDIDO01-MDC8" da Cesta Geral
E clico para expandir o pedido e visualizar as Uts da cesta geral
E o peso do pedido na cesta Geral deve ser "40"
E clico no botão Recriar Uts
E clico para expandir o pedido e visualizar as Uts da cesta geral
Então o peso do pedido na cesta Geral deve ser "800"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEP01MDCAgro" para "10,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC8"
Quando Seleciono o pedido "PEDIDO01-MDC8" da Cesta Geral
E clico no botão Recriar Uts

Cenario: Mover um Pedido com sucesso - Mover todas as paginas da cesta geral para usuario
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC3"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC3"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
E que acesso a tela "Programação", "Pedido"

Cenario: Cesta do Usuario - Mover pedido para Cesta Geral
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC9"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDC9" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC9"
Então o pedido "PEDIDO01-MDC9" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDC9" na cesta do usuário
E clico no botão Mover para cesta Geral
Quando oculto minha cesta
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC9"
Então o pedido "PEDIDO01-MDC9" deve ser exibido na cesta Geral

Cenario: Cesta do Usuario - Mover pedido para um Usuario especifico
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC10"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDC10" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC10"
Então o pedido "PEDIDO01-MDC10" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDC10" na cesta do usuário
E clico no botão Mover Para
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC10"
Quando oculto a cesta de viagens
Quando clico no pedido "PEDIDO01-MDC10" para visualizar a UT
# E valido se o usuário selecionado no pedido é o "regional.DEFAULT"

Cenario: Cesta do Usuario - Mover todos as paginas para a Cesta Geral
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
Quando desabilito a exibiçao da Cesta do Usuairo  e habilito Cesta geral
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
Entao os pedidos devem ser exibidos

Cenario: Cesta do Usuario - Recriar Uts
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC12"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-MDC12" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEP01MDCAgro" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC12"
Quando seleciono o pedido "PEDIDO01-MDC12" na cesta do usuário
E o peso do pedido na cesta do Usuario deve ser "40"
E clico no botão Recriar Uts na cesta do usuario
Então o peso do pedido na cesta do Usuario deve ser "800"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEP01MDCAgro" para "10,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC12"
Quando seleciono o pedido "PEDIDO01-MDC12" na cesta do usuário
E clico no botão Recriar Uts na cesta do usuario

Cenario: Exclusão de Dependências
Dado que excluo o pedido "PEDIDO01-MDC"
Dado que excluo o pedido "PEDIDO01-MDC0"
Dado que excluo o pedido "PEDIDO01-MDC1" 
Dado que excluo o pedido "PEDIDO01-MDC2" 
Dado que excluo o pedido "PEDIDO01-MDC3" 
Dado que excluo o pedido "PEDIDO01-MDC4" 
Dado que excluo o pedido "PEDIDO01-MDC5" 
Dado que excluo o pedido "PEDIDO01-MDC6" 
Dado que excluo o pedido "PEDIDO01-MDC7" 
Dado que excluo o pedido "PEDIDO01-MDC8" 
Dado que excluo o pedido "PEDIDO01-MDC9" 
Dado que excluo o pedido "PEDIDO01-MDC10"
Dado que excluo o pedido "PEDIDO01-MDC11"
Dado que excluo o pedido "PEDIDO01-MDC12"
Dado que excluo o pedido "PEDIDO01-MDC13"
Dado que excluo o pedido "PEDIDO01-MDC14"
Dado que excluo o produto "PRODDEP01MDCAgro"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPMDCAgro"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPMDCAgro"
Dado que excluo a localidade "LOCORIGEMDEPMDCAgro"
Dado que excluo a localidade "LOCDESTDEPMDCAgro"
Dado que excluo a localidade "LOCPASSHUBDEPMDCAgro"
Dado que excluo a localidade "LOCDESTHUBDEPMDCAgro"
Dado que excluo a categoria de produto "CATPRODDEP01MDCAgro"
Dado que excluo o embarcador "EMBDEP01MDCAgro"
Dado que excluo o invólucro "INVDEP01MDCAgro"