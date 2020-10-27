#language:pt

@WHP
@MovimentoEntreCestasWHP

Funcionalidade: Movimento entre Cestas

Cenario: Cadastro de Dependências
Dado que cadastro a viagem "AUTOMTESTE86"

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando somente uma UT
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE89"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono uma UT
E clico no botão Mover Pedidos
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE89"
Então o pedido "AUTOMTESTE89" deve ser exibido
E clico no botão Mover Todas as paginas para Geral

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de uma UT
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE92"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono duas UTs
E clico no botão Mover Pedidos
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE92"
Então o pedido "AUTOMTESTE92" deve ser exibido
E clico no botão Mover Todas as paginas para Geral

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de um pedido
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE95,AUTOMTESTE98"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "AUTOMTESTE95" da Cesta de Pedidos
Quando Seleciono o pedido "AUTOMTESTE98" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
E configuro a Ordenação da cesta do usuário em ordem crescente
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE95,AUTOMTESTE98"
Então o pedido "AUTOMTESTE95" deve ser exibido
Então o pedido "AUTOMTESTE98" deve ser exibido
E clico no botão Mover Todas as paginas para Geral

Cenario: Mover um Pedido com sucesso - Mover todas as paginas da cesta geral para usuario
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "AUTOMTESTE104"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE104"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
E que acesso a tela "Programação", "Pedido"

Cenario: Cesta do Usuario - Mover pedido para Cesta Geral
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE107"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "AUTOMTESTE107" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE107"
Então o pedido "AUTOMTESTE107" deve ser exibido
Quando seleciono o pedido "AUTOMTESTE107" na cesta do usuário
E clico no botão Mover para cesta Geral
Quando oculto minha cesta
Quando filtro a cesta geral pelo pedido "AUTOMTESTE107"
Então o pedido "AUTOMTESTE107" deve ser exibido na cesta Geral

Cenario: Cesta do Usuario - Mover pedido para um Usuario especifico
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE110"
Quando oculto a cesta de viagens
Quando Seleciono o pedido "AUTOMTESTE110" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE110"
Então o pedido "AUTOMTESTE110" deve ser exibido
Quando seleciono o pedido "AUTOMTESTE110" na cesta do usuário
E clico no botão Mover Para
Quando seleciono o usuario "Carlos P Neves"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "AUTOMTESTE110"
Quando oculto a cesta de viagens
Quando clico no pedido "AUTOMTESTE110" para visualizar a UT
E valido se o usuário selecionado no pedido é o "Carlos P Neves"
Quando seleciono o pedido "AUTOMTESTE110" na cesta do usuário
E clico no botão Mover Para
Quando seleciono o usuario "Carlos P Neves"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE110"
E clico no botão Mover Todas as paginas para Geral

Cenario: Cesta do Usuario - Mover todos as paginas para a Cesta Geral
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "AUTOMTESTE113, AUTOMTESTE122, AUTOMTESTE119"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE113, AUTOMTESTE122, AUTOMTESTE119"
Então clico para exibir 50 registros e os pedidos movidos devem ser exibidos
E clico no botão Mover Todas as paginas para Geral
Quando desabilito a exibiçao da Cesta do Usuairo  e habilito Cesta geral
Quando filtro a cesta geral pelo pedido "AUTOMTESTE113, AUTOMTESTE122, AUTOMTESTE119"
Entao os pedidos devem ser exibidos

Cenario: Exclusão de Dependências
Dado que excluo a viagem "AUTOMTESTE86"