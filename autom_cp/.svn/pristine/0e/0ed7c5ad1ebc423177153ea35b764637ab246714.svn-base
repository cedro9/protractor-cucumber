#language:pt

@GTF-Agro
@SelecaoGTFAgro

Funcionalidade: Seleção

Cenario: Cadastro de Dependências
Dado que cadastro o usuário "USERDEPSELAgro"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPSELAgro"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPSELAgro"
Dado que cadastro a origem "LOCORIGEMDEPSEL" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro o destino "LOCDESTDEPSEL" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que cadastro o hub de destino "LOCPASSHUBDEPSEL" com a restrição de localidade "Padrao" e Cep "02357-002"
Dado que adiciono a origem "LOCORIGEMDEPSEL" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro a categoria de produto "CATPRODDEPSELagro"
Dado que cadastro o embarcador "EMBDEPSEL"
Dado que cadastro o produto "PRODDEPSEL" com a categoria "CATPRODDEPSELagro" e embarcador "EMBDEPSEL"
Dado que cadastro o invólucro "INVDEPSEL" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDOSEL01" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSELAgro" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produto "PRODDEPSEL" item de pedido "TIPOITEMDEPSELAgro" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro o pedido "PEDIDOSEL03" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSELAgro" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produto "PRODDEPSEL" item de pedido "TIPOITEMDEPSELAgro" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro o pedido "PEDIDOSEL02" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSELAgro" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produto "PRODDEPSEL" item de pedido "TIPOITEMDEPSELAgro" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro a viagem "PEDIDOSEL02"

# NLGPRODUTO-586
Cenario: Cesta de Pedidos - Mover um Pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando oculto a cesta de viagens
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL01"
Quando Seleciono o pedido "PEDIDOSEL01" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "USERDEPSELAgro"
Então é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL01"
Quando clico no pedido "PEDIDOSEL01" para visualizar a UT
E valido se o usuário selecionado é o "USERDEPSELAgro"

# NLGPRODUTO-586
Cenario: Cesta de Pedidos - Mover um item de pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando oculto a cesta de viagens
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL03"
E expando o header do pedido
E seleciono o item de pedido "PEDIDOSEL03/1" na cesta geral
E clico no botão Mover Pedidos
Quando seleciono o usuario "USERDEPSELAgro"
Então é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL03"
Quando clico no pedido "PEDIDOSEL03" para visualizar a UT
E valido se o usuário selecionado é o "USERDEPSELAgro"

Cenario: Cesta de Viagens - Mover uma Viagem com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Viagem com o codigo "PEDIDOSEL02"
Quando Seleciono a viagem "PEDIDOSEL02" da Cesta de viagem
E clico no botão Mover Viagens
Quando movo para o usuario "USERDEPSELAgro"
Então é exibido a mensagem "Movimentação de viagens efetuada com sucesso."
E clico no botão OK
E valido se o usuário selecionado na viagem é o "USERDEPSELAgro"
E retorno a viagem para o usuario "regional.Agro"

Cenario: Exclusão de Dependências
Dado que excluo o pedido "PEDIDOSEL02"
Dado que excluo o pedido "PEDIDOSEL03"
Dado que excluo o pedido "PEDIDOSEL01"
Dado que excluo o produto "PRODDEPSEL"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPSELAgro"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPSELAgro"
Dado que excluo a categoria de produto "CATPRODDEPSELagro"
Dado que excluo o embarcador "EMBDEPSEL"
Dado que excluo o invólucro "INVDEPSEL"
Dado que excluo a localidade "LOCORIGEMDEPSEL"
Dado que excluo a localidade "LOCDESTDEPSEL"
Dado que excluo a localidade "LOCPASSHUBDEPSEL"