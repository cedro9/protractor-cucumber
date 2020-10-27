#language:pt

@MCB
@doNotMixDifferentWrappersWithinTheSamePallet

Funcionalidade: Não misturar invólucros diferentes dentro do mesmo palete
# https://neolog.atlassian.net/browse/MCA-164

Cenário: Cadastro de dependências
Dado que cadastro o agrupador de zt "AZTDEPMDWWTSP"
Dado que cadastro o calculador de tipo de serviço "CALTPSERVDEPMDWWTSP" com o agrupador de zona de transporte "AZTDEPMDWWTSP"
Dado que cadastro o tipo de pedido "TPPEDDEPMDWWTSP"
Dado que cadastro o tipo de item de pedido "IPDEPMDWWTSP"
Dado que cadastro o invólucro "INVDEPMDWWTSP01" com politicas definidas no produto
Dado que cadastro o invólucro "INVDEPMDWWTSP02" com politicas definidas no produto
Dado que cadastro o embarcador "EMBDEPMDWWTSP"
Dado que cadastro a categoria de produto "CATPRODDEPMDWWTSP"
Dado que altero a classificação paletização para "Paletizado" da categoria de produto "CATPRODDEPMDWWTSP"
Dado que cadastro o produto "PRODDEPMDWWTSP01" com a categoria "CATPRODDEPMDWWTSP" e embarcador "EMBDEPMDWWTSP"
Dado que cadastro o produto "PRODDEPMDWWTSP02" com a categoria "CATPRODDEPMDWWTSP" e embarcador "EMBDEPMDWWTSP"
Dado que cadastro a restrição de localidade "RESTLOCDEPMDWWTSP"
Dado que cadastro a zona de transporte "ZTDEPMDWWTSP" do tipo região do agrupador do agrupador "AZTDEPMDWWTSP" com a restrição de localidade "RESTLOCDEPMDWWTSP" e prioridade "1"
Dado que cadastro a origem "ORIDEPMDWWTSP" com a restrição de localidade "RESTLOCDEPMDWWTSP" e Cep "08061-020"
Dado que cadastro o destino "DESTDEPMDWWTSP" com a restrição de localidade "RESTLOCDEPMDWWTSP" e Cep "08061-020"
Dado que cadastro o pedido "PEDIDODEPMDWWTSP01" do embarcador "EMBDEPMDWWTSP" tipo de pedido "TPPEDDEPMDWWTSP" destino "DESTDEPMDWWTSP" origem "ORIDEPMDWWTSP" produto "PRODDEPMDWWTSP01" item de pedido "IPDEPMDWWTSP" e invólucro "INVDEPMDWWTSP01" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPMDWWTSP02" do embarcador "EMBDEPMDWWTSP" tipo de pedido "TPPEDDEPMDWWTSP" destino "DESTDEPMDWWTSP" origem "ORIDEPMDWWTSP" produto "PRODDEPMDWWTSP02" item de pedido "IPDEPMDWWTSP" e invólucro "INVDEPMDWWTSP02" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPMDWWTSP03" do embarcador "EMBDEPMDWWTSP" tipo de pedido "TPPEDDEPMDWWTSP" destino "DESTDEPMDWWTSP" origem "ORIDEPMDWWTSP" produto "PRODDEPMDWWTSP01" item de pedido "IPDEPMDWWTSP" e invólucro "INVDEPMDWWTSP01" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPMDWWTSP04" do embarcador "EMBDEPMDWWTSP" tipo de pedido "TPPEDDEPMDWWTSP" destino "DESTDEPMDWWTSP" origem "ORIDEPMDWWTSP" produto "PRODDEPMDWWTSP02" item de pedido "IPDEPMDWWTSP" e invólucro "INVDEPMDWWTSP02" e Hub de destino " "

Cenario: Operação Manual com restrição desligada
Dado que desconfiguro o validador de pré-restrição "Não misturar invólucros diferentes dentro do mesmo palete" no contexto de unitização "Unitização Palete"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPMDWWTSP01,PEDIDODEPMDWWTSP02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPMDWWTSP01,PEDIDODEPMDWWTSP02"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Operação Manual com restrição ligada
Dado que configuro o validador de pré-restrição "Não misturar invólucros diferentes dentro do mesmo palete" no contexto de unitização "Unitização Palete"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPMDWWTSP03,PEDIDODEPMDWWTSP04"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPMDWWTSP03,PEDIDODEPMDWWTSP04"
E unitizo atravez da operação manual em todas as páginas com o contexto "MCB_DEF"
E é exibido uma mensagem de violação que contem "Não pode misturar invólucros diferentes dentro do mesmo palete."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de dependências
Dado que excluo o pedido "PEDIDODEPMDWWTSP01"
Dado que excluo o pedido "PEDIDODEPMDWWTSP02"
Dado que excluo o pedido "PEDIDODEPMDWWTSP03"
Dado que excluo o pedido "PEDIDODEPMDWWTSP04"
Dado que excluo a zona de transporte "ZTDEPMDWWTSP"
Dado que excluo a localidade "ORIDEPMDWWTSP"
Dado que excluo a localidade "DESTDEPMDWWTSP"
Dado que excluo a restrição de localidade "RESTLOCDEPMDWWTSP"
Dado que excluo o produto "PRODDEPMDWWTSP01"
Dado que excluo o produto "PRODDEPMDWWTSP02"
Dado que excluo a categoria de produto "CATPRODDEPMDWWTSP"
Dado que excluo o embarcador "EMBDEPMDWWTSP"
Dado que excluo o invólucro "INVDEPMDWWTSP01"
Dado que excluo o invólucro "INVDEPMDWWTSP02"
Dado que excluo o tipo de pedido "TPPEDDEPMDWWTSP"
Dado que excluo o tipo de item de pedido "IPDEPMDWWTSP"
Dado que excluo o calculador de tipo de serviço "CALTPSERVDEPMDWWTSP"
Dado que excluo o agrupador de zt "AZTDEPMDWWTSP"