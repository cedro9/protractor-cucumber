#language:pt

@MCB
@shipmenitUnitWrapperByProductCategoryClassification

Funcionalidade: Fazer paletização de acordo com classificação de categoria de produto
# https://neolog.atlassian.net/browse/MCA-166

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPSUWBPCC" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPSUWBPCC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPSUWBPCC"
Dado que cadastro a restrição de localidade "RESTLOCDEPSUWBPCC"
Dado que cadastro a origem "LOCORIGEMDEPSUWBPCC" com a restrição de localidade "RESTLOCDEPSUWBPCC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPSUWBPCC" com a restrição de localidade "RESTLOCDEPSUWBPCC" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPSUWBPCC01"
Dado que cadastro a categoria de produto "CATPRODDEPSUWBPCC02"
Dado que cadastro o embarcador "EMBDEPSUWBPCC"
Dado que cadastro o produto "PRODDEPSUWBPCC01" com a categoria "CATPRODDEPSUWBPCC01" e embarcador "EMBDEPSUWBPCC" e classificação classe de risco "N/A"
Dado que cadastro o produto "PRODDEPSUWBPCC02" com a categoria "CATPRODDEPSUWBPCC02" e embarcador "EMBDEPSUWBPCC" e classificação classe de risco "N/A"
Dado que cadastro o invólucro "INVDEPSUWBPCC" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPSUWBPCC01" do embarcador "EMBDEPSUWBPCC" tipo de pedido "TIPOPEDIDODEPSUWBPCC" destino "LOCDESTDEPSUWBPCC" origem "LOCORIGEMDEPSUWBPCC" produto "PRODDEPSUWBPCC01" item de pedido "TIPOITEMDEPSUWBPCC" e invólucro "INVDEPSUWBPCC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPSUWBPCC02" do embarcador "EMBDEPSUWBPCC" tipo de pedido "TIPOPEDIDODEPSUWBPCC" destino "LOCDESTDEPSUWBPCC" origem "LOCORIGEMDEPSUWBPCC" produto "PRODDEPSUWBPCC02" item de pedido "TIPOITEMDEPSUWBPCC" e invólucro "INVDEPSUWBPCC" e classificação "Não exige agendamento"
Dado que altero a classificação paletização para "Paletizado" da categoria de produto "CATPRODDEPSUWBPCC01"
Dado que bloqueio o veículo "Fiorino" para a localidade "LOCORIGEMDEPSUWBPCC" no parâmetro Restrição de veículos bloqueados por localidade

Cenário: Validar que, para os produtos de categorias com classificação “Paletizado”, o CPL monte cargas com esses produtos em paletes
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPSUWBPCC01"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPSUWBPCC01"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPSUWBPCC01"
E clico em Expandir todos os níveis da viagem
Então verifico se o header do invólucro composto é apresentado
E cancelo a viagem do pedido "PEDIDODEPSUWBPCC01"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSUWBPCC01"
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que, para os produtos de categorias com classificação “Não paletizado”, o CPL monte cargas com esses produtos estivados - MCA-529
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPSUWBPCC02"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPSUWBPCC02"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPSUWBPCC02"
E clico em Expandir todos os níveis da viagem
Então verifico se o header da unidade de transporte não contém um invólucro composto
E cancelo a viagem do pedido "PEDIDODEPSUWBPCC02"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSUWBPCC02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPSUWBPCC01"
Dado que excluo o pedido "PEDIDODEPSUWBPCC02"
Dado que excluo o produto "PRODDEPSUWBPCC01"
Dado que excluo o produto "PRODDEPSUWBPCC02"
Dado que excluo o invólucro "INVDEPSUWBPCC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPSUWBPCC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPSUWBPCC"
Dado que excluo a categoria de produto "CATPRODDEPSUWBPCC01"
Dado que excluo a categoria de produto "CATPRODDEPSUWBPCC02"
Dado que excluo o embarcador "EMBDEPSUWBPCC"
Dado que excluo a localidade "LOCORIGEMDEPSUWBPCC"
Dado que excluo a localidade "LOCDESTDEPSUWBPCC"
Dado que excluo a restrição de localidade "RESTLOCDEPSUWBPCC"