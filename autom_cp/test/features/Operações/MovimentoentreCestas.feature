#language:pt

@Operacoes
@MovimentoEntreCestas

Funcionalidade: Movimento entre Cestas

Cenario: Cadastro de Dependências
Dado que cadastro o usuário "USERDEPMDC"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEP-MDC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEP-MDC"
Dado que cadastro a restrição de localidade "RESLOCDEP-MDC"
Dado que cadastro a origem "LOCORIGEMDEP-MDC" com a restrição de localidade "RESLOCDEP-MDC" e Cep "02357-002"
Dado que cadastro o destino "LOCDESTDEP-MDC" com a restrição de localidade "RESLOCDEP-MDC" e Cep "02357-002"
Dado que cadastro o hub de passagem "LOCPASSHUBDEP-MDC" com a restrição de localidade "RESLOCDEP-MDC" e Cep "02357-002"
Dado que cadastro o hub de destino "LOCDESTHUBDEP-MDC" com a restrição de localidade "RESLOCDEP-MDC" e Cep "02357-002"
Dado que cadastro a categoria de produto "CATPRODDEP01-MDC"
Dado que cadastro o embarcador "EMBDEP01-MDC"
Dado que cadastro o produto "PRODDEP01-MDC" com a categoria "CATPRODDEP01-MDC" e embarcador "EMBDEP01-MDC"
Dado que cadastro o invólucro "INVDEP01-MDC" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDO01-MDC" do embarcador "EMBDEP01-MDC" tipo de pedido "TIPOPEDIDODEP-MDC" destino "LOCDESTDEP-MDC" origem "LOCORIGEMDEP-MDC" produto "PRODDEP01-MDC" item de pedido "TIPOITEMDEP-MDC" e invólucro "INVDEP01-MDC" e Hub de destino "LOCDESTHUBDEP-MDC"
Dado que copio o Pedido "PEDIDO01-MDC", localidade "LOCORIGEMDEP-MDC", Produtos "PRODDEP01-MDC", tipo de Item de Pedido "TIPOITEMDEP-MDC" e Involucros "INVDEP01-MDC" "15" vezes

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC0"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono uma UT
E clico em Mover pedidos para minha cesta
E oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC0"
Entao verifico se na cesta geral o pedido contem "3" itens de pedido
Entao verifico se na cesta do usuário o pedido contem "1" item de pedido
E clico no botão "Mover todas as páginas para a geral"

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de uma UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC5"
Quando clico para expandir o pedido e visualizar as Uts
Quando seleciono duas UTs
E clico em Mover pedidos para minha cesta
E oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC5"
Entao verifico se na cesta geral o pedido contem "2" itens de pedido
Entao verifico se na cesta do usuário o pedido contem "2" item de pedido
E clico no botão "Mover todas as páginas para a geral"

Cenario: Mover um Pedido com sucesso - Mover da cesta geral para usuario selecionando mais de um pedido
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC6,PEDIDO01-MDC7"
Quando seleciono o pedido "PEDIDO01-MDC6" na cesta geral
Quando seleciono o pedido "PEDIDO01-MDC7" na cesta geral
E clico em Mover pedidos para minha cesta
E oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC6,PEDIDO01-MDC7"
Entao o pedido "PEDIDO01-MDC6" deve ser exibido
Entao o pedido "PEDIDO01-MDC7" deve ser exibido
E clico no botão "Mover todas as páginas para a geral"

Cenario: Cesta Geral - Recriar Uts
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEP01-MDC" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC8"
Quando Seleciono o pedido "PEDIDO01-MDC8" da Cesta Geral
E clico para expandir o pedido e visualizar as Uts da cesta geral
E o peso do pedido na cesta Geral deve ser "40"
E clico no botão Recriar Uts
E clico para expandir o pedido e visualizar as Uts da cesta geral
Entao o peso do pedido na cesta Geral deve ser "800"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEP01-MDC" para "1"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC8"
Quando Seleciono o pedido "PEDIDO01-MDC8" da Cesta Geral
E clico no botão Recriar Uts

Cenario: Mover um Pedido com sucesso - Mover todas as paginas da cesta geral para usuario
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC"
E clico no botão Mover Todas as paginas para Geral

Cenario: Cesta do Usuario - Mover pedido para Cesta Geral
Dado que acesso a tela "Programação", "Análise"
Quando oculto a cesta de viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC9"
Quando seleciono o pedido "PEDIDO01-MDC9" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC9"
Entao o pedido "PEDIDO01-MDC9" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDC9" na cesta do usuário
E clico no botão Mover para cesta Geral
Quando oculto minha cesta
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC9"
Entao o pedido "PEDIDO01-MDC9" deve ser exibido na cesta Geral

Cenario: Cesta do Usuario - Mover pedido para um Usuario especifico
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC10"
Quando seleciono o pedido "PEDIDO01-MDC10" na cesta geral
E clico em Mover pedidos para minha cesta
Quando oculto a cesta de viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC10"
Entao o pedido "PEDIDO01-MDC10" deve ser exibido
Quando seleciono o pedido "PEDIDO01-MDC10" na cesta do usuário
E clico no botão Mover Para
Quando movo para o usuario "USERDEPMDC"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-MDC10"
Quando oculto a cesta de viagens
Quando clico no pedido "PEDIDO01-MDC10" para visualizar a UT
E valido se o usuário selecionado no pedido é o "USERDEPMDC"

Cenario: Cesta do Usuario - Mover todos as paginas para a Cesta Geral
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta do usuario e Viagens
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
E clico no botão Mover Todas as paginas para Cesta
Quando desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
E clico no botão Mover Todas as paginas para Geral
Quando desabilito a exibiçao da Cesta do Usuairo  e habilito Cesta geral
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC11, PEDIDO01-MDC12, PEDIDO01-MDC13"
Entao os pedidos devem ser exibidos

Cenario: Cesta do Usuario - Recriar Uts
Dado que acesso a tela "Cadastro", "Produtos"
Dado que altero o peso do produto "PRODDEP01-MDC" para "20,00"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-MDC14"
E clico no botão Mover Todas as paginas para Cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC14"
Quando seleciono o pedido "PEDIDO01-MDC14" na cesta do usuário
E o peso do pedido na cesta do Usuario deve ser "40"
E clico no botão Recriar Uts na cesta do usuario
Entao o peso do pedido na cesta do Usuario deve ser "800"
Dado que acesso a tela "Cadastro", "Produtos"
E que altero o peso do produto "PRODDEP01-MDC" para "1"
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-MDC14"
Quando seleciono o pedido "PEDIDO01-MDC14" na cesta do usuário
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
Dado que excluo o produto "PRODDEP01-MDC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEP-MDC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEP-MDC"
Dado que excluo a localidade "LOCORIGEMDEP-MDC"
Dado que excluo a localidade "LOCDESTDEP-MDC"
Dado que excluo a localidade "LOCPASSHUBDEP-MDC"
Dado que excluo a localidade "LOCDESTHUBDEP-MDC"
Dado que excluo a restrição de localidade "RESLOCDEP-MDC"
Dado que excluo a categoria de produto "CATPRODDEP01-MDC"
Dado que excluo o embarcador "EMBDEP01-MDC"
Dado que excluo o invólucro "INVDEP01-MDC"
Dado que excluo o usuário "USERDEPMDC"