#language:pt

@MCB
@safeBox

Funcionalidade: Unitização em caixa cofre
# https://neolog.atlassian.net/browse/MCA-22
# https://neolog.atlassian.net/browse/MCA-50

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPSB01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPSB02" do tipo "Classe de risco"
Dado que preencho o parâmetro genérico Incompatibilidade de produtos perigosos por classe de risco com uma classificação "CLADEPSB01" e classificação incompatível "CLADEPSB02"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPSB"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPSB"
Dado que cadastro a restrição de localidade "RESTLOCDEPSB"
Dado que cadastro a origem "LOCORIGEMDEPSB" com a restrição de localidade "RESTLOCDEPSB" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPSB" com a restrição de localidade "RESTLOCDEPSB" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPSB"
Dado que cadastro o embarcador "EMBDEPSB"
Dado que cadastro o produto "PRODDEPSB01" com a categoria "CATPRODDEPSB" e embarcador "EMBDEPSB" e classificação classe de risco "CLADEPSB01"
Dado que cadastro o produto "PRODDEPSB02" com a categoria "CATPRODDEPSB" e embarcador "EMBDEPSB" e classificação classe de risco "CLADEPSB01"
Dado que cadastro o produto "PRODDEPSB03" com a categoria "CATPRODDEPSB" e embarcador "EMBDEPSB" e classificação classe de risco "CLADEPSB02"
Dado que cadastro o produto "PRODDEPSB04" com a categoria "CATPRODDEPSB" e embarcador "EMBDEPSB" e classificação classe de risco "CLADEPSB02"
Dado que altero as dimensões do produto "PRODDEPSB01" para "0,8"
Dado que altero as dimensões do produto "PRODDEPSB04" para "0,8"
Dado que cadastro o invólucro "INVDEPSB" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDOSB01" do embarcador "EMBDEPSB" tipo de pedido "TIPOPEDIDODEPSB" destino "LOCDESTDEPSB" origem "LOCORIGEMDEPSB" produto "PRODDEPSB01" item de pedido "TIPOITEMDEPSB" e invólucro "INVDEPSB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOSB02" do embarcador "EMBDEPSB" tipo de pedido "TIPOPEDIDODEPSB" destino "LOCDESTDEPSB" origem "LOCORIGEMDEPSB" produto "PRODDEPSB02" item de pedido "TIPOITEMDEPSB" e invólucro "INVDEPSB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOSB03" do embarcador "EMBDEPSB" tipo de pedido "TIPOPEDIDODEPSB" destino "LOCDESTDEPSB" origem "LOCORIGEMDEPSB" produto "PRODDEPSB03" item de pedido "TIPOITEMDEPSB" e invólucro "INVDEPSB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOSB04" do embarcador "EMBDEPSB" tipo de pedido "TIPOPEDIDODEPSB" destino "LOCDESTDEPSB" origem "LOCORIGEMDEPSB" produto "PRODDEPSB04" item de pedido "TIPOITEMDEPSB" e invólucro "INVDEPSB" e classificação "Não exige agendamento"

Cenário: Validar que após otimização o invólucro escolhido seja CAIXA COFRE PEQ
Dado que acesso a tela "Programação", "Análise"
E altero a visão para Unidades de transporte por viagens
Quando filtro a cesta geral pelo pedido "PEDIDOSB02,PEDIDOSB03"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOSB02,PEDIDOSB03"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDOSB02,PEDIDOSB03"
E clico em Expandir todos os níveis da viagem
Então verifico se o invólucro escolhido é "CAIXA COFRE PEQ"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOSB02,PEDIDOSB03"
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que após otimização o invólucro escolhido seja CAIXA COFRE GRD
Dado que acesso a tela "Programação", "Análise"
E altero a visão para Unidades de transporte por viagens
Quando filtro a cesta geral pelo pedido "PEDIDOSB01,PEDIDOSB04"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOSB01,PEDIDOSB04"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDOSB01,PEDIDOSB04"
E clico em Expandir todos os níveis da viagem
Então verifico se o invólucro escolhido é "CAIXA COFRE GRD"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOSB01,PEDIDOSB04"
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDOSB01"
Dado que excluo o pedido "PEDIDOSB02"
Dado que excluo o pedido "PEDIDOSB03"
Dado que excluo o pedido "PEDIDOSB04"
Dado que excluo o produto "PRODDEPSB01"
Dado que excluo o produto "PRODDEPSB02"
Dado que excluo o produto "PRODDEPSB03"
Dado que excluo o produto "PRODDEPSB04"
Dado que excluo o invólucro "INVDEPSB"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPSB"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPSB"
Dado que excluo a categoria de produto "CATPRODDEPSB"
Dado que excluo o embarcador "EMBDEPSB"
Dado que excluo a localidade "LOCORIGEMDEPSB"
Dado que excluo a localidade "LOCDESTDEPSB"
Dado que excluo a restrição de localidade "RESTLOCDEPSB"