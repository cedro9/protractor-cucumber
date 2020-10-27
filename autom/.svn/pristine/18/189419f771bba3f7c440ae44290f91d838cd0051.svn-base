#language:pt

@MCB
@smallVehicles

Funcionalidade: Veículos pequenos que permitem carga desunitizada
# https://neolog.atlassian.net/browse/MCA-110

Cenário: Cadastro de dependências
Dado que cadastro o agrupador de zt "AGRZTDEPVPCD"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEMVPCD"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERVVPCD" com o agrupador de zona de transporte "AGRZTDEPVPCD"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPVPCD"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPVPCD"
Dado que cadastro a restrição de localidade "RESTLOCDEPVPCD"
Dado que cadastro a zona de transporte "ZONATRANSPVPCD" do tipo região do agrupador do agrupador "AGRZTDEPVPCD" com a restrição de localidade "RESTLOCDEPVPCD" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPVPCD" com a restrição de localidade "RESTLOCDEPVPCD" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPVPCD" com a restrição de localidade "RESTLOCDEPVPCD" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPVPCD"
Dado que altero a classificação paletização para "Paletizado" da categoria de produto "CATPRODDEPVPCD"
Dado que cadastro o embarcador "EMBDEPVPCD"
Dado que cadastro o produto "PRODDEPVPCD" com a categoria "CATPRODDEPVPCD" e embarcador "EMBDEPVPCD" e classificação classe de risco " "
Dado que cadastro o invólucro "INVDEPVPCD" com politicas definidas no produto
Dado que cadastro a transportadora "TRANSDEPVPCD" para o calculador de tipo de serviço "CALCTIPODESERVVPCD", agrupador zona de transporte "AGRZTDEPVPCD", grupo logístico "AGRZTDEPVPCD" e calculador de frete viagem "CALCFRETVIAGEMVPCD"
Dado que cadastro o pedido "PEDIDOVPCD01" do embarcador "EMBDEPVPCD" tipo de pedido "TIPOPEDIDODEPVPCD" destino "LOCDESTDEPVPCD" origem "LOCORIGEMDEPVPCD" produto "PRODDEPVPCD" item de pedido "TIPOITEMDEPVPCD" e invólucro "INVDEPVPCD" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOVPCD02" do embarcador "EMBDEPVPCD" tipo de pedido "TIPOPEDIDODEPVPCD" destino "LOCDESTDEPVPCD" origem "LOCORIGEMDEPVPCD" produto "PRODDEPVPCD" item de pedido "TIPOITEMDEPVPCD" e invólucro "INVDEPVPCD" e classificação "Não exige agendamento"

Cenário: Viagem via otimização com invóluco composto 
Dado que removo do parâmetro genérico Veículos pequenos que permitem carga desunitizada o registro com o veículo "FIORINO"
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVPCD01"
E seleciono o pedido "PEDIDOVPCD01" na cesta geral
E clico em Mover pedidos para minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOVPCD01"
E seleciono o pedido "PEDIDOVPCD01" na cesta do usuário
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDOVPCD01"
E clico em Expandir todos os níveis da viagem
E verifico se o header do invólucro composto é apresentado
Entao cancelo a viagem do pedido "PEDIDOVPCD01"
Quando filtro a cesta do usuário pelo pedido "PEDIDOVPCD01"
E clico no botão Mover Todas as paginas para Geral

Cenário: Viagem via otimização sem invólucro composto
Dado que preencho o parâmetro genérico Veículos pequenos que permitem carga desunitizada com o veículo "FIORINO"
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVPCD02"
E seleciono o pedido "PEDIDOVPCD02" na cesta geral
E clico em Mover pedidos para minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOVPCD02"
E seleciono o pedido "PEDIDOVPCD02" na cesta do usuário
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDOVPCD02"
E clico em Expandir todos os níveis da viagem
E verifico se o header da unidade de transporte não contém um invólucro composto
Entao cancelo a viagem do pedido "PEDIDOVPCD02"
Quando filtro a cesta do usuário pelo pedido "PEDIDOVPCD02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDOVPCD01"
Dado que excluo o pedido "PEDIDOVPCD02"
Dado que excluo a transportadora "TRANSDEPVPCD"
Dado que excluo o invólucro "INVDEPVPCD"
Dado que excluo o produto "PRODDEPVPCD"
Dado que excluo o embarcador "EMBDEPVPCD"
Dado que excluo a categoria de produto "CATPRODDEPVPCD"
Dado que excluo a localidade "LOCDESTDEPVPCD"
Dado que excluo a localidade "LOCORIGEMDEPVPCD"
Dado que excluo a zona de transporte "ZONATRANSPVPCD"
Dado que excluo a restrição de localidade "RESTLOCDEPVPCD"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPVPCD"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPVPCD"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERVVPCD"
Dado que excluo o calculador de frete viagem "CALCFRETVIAGEMVPCD"
Dado que excluo o agrupador de zt "AGRZTDEPVPCD"