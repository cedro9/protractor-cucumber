#language:pt

@MCB
@forbiddenCompositeShipmentUnitWrapperInSafeBox

Funcionalidade: Proibir paletização em caixa cofre
# https://neolog.atlassian.net/browse/MCA-109

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPACSUWISB01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPACSUWISB02" do tipo "Classe de risco"
Dado que preencho o parâmetro genérico Incompatibilidade de produtos perigosos por classe de risco com uma classificação "CLADEPACSUWISB01" e classificação incompatível "CLADEPACSUWISB02"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPACSUWISB"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPACSUWISB"
Dado que cadastro a restrição de localidade "RESTLOCDEPACSUWISB"
Dado que cadastro a origem "LOCORIGEMDEPACSUWISB" com a restrição de localidade "RESTLOCDEPACSUWISB" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPACSUWISB" com a restrição de localidade "RESTLOCDEPACSUWISB" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPACSUWISB01"
Dado que cadastro a categoria de produto "CATPRODDEPACSUWISB02"
Dado que cadastro o embarcador "EMBDEPACSUWISB"
Dado que cadastro o produto "PRODDEPACSUWISB01" com a categoria "CATPRODDEPACSUWISB01" e embarcador "EMBDEPACSUWISB" e classificação classe de risco "CLADEPACSUWISB01"
Dado que cadastro o produto "PRODDEPACSUWISB02" com a categoria "CATPRODDEPACSUWISB01" e embarcador "EMBDEPACSUWISB" e classificação classe de risco "CLADEPACSUWISB02"
Dado que altero a classificação tipo de produto para "Produto Perigoso" do produto "PRODDEPACSUWISB01"
Dado que cadastro o invólucro "INVDEPACSUWISB" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPACSUWISB01" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB01" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPACSUWISB02" do embarcador "EMBDEPACSUWISB" tipo de pedido "TIPOPEDIDODEPACSUWISB" destino "LOCDESTDEPACSUWISB" origem "LOCORIGEMDEPACSUWISB" produto "PRODDEPACSUWISB02" item de pedido "TIPOITEMDEPACSUWISB" e invólucro "INVDEPACSUWISB" e classificação "Não exige agendamento"
Dado que removo do parâmetro genérico Veículos pequenos que permitem carga desunitizada o registro com o veículo "FIORINO"

Cenário: Validar que, na otimização, quando os produtos perigosos são colocados na caixa cofre, eles sejam sempre despaletizados de modo que a caixa cofre contenha apenas sempre UTs simples, estivadas
Dado que acesso a tela "Programação", "Análise"
E altero a visão para Unidades de transporte por viagens
Quando filtro a cesta geral pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB01"
E seleciono a unidade de transporte
E clico no botão Unitizar
E seleciono o contexto de Otimização "MCB_DEF"
E clico no botão OK
E clico no botão Salvar
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E clico em Expandir todos os níveis da viagem
Então verifico se o invólucro escolhido é "CAIXA COFRE PEQ"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPACSUWISB01,PEDIDODEPACSUWISB02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que preencho o parâmetro genérico Veículos pequenos que permitem carga desunitizada com o veículo "FIORINO"
Dado que excluo o pedido "PEDIDODEPACSUWISB01"
Dado que excluo o pedido "PEDIDODEPACSUWISB02"
Dado que excluo o produto "PRODDEPACSUWISB01"
Dado que excluo o produto "PRODDEPACSUWISB02"
Dado que excluo o invólucro "INVDEPACSUWISB"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPACSUWISB"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPACSUWISB"
Dado que excluo a categoria de produto "CATPRODDEPACSUWISB01"
Dado que excluo a categoria de produto "CATPRODDEPACSUWISB02"
Dado que excluo o embarcador "EMBDEPACSUWISB"
Dado que excluo a localidade "LOCORIGEMDEPACSUWISB"
Dado que excluo a localidade "LOCDESTDEPACSUWISB"
Dado que excluo a restrição de localidade "RESTLOCDEPACSUWISB"