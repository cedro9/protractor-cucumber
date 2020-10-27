#language:pt

@MCB
@incompatiblesProductsByRiskClass

Funcionalidade: Incompatibilidade de produtos perigosos por classe de risco
# https://neolog.atlassian.net/browse/MCA-21

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPIPBRC01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC02" do tipo "Classe de risco"
Dado que cadastro o agrupador de zt "AGRZTDEPIPBRC"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEMIPBRC"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERVIPBRC" com o agrupador de zona de transporte "AGRZTDEPIPBRC"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPIPBRC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPIPBRC"
Dado que cadastro a restrição de localidade "RESTLOCDEPIPBRC"
Dado que cadastro a zona de transporte "ZONATRANSPIPBRC" do tipo região do agrupador do agrupador "AGRZTDEPIPBRC" com a restrição de localidade "RESTLOCDEPIPBRC" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPIPBRC" com a restrição de localidade "RESTLOCDEPIPBRC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPIPBRC" com a restrição de localidade "RESTLOCDEPIPBRC" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPIPBRC"
Dado que cadastro o embarcador "EMBDEPIPBRC"
Dado que cadastro o produto "PRODDEPIPBRC01" com a categoria "CATPRODDEPIPBRC" e embarcador "EMBDEPIPBRC" e classificação classe de risco "CLADEPIPBRC01"
Dado que cadastro o produto "PRODDEPIPBRC02" com a categoria "CATPRODDEPIPBRC" e embarcador "EMBDEPIPBRC" e classificação classe de risco "CLADEPIPBRC02"
Dado que cadastro o produto "PRODDEPIPBRC03" com a categoria "CATPRODDEPIPBRC" e embarcador "EMBDEPIPBRC" e classificação classe de risco "CLADEPIPBRC01"
Dado que cadastro o invólucro "INVDEPIPBRC" com politicas definidas no produto
Dado que cadastro a transportadora "TRANSDEPIPBRC" para o calculador de tipo de serviço "CALCTIPODESERVIPBRC", agrupador zona de transporte "AGRZTDEPIPBRC", grupo logístico "AGRZTDEPIPBRC" e calculador de frete viagem "CALCFRETVIAGEMIPBRC"
Dado que cadastro o pedido "PEDIDOIPBRC01" do embarcador "EMBDEPIPBRC" tipo de pedido "TIPOPEDIDODEPIPBRC" destino "LOCDESTDEPIPBRC" origem "LOCORIGEMDEPIPBRC" produto "PRODDEPIPBRC01" item de pedido "TIPOITEMDEPIPBRC" e invólucro "INVDEPIPBRC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOIPBRC02" do embarcador "EMBDEPIPBRC" tipo de pedido "TIPOPEDIDODEPIPBRC" destino "LOCDESTDEPIPBRC" origem "LOCORIGEMDEPIPBRC" produto "PRODDEPIPBRC02" item de pedido "TIPOITEMDEPIPBRC" e invólucro "INVDEPIPBRC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOIPBRC03" do embarcador "EMBDEPIPBRC" tipo de pedido "TIPOPEDIDODEPIPBRC" destino "LOCDESTDEPIPBRC" origem "LOCORIGEMDEPIPBRC" produto "PRODDEPIPBRC01" item de pedido "TIPOITEMDEPIPBRC" e invólucro "INVDEPIPBRC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOIPBRC04" do embarcador "EMBDEPIPBRC" tipo de pedido "TIPOPEDIDODEPIPBRC" destino "LOCDESTDEPIPBRC" origem "LOCORIGEMDEPIPBRC" produto "PRODDEPIPBRC03" item de pedido "TIPOITEMDEPIPBRC" e invólucro "INVDEPIPBRC" e classificação "Não exige agendamento"
Dado que preencho o parâmetro genérico Incompatibilidade de produtos perigosos por classe de risco com uma classificação "CLADEPIPBRC01" e classificação incompatível "CLADEPIPBRC02"
Dado que adiciono ao contexto de otimização o pré-validador de otimização "Carga exclusiva por classificação da localidade de descarregamento e classificação de agendamento do pedido"

Cenario: Apresenta mensagem de violação ao realizar operação manual com dois produtos incompatíveis
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOIPBRC01,PEDIDOIPBRC02"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOIPBRC01,PEDIDOIPBRC02"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "Produto PRODDEPIPBRC01 com classe de risco CLADEPIPBRC01 é incompatível com o produto PRODDEPIPBRC02 com classe de risco CLADEPIPBRC02"

Cenario: Realizar operação manual com dois produtos compatíveis
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOIPBRC03,PEDIDOIPBRC04"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOIPBRC03,PEDIDOIPBRC04"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
E é exibido uma mensagem que contem "Não foram geradas violações."
E clico no botão Cancelar

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDOIPBRC01"
Dado que excluo o pedido "PEDIDOIPBRC02"
Dado que excluo o pedido "PEDIDOIPBRC03"
Dado que excluo o pedido "PEDIDOIPBRC04"
Dado que excluo o produto "PRODDEPIPBRC01"
Dado que excluo o produto "PRODDEPIPBRC02"
Dado que excluo o produto "PRODDEPIPBRC03"
Dado que excluo o invólucro "INVDEPIPBRC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPIPBRC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPIPBRC"
Dado que excluo a categoria de produto "CATPRODDEPIPBRC"
Dado que excluo o embarcador "EMBDEPIPBRC"
Dado que excluo a zona de transporte "ZONATRANSPIPBRC"
Dado que excluo a transportadora "TRANSDEPIPBRC"
Dado que excluo o calculador de frete viagem "CALCFRETVIAGEMIPBRC"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERVIPBRC"
Dado que excluo o agrupador de zt "AGRZTDEPIPBRC"
Dado que excluo a localidade "LOCORIGEMDEPIPBRC"
Dado que excluo a localidade "LOCDESTDEPIPBRC"
Dado que excluo a restrição de localidade "RESTLOCDEPIPBRC"