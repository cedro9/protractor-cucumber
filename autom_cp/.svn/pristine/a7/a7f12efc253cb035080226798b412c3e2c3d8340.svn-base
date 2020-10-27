#language:pt

@MCB
@mixProductsInShipmentUnitWrapperByClient

Funcionalidade: Misturar produtos no mesmo palete de acordo com o cliente (destino)
# https://neolog.atlassian.net/browse/MCA-155

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPMPISUWBC" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPMPISUWBC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPMPISUWBC"
Dado que cadastro a restrição de localidade "RESTLOCDEPMPISUWBC"
Dado que cadastro a origem "LOCORIGEMDEPMPISUWBC" com a restrição de localidade "RESTLOCDEPMPISUWBC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPMPISUWBC01" com a restrição de localidade "RESTLOCDEPMPISUWBC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPMPISUWBC02" com a restrição de localidade "RESTLOCDEPMPISUWBC" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPMPISUWBC"
Dado que cadastro o embarcador "EMBDEPMPISUWBC"
Dado que cadastro o produto "PRODDEPMPISUWBC01" com a categoria "CATPRODDEPMPISUWBC" e embarcador "EMBDEPMPISUWBC" e classificação classe de risco "N/A"
Dado que cadastro o produto "PRODDEPMPISUWBC02" com a categoria "CATPRODDEPMPISUWBC" e embarcador "EMBDEPMPISUWBC" e classificação classe de risco "N/A"
Dado que altero as dimensões do produto "PRODDEPMPISUWBC01" para "0,1"
Dado que altero as dimensões do produto "PRODDEPMPISUWBC02" para "0,1"
Dado que cadastro o invólucro "INVDEPMPISUWBC" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPMPISUWBC01" do embarcador "EMBDEPMPISUWBC" tipo de pedido "TIPOPEDIDODEPMPISUWBC" destino "LOCDESTDEPMPISUWBC01" origem "LOCORIGEMDEPMPISUWBC" produto "PRODDEPMPISUWBC01" item de pedido "TIPOITEMDEPMPISUWBC" e invólucro "INVDEPMPISUWBC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPMPISUWBC02" do embarcador "EMBDEPMPISUWBC" tipo de pedido "TIPOPEDIDODEPMPISUWBC" destino "LOCDESTDEPMPISUWBC01" origem "LOCORIGEMDEPMPISUWBC" produto "PRODDEPMPISUWBC02" item de pedido "TIPOITEMDEPMPISUWBC" e invólucro "INVDEPMPISUWBC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPMPISUWBC03" do embarcador "EMBDEPMPISUWBC" tipo de pedido "TIPOPEDIDODEPMPISUWBC" destino "LOCDESTDEPMPISUWBC02" origem "LOCORIGEMDEPMPISUWBC" produto "PRODDEPMPISUWBC01" item de pedido "TIPOITEMDEPMPISUWBC" e invólucro "INVDEPMPISUWBC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPMPISUWBC04" do embarcador "EMBDEPMPISUWBC" tipo de pedido "TIPOPEDIDODEPMPISUWBC" destino "LOCDESTDEPMPISUWBC02" origem "LOCORIGEMDEPMPISUWBC" produto "PRODDEPMPISUWBC02" item de pedido "TIPOITEMDEPMPISUWBC" e invólucro "INVDEPMPISUWBC" e classificação "Não exige agendamento"
Dado que altero a classificação misturar SKUs no mesmo palete "Não" da localidade de destino "LOCDESTDEPMPISUWBC02"
Dado que configuro o validador de pós-restrição "Misturar SKUs no mesmo palete" no contexto de unitização "Unitização Palete"

Cenário: Validar que, quando a classificação de localidade misturar SKUs no mesmo palete tiver um valor positivo, podem ser misturados produtos diferentes no mesmo palete
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPMPISUWBC01,PEDIDODEPMPISUWBC02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPMPISUWBC01,PEDIDODEPMPISUWBC02"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que, mesmo quando a classificação de localidade misturar SKUs no mesmo palete tiver um valor positivo, não é possível unitizar UTs com locais de carregamento/descarregamento diferentes
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPMPISUWBC01,PEDIDODEPMPISUWBC03"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPMPISUWBC01,PEDIDODEPMPISUWBC03"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido a mensagem "Não é possível unitizar UTs com locais de carregamento/descarregamento diferentes."
E clico no botão OK
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que, quando a classificação de localidade misturar SKUs no mesmo palete tiver um valor negativo, não podem ser misturados produtos diferentes no mesmo palete (deve quebrar em mais de um palete)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPMPISUWBC03,PEDIDODEPMPISUWBC04"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPMPISUWBC03,PEDIDODEPMPISUWBC04"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido a mensagem que contem "Não é possível unitizar pedidos mistos para os destinos: LOCDESTDEPMPISUWBC02"
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPMPISUWBC01"
Dado que excluo o pedido "PEDIDODEPMPISUWBC02"
Dado que excluo o pedido "PEDIDODEPMPISUWBC03"
Dado que excluo o pedido "PEDIDODEPMPISUWBC04"
Dado que excluo o produto "PRODDEPMPISUWBC01"
Dado que excluo o produto "PRODDEPMPISUWBC02"
Dado que excluo o invólucro "INVDEPMPISUWBC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPMPISUWBC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPMPISUWBC"
Dado que excluo a categoria de produto "CATPRODDEPMPISUWBC"
Dado que excluo o embarcador "EMBDEPMPISUWBC"
Dado que excluo a localidade "LOCORIGEMDEPMPISUWBC"
Dado que excluo a localidade "LOCDESTDEPMPISUWBC01"
Dado que excluo a localidade "LOCDESTDEPMPISUWBC02"
Dado que excluo a restrição de localidade "RESTLOCDEPMPISUWBC"