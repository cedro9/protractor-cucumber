#language:pt

@MCB
@restrictedDeliveryTimeByCarrierZone

Funcionalidade: Restrição de horário de entrega de produtos perigosos por zona de transporte
# https://neolog.atlassian.net/browse/MCA-383

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPRDTBCZ"
Dado que cadastro o tipo de pedido "TPDEPRDTBCZ"
Dado que cadastro o tipo de item de pedido "IPDEPRDTBCZ"
Dado que cadastro a restrição de localidade "RLDEPRDTBCZ"
Dado que cadastro o agrupador de zt "AZTDEPRDTBCZ"
Dado que cadastro a zona de transporte "ZTDEPRDTBCZ" do tipo região do agrupador do agrupador "AZTDEPRDTBCZ" com a restrição de localidade "RLDEPRDTBCZ" e prioridade "1"
Dado que preencho o parâmetro genérico Restrição de horário de entrega de produtos perigosos por zona de transporte com o agrupador "AZTDEPRDTBCZ", com a zona de transporte "ZTDEPRDTBCZ"
Dado que cadastro a origem "ORIGDEPRDTBCZ" com a restrição de localidade "RLDEPRDTBCZ" e Cep "04571-011"
Dado que cadastro o destino "DESTDEPRDTBCZ" com a restrição de localidade "RLDEPRDTBCZ" e Cep "04685-002"
Dado que cadastro a categoria de produto "CATPRODDEPRDTBCZ"
Dado que cadastro o produto "PRODDEPRDTBCZ01" com a categoria "CATPRODDEPRDTBCZ" e embarcador "EMBDEPRDTBCZ"
Dado que altero a classificação tipo de produto para "Produto Perigoso" do produto "PRODDEPRDTBCZ01"
Dado que cadastro o produto "PRODDEPRDTBCZ02" com a categoria "CATPRODDEPRDTBCZ" e embarcador "EMBDEPRDTBCZ"
Dado que cadastro o invólucro "INVDEPRDTBCZ" com politicas definidas no produto
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPRDTBCZ" e o contexto "MCB_GRANEL"
Dado que cadastro o calculador de frete viagem "CFVDEPRDTBCZ"
Dado que cadastro o calculador de tipo de serviço "CTSDEPRDTBCZ" com o agrupador de zona de transporte "AZTDEPRDTBCZ"
Dado que cadastro a transportadora "TRANSDEPRDTBCZ" para o calculador de tipo de serviço "CTSDEPRDTBCZ", agrupador zona de transporte "AZTDEPRDTBCZ", grupo logístico "AZTDEPRDTBCZ" e calculador de frete viagem "CFVDEPRDTBCZ"
Dado que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora "TRANSDEPRDTBCZ" e tipo de produto "Produto Perigoso"
Dado que edito o parâmetro Transportadoras permitidas por tipo de serviço e libero todos para a transportadora "TRANSDEPRDTBCZ"
Dado que cadastro o veículo "VEIDEPRDTBCZ", com "2,5" de largura, "3,00" de comprimento e "2,5" de altura
Dado que cadastro o pedido "PEDIDODEPRDTBCZ01" do embarcador "EMBDEPRDTBCZ" tipo de pedido "TPDEPRDTBCZ" destino "DESTDEPRDTBCZ" origem "ORIGDEPRDTBCZ" produto "PRODDEPRDTBCZ01" item de pedido "IPDEPRDTBCZ" e invólucro "INVDEPRDTBCZ" e Hub de destino "HDDEPRDTBCZ"
Dado que cadastro o pedido "PEDIDODEPRDTBCZ02" do embarcador "EMBDEPRDTBCZ" tipo de pedido "TPDEPRDTBCZ" destino "DESTDEPRDTBCZ" origem "ORIGDEPRDTBCZ" produto "PRODDEPRDTBCZ02" item de pedido "IPDEPRDTBCZ" e invólucro "INVDEPRDTBCZ" e Hub de destino "HDDEPRDTBCZ"

Cenario: Otimização de pedido que tem produto perigoso
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPRDTBCZ01"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRDTBCZ01"
E clico no botão Otimizar todas as páginas
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPRDTBCZ01"
E clico em Expandir todos os níveis da viagem
Então verifico se o horário de chegada está entre "15:00" e "15:30"
E cancelo a viagem do pedido "PEDIDODEPRDTBCZ01"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRDTBCZ01"
E clico no botão Mover Todas as paginas para Geral

Cenario: Otimização de pedido que não tem produto perigoso
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPRDTBCZ02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRDTBCZ02"
E clico no botão Otimizar todas as páginas
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPRDTBCZ02"
E clico em Expandir todos os níveis da viagem
Então verifico se o horário de chegada está entre "10:00" e "22:00"
E cancelo a viagem do pedido "PEDIDODEPRDTBCZ02"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRDTBCZ02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPRDTBCZ01"
Dado que excluo o pedido "PEDIDODEPRDTBCZ02"
Dado que excluo o veículo "VEIDEPRDTBCZ"
Dado que excluo a transportadora "TRANSDEPRDTBCZ"
Dado que excluo o calculador de frete viagem "CFVDEPRDTBCZ"
Dado que excluo o calculador de tipo de serviço "CTSDEPRDTBCZ"
Dado que excluo o tipo de pedido "TPDEPRDTBCZ"
Dado que excluo o tipo de item de pedido "IPDEPRDTBCZ"
Dado que excluo o invólucro "INVDEPRDTBCZ"
Dado que excluo o produto "PRODDEPRDTBCZ01"
Dado que excluo o produto "PRODDEPRDTBCZ02"
Dado que excluo a categoria de produto "CATPRODDEPRDTBCZ"
Dado que excluo a localidade "ORIGDEPRDTBCZ"
Dado que excluo a localidade "DESTDEPRDTBCZ"
Dado que excluo a zona de transporte "ZTDEPRDTBCZ"
Dado que excluo o agrupador de zt "AZTDEPRDTBCZ"
Dado que excluo a restrição de localidade "RLDEPRDTBCZ"
Dado que excluo o embarcador "EMBDEPRDTBCZ"