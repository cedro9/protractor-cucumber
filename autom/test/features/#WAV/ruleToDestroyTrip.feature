#language:pt

@WAV
@ruleToDestroyTrip

Funcionalidade: Regras de destruição de viagens
# https://neolog.atlassian.net/browse/WAV-6
# Para está funcionalidade o script do contexto utilizado para otimização deve conter o comando: MEXOptimizationScriptCollaborator.eliminateTripsWithClassification();

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV6"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV6"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV6"
Dado que cadastro o destino "LOCDESTDEPWAV6" com a restrição de localidade "RESLOCDEPWAV6" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODDEPWAV6"
Dado que cadastro o embarcador "EMBDEPWAV6"
Dado que cadastro o produto "PRODDEPWAV6" com a categoria "CATPRODDEPWAV6" e embarcador "EMBDEPWAV6"
Dado que cadastro o invólucro "INVDEPWAV6" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV6_1" do embarcador "EMBDEPWAV6" tipo de pedido "TIPOPEDIDODEPWAV6" destino "LOCDESTDEPWAV6" origem "0100" produto "PRODDEPWAV6" item de pedido "TIPOITEMDEPWAV6" e invólucro "INVDEPWAV6" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV6_2" do embarcador "EMBDEPWAV6" tipo de pedido "TIPOPEDIDODEPWAV6" destino "LOCDESTDEPWAV6" origem "0100" produto "PRODDEPWAV6" item de pedido "TIPOITEMDEPWAV6" e invólucro "INVDEPWAV6" e atributo "Percentual de Carga do SAP" com valor "100"

Cenario: Validar criação de viagem otimizada
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV6_1"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV6_1"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPWAV6_1"
E clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDODEPWAV6_1" está presente na viagem
E cancelo a viagem do pedido "PEDIDODEPWAV6_1" com o contexto "Contexto de Otimização Primeira Onda"

Cenario: Validar cancelamento de viagem otimizada
Dado que preencho o parâmetro genérico Regras de destruição de viagens com o tipo de classificação "Tipo de geração de viagem" e classificação "Otimizada"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV6_2"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV6_2"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPWAV6_2"
Então verifico que a viagem não é exibida após filtrar pelo pedido "PEDIDODEPWAV6_2"

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV6_1"
Dado que excluo o pedido "PEDIDODEPWAV6_2"
Dado que excluo o invólucro "INVDEPWAV6"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV6"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV6"
Dado que excluo o produto "PRODDEPWAV6"
Dado que excluo a categoria de produto "CATPRODDEPWAV6"
Dado que excluo o embarcador "EMBDEPWAV6"
Dado que excluo a localidade "LOCDESTDEPWAV6"
Dado que excluo a restrição de localidade "RESLOCDEPWAV6"
Dado que removo o tipo de classificação "Tipo de geração de viagem" com classificação "Otimizada" do parâmetro genérico Regras de destruição de viagens