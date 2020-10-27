#language:pt

@Programacao
@Selecao

Funcionalidade: Seleção

Cenario: Cadastro de Dependências
Dado que cadastro o usuário "USERDEPSEL"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPSEL"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPSEL"
Dado que cadastro a restrição de localidade "RESLOCDEPSEL"
Dado que cadastro a origem "LOCORIGEMDEPSEL" com a restrição de localidade "RESLOCDEPSEL" e Cep "02357-002"
Dado que cadastro o destino "LOCDESTDEPSEL" com a restrição de localidade "RESLOCDEPSEL" e Cep "02357-002"
Dado que cadastro o hub de destino "LOCPASSHUBDEPSEL" com a restrição de localidade "RESLOCDEPSEL" e Cep "02357-002"
Dado que adiciono a origem "LOCORIGEMDEPSEL" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro a categoria de produto "CATPRODDEPSEL"
Dado que cadastro o embarcador "EMBDEPSEL"
Dado que cadastro o produto "PRODDEPSEL" com a categoria "CATPRODDEPSEL" e embarcador "EMBDEPSEL"
Dado que cadastro o produto "PRODDEPSEL02" com a categoria "CATPRODDEPSEL" e embarcador "EMBDEPSEL"
Dado que cadastro o invólucro "INVDEPSEL" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDOSEL01" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSEL" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produto "PRODDEPSEL" item de pedido "TIPOITEMDEPSEL" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro o pedido "PEDIDOSEL02" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSEL" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produto "PRODDEPSEL" item de pedido "TIPOITEMDEPSEL" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro o pedido "PEDIDOSEL03" do embarcador "EMBDEPSEL" tipo de pedido "TIPOPEDIDODEPSEL" destino "LOCDESTDEPSEL" origem "LOCORIGEMDEPSEL" produtos "PRODDEPSEL" e "PRODDEPSEL02" item de pedido "TIPOITEMDEPSEL" e invólucro "INVDEPSEL" e Hub de destino "LOCPASSHUBDEPSEL"
Dado que cadastro a viagem com o pedido "PEDIDOSEL02"

Cenario: Cesta de Pedidos - Mover um Pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando oculto a cesta de viagens
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL01"
Quando Seleciono o pedido "PEDIDOSEL01" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "USERDEPSEL"
Então é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL01"
Quando clico no pedido "PEDIDOSEL01" para visualizar a UT
E valido se o usuário selecionado no pedido é o "USERDEPSEL"

Cenario: Cesta de Pedidos - Mover um item de pedido com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando oculto a cesta de viagens
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL03"
E expando o header do pedido
E seleciono o primeiro item de pedido
E clico no botão Mover Pedidos
Quando seleciono o usuario "USERDEPSEL"
Então é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOSEL03"
Quando clico no pedido "PEDIDOSEL03" para visualizar a UT
E valido se o usuário selecionado no pedido é o "USERDEPSEL"

Cenario: Cesta de Viagens - Mover uma Viagem com sucesso
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Viagem com o codigo "PEDIDOSEL02"
Quando Seleciono a viagem "PEDIDOSEL02" da Cesta de viagem
E clico no botão Mover Viagens
Quando movo para o usuario "USERDEPSEL"
Então é exibido a mensagem "Movimentação de viagens efetuada com sucesso."
E clico no botão OK
E valido se o usuário selecionado na viagem é o "USERDEPSEL"
E retorno a viagem para o usuario "Neolog"

Cenario: Exclusão de Dependências
Dado que excluo a viagem "PEDIDOSEL02"
Dado que excluo o pedido "PEDIDOSEL01"
Dado que excluo o pedido "PEDIDOSEL02"
Dado que excluo o pedido "PEDIDOSEL03"
Dado que excluo o produto "PRODDEPSEL"
Dado que excluo o produto "PRODDEPSEL02"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPSEL"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPSEL"
Dado que excluo a categoria de produto "CATPRODDEPSEL"
Dado que excluo o embarcador "EMBDEPSEL"
Dado que excluo o invólucro "INVDEPSEL"
Dado que excluo a localidade "LOCORIGEMDEPSEL"
Dado que excluo a localidade "LOCDESTDEPSEL"
Dado que excluo a localidade "LOCPASSHUBDEPSEL"
Dado que excluo a restrição de localidade "RESLOCDEPSEL"
Dado que excluo o usuário "USERDEPSEL"