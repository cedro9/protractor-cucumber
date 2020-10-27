#language:pt

@SEB
@MovimentoEntreCestasSEB

Funcionalidade: Movimento entre Cestas SEB

Cenario: Cadastro de Dependências
Dado que cadastro o produto "PRODDEPMECSEB" com a categoria "DAT" e embarcador "SEB"
Dado que cadastro o produto "PRODDEPMECSEB2" com a categoria "DAT" e embarcador "SEB"
Dado que cadastro o pedido "PEDIDO02-MDCSEB" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "187 CENTRAL CARIOCA PCS LTDA" origem "SEB-CD Rio de Janeiro" produto "PRODDEPMECSEB" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ATUAL SERV TRANSP RAP LTDA"
Dado que cadastro o pedido "PEDIDO03-MDCSEB" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "187 CENTRAL CARIOCA PCS LTDA" origem "SEB-CD Rio de Janeiro" produto "PRODDEPMECSEB2" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ATUAL SERV TRANSP RAP LTDA"
Dado que cadastro o pedido "PEDIDO01-MDCSEB" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "187 CENTRAL CARIOCA PCS LTDA" origem "SEB-CD Rio de Janeiro" produto "AS-0270 RING" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ATUAL SERV TRANSP RAP LTDA"
Dado que copio o Pedido "PEDIDO01-MDCSEB", localidade "SEB-CD Rio de Janeiro", Produtos "AS-0270 RING", tipo de Item de Pedido "Padrão" e Involucros "Granel" "15" vezes
Dado que cadastro a viagem SEB "PEDIDO01-MDCSEB2"

Cenario: Cesta de Pedidos - Mover um Pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB1"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-MDCSEB1" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
## Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC1"
## Quando clico no pedido "PEDIDO01-MDC1" para visualizar a UT
## E valido se o usuário selecionado no pedido é o "Neolog"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB1"
Então o pedido "PEDIDO01-MDCSEB1" deve ser exibido

Cenario: Cesta de Viagens - Mover uma Viagem com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Viagem com o codigo "PEDIDO01-MDCSEB2"
Quando Seleciono a viagem "PEDIDO01-MDCSEB2" da Cesta de viagem
E clico no botão Mover Viagens
Quando seleciono o usuario "Aline"
Entao é exibido a mensagem "Movimentação de viagens efetuada com sucesso."
E clico no botão OK
E valido se o usuário selecionado na viagem é o "Aline"
E retorno a viagem para o usuario "Neolog"

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando somente uma UT
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB0"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono uma UT
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB0"
Então o pedido "PEDIDO01-MDCSEB0" deve ser exibido

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de uma UT
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB5"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono duas UTs
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB5"
Então o pedido "PEDIDO01-MDCSEB5" deve ser exibido

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de um pedido
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB6,PEDIDO01-MDCSEB7"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDCSEB6" da Cesta de Pedidos
Quando Seleciono o pedido "PEDIDO01-MDCSEB7" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
E configuro a Ordenação da cesta do usuário em ordem crescente
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB6"
Então o pedido "PEDIDO01-MDCSEB6" deve ser exibido
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB7"
Então o pedido "PEDIDO01-MDCSEB7" deve ser exibido

Cenario: Cesta Geral - Recriar Uts
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEPMECSEB" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO02-MDCSEB"
Quando Seleciono o pedido "PEDIDO02-MDCSEB" da Cesta Geral
E clico para expandir o pedido e visualizar as Uts da cesta geral
E o peso do pedido na cesta Geral deve ser "10"
E clico no botão Recriar Uts
E clico para expandir o pedido e visualizar as Uts da cesta geral
Então o peso do pedido na cesta Geral deve ser "200"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEPMECSEB" para "10,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO02-MDCSEB"
Quando Seleciono o pedido "PEDIDO02-MDCSEB" da Cesta Geral
E clico no botão Recriar Uts

Cenario: Mover um Pedido com sucesso - Mover todas as paginas da cesta geral para usuario
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDCSEB"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
E que acesso a tela "Programação", "Pedido"

Cenario: Cesta do Usuario - Mover pedido para Cesta Geral
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB9"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDCSEB9" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB9"
Então o pedido "PEDIDO01-MDCSEB9" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDCSEB9" na cesta do usuário
E clico no botão Mover para cesta Geral
Quando oculto minha cesta
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDCSEB9"
Então o pedido "PEDIDO01-MDCSEB9" deve ser exibido na cesta Geral

Cenario: Cesta do Usuario - Mover pedido para um Usuario especifico
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB10"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "PEDIDO01-MDCSEB10" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB10"
Então o pedido "PEDIDO01-MDCSEB10" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDCSEB10" na cesta do usuário
E clico no botão Mover Para
Quando seleciono o usuario "Aline"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDCSEB10"
Quando oculto a cesta de viagens
Quando clico no pedido "PEDIDO01-MDCSEB10" para visualizar a UT
# E valido se o usuário selecionado no pedido é o "Aline"

Cenario: Cesta do Usuario - Mover todos as paginas para a Cesta Geral
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDCSEB11, PEDIDO01-MDCSEB12, PEDIDO01-MDCSEB13"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDCSEB11, PEDIDO01-MDCSEB12, PEDIDO01-MDCSEB13"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
Quando desabilito a exibiçao da Cesta do Usuairo  e habilito Cesta geral
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDCSEB11, PEDIDO01-MDCSEB12, PEDIDO01-MDCSEB13"
Entao os pedidos devem ser exibidos

Cenario: Cesta do Usuario - Recriar Uts
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO03-MDCSEB"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO03-MDCSEB" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEPMECSEB2" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO03-MDCSEB"
Quando seleciono o pedido "PEDIDO03-MDCSEB" na cesta do usuário
E o peso do pedido na cesta do Usuario deve ser "10"
E clico no botão Recriar Uts na cesta do usuario
Então o peso do pedido na cesta do Usuario deve ser "200"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEPMECSEB2" para "10,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO03-MDCSEB"
Quando seleciono o pedido "PEDIDO03-MDCSEB" na cesta do usuário
E clico no botão Recriar Uts na cesta do usuario

Cenario: Exclusão de Dependências
Dado que excluo a viagem SEB "PEDIDO01-MDCSEB2"
Dado que excluo o pedido "PEDIDO01-MDCSEB" "15" vezes
Dado que excluo o pedido "PEDIDO01-MDCSEB"
Dado que excluo o pedido "PEDIDO02-MDCSEB"
Dado que excluo o pedido "PEDIDO03-MDCSEB"
Dado que excluo o produto "PRODDEPMECSEB"
Dado que excluo o produto "PRODDEPMECSEB2"