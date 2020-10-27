#language:pt

@MCB
@shipmentUnitWrapperBatchSegregation

Funcionalidade: Separação de lotes diferentes por palete
# https://neolog.atlassian.net/browse/MCA-112

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPACSUWISB" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPACSUWISB"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPACSUWISB"
Dado que cadastro a restrição de localidade "RESTLOCDEPACSUWISB"
Dado que cadastro a origem "LOCORIGEMDEPACSUWISB" com a restrição de localidade "RESTLOCDEPACSUWISB" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPACSUWISB" com a restrição de localidade "RESTLOCDEPACSUWISB" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPACSUWISB"
Dado que cadastro o embarcador "EMBDEPACSUWISB"
Dado que cadastro o produto "PRODDEPACSUWISB01" com a categoria "CATPRODDEPACSUWISB" e embarcador "EMBDEPACSUWISB" e classificação classe de risco "N/A"
Dado que cadastro o produto "PRODDEPACSUWISB02" com a categoria "CATPRODDEPACSUWISB" e embarcador "EMBDEPACSUWISB" e classificação classe de risco "N/A"
Dado que altero as dimensões do produto "PRODDEPACSUWISB01" para "0,1"
Dado que altero as dimensões do produto "PRODDEPACSUWISB02" para "0,1"
Dado que cadastro o invólucro "INVDEPACSUWISB" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPACSUWISB01" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB01" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPACSUWISB02" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB01" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPACSUWISB03" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB02" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPACSUWISB04" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB02" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que altero o atributo de item de pedido do pedido "PEDIDODEPACSUWISB01", lote de produção, com o valor "102120365"
Dado que altero o atributo de item de pedido do pedido "PEDIDODEPACSUWISB02", lote de produção, com o valor "102120365"
Dado que altero o atributo de item de pedido do pedido "PEDIDODEPACSUWISB03", lote de produção, com o valor "202120365"
Dado que configuro o validador de pós-restrição "Validador de lote de produção por palete" no contexto de unitização "Unitização Palete"
Dado que configuro o validador de seleção "Validador de lote de produção por palete" no contexto de unitização "Unitização Palete"
Dado que preencho o parâmetro genérico categorias de invólucro permitidas por contexto de unitização com o contexto de unitização "Unitização Palete" e categoria de invólucro "Palete"

Cenário: Validar que é possível, em operação manual, configurar num mesmo palete itens que contém o mesmo lote de produção como atributo de item de pedido
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido a mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que não é possível, em operação manual, configurar num mesmo palete itens que contém lotes de produção diferentes como atributo de item de pedido
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB03"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB03"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido a mensagem que contem "Somente um lote de produção por palete."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que não é possível, em operação manual, configurar num mesmo palete itens que contém e que não contém lote de produção como atributo de item de pedido
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPACSUWISB03,PEDIDODEPACSUWISB04"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB03,PEDIDODEPACSUWISB04"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido a mensagem que contem "Somente um lote de produção por palete."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPACSUWISB01"
Dado que excluo o pedido "PEDIDODEPACSUWISB02"
Dado que excluo o pedido "PEDIDODEPACSUWISB03"
Dado que excluo o pedido "PEDIDODEPACSUWISB04"
Dado que excluo o produto "PRODDEPACSUWISB01"
Dado que excluo o produto "PRODDEPACSUWISB02"
Dado que excluo o invólucro "INVDEPACSUWISB"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPACSUWISB"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPACSUWISB"
Dado que excluo a categoria de produto "CATPRODDEPACSUWISB"
Dado que excluo o embarcador "EMBDEPACSUWISB"
Dado que excluo a localidade "LOCORIGEMDEPACSUWISB"
Dado que excluo a localidade "LOCDESTDEPACSUWISB"
Dado que excluo a restrição de localidade "RESTLOCDEPACSUWISB"