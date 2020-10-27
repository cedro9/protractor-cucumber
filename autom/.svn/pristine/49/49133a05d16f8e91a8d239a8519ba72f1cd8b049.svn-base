#language:pt

@MCB
@segmentationOnCarrierHub

Funcionalidade: Parâmentro Hubs de passagem obrigatórios
# https://neolog.atlassian.net/browse/MCA-426

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPSGCH"
Dado que cadastro o tipo de pedido "TPDEPSGCH"
Dado que cadastro o tipo de item de pedido "IPDEPSGCH"
Dado que cadastro a restrição de localidade "RLDEPSGCH"
Dado que cadastro o agrupador de zt "AZTDEPSGCH"
Dado que cadastro a zona de transporte "ZTDEPSGCH" do tipo região do agrupador do agrupador "AZTDEPSGCH" com a restrição de localidade "RLDEPSGCH" e prioridade "1"
Dado que cadastro a origem "ORIGDEPSGCH" com a restrição de localidade "RLDEPSGCH" e Cep "04571-011"
Dado que cadastro o destino "DESTDEPSGCH" com a restrição de localidade "RLDEPSGCH" e Cep "04685-002"
Dado que cadastro o hub de destino "HDDEPSGCH" com a restrição de localidade "RLDEPSGCH" e Cep "05429-000"
Dado que cadastro o hub de passagem "HPDEPSGCH" com a restrição de localidade "RLDEPSGCH" e Cep "05429-000"
Dado que preencho o parâmetro genérico Hubs de passagem obrigatórios com o agrupador "AZTDEPSGCH", com a zona de transporte "ZTDEPSGCH" e hub "HPDEPSGCH"
Dado que cadastro a categoria de produto "CATPRODDEPSGCH"
Dado que cadastro o produto "PRODDEPSGCH" com a categoria "CATPRODDEPSGCH" e embarcador "EMBDEPSGCH"
Dado que cadastro o invólucro "INVDEPSGCH" com politicas definidas no produto
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPSGCH" e o contexto "MCB_DEF"
Dado que cadastro o calculador de frete viagem "CFVDEPSGCH"
Dado que cadastro o calculador de tipo de serviço "CTSDEPSGCH" com o agrupador de zona de transporte "AZTDEPSGCH"
Dado que cadastro a transportadora "TRANSDEPSGCH" para o calculador de tipo de serviço "CTSDEPSGCH", agrupador zona de transporte "AZTDEPSGCH", grupo logístico "AZTDEPSGCH" e calculador de frete viagem "CFVDEPSGCH"
Dado que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora "TRANSDEPSGCH" e tipo de produto "Itens Normais"
Dado que edito o parâmetro Transportadoras permitidas por tipo de serviço e libero todos para a transportadora "TRANSDEPSGCH"
Dado dado que importo a planilha de frete
Dado que cadastro o pedido "PEDIDODEPSGCH01" do embarcador "EMBDEPSGCH" tipo de pedido "TPDEPSGCH" destino "DESTDEPSGCH" origem "ORIGDEPSGCH" produto "PRODDEPSGCH" item de pedido "IPDEPSGCH" e invólucro "INVDEPSGCH" e Hub de destino "HDDEPSGCH"
Dado que cadastro o pedido "PEDIDODEPSGCH02" do embarcador "EMBDEPSGCH" tipo de pedido "TPDEPSGCH" destino "DESTDEPSGCH" origem "ORIGDEPSGCH" produto "PRODDEPSGCH" item de pedido "IPDEPSGCH" e invólucro "INVDEPSGCH" e Hub de destino " "
Dado altero o tipo de utilização do hub de destino do pedido "PEDIDODEPSGCH01" para obrigatório

Cenario: Validar que, em cenários de hub de destino, o CPL envie os pedidos para os respectivos hubs
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPSGCH01"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSGCH01"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPSGCH01"
E clico em Expandir todos os níveis da viagem
Então valido se o destino da parada "2" é o "HDDEPSGCH - HDDEPSGCH"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSGCH01"
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que, em cenários de hub de passagem, o CPL envie os pedidos para o hub especificado no parâmetro de acordo com ZT de origem e destino
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPSGCH02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSGCH02"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPSGCH02"
E clico em Expandir todos os níveis da viagem
Então valido se o destino da parada "2" é o "HPDEPSGCH - HPDEPSGCH"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPSGCH02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPSGCH01"
Dado que excluo o pedido "PEDIDODEPSGCH02"
Dado que excluo a transportadora "TRANSDEPSGCH"
Dado que excluo o calculador de frete viagem "CFVDEPSGCH"
Dado que excluo o calculador de tipo de serviço "CTSDEPSGCH"
Dado que excluo o tipo de pedido "TPDEPSGCH"
Dado que excluo o tipo de item de pedido "IPDEPSGCH"
Dado que excluo o invólucro "INVDEPSGCH"
Dado que excluo o produto "PRODDEPSGCH"
Dado que excluo a categoria de produto "CATPRODDEPSGCH"
Dado que excluo a localidade "ORIGDEPSGCH"
Dado que excluo a localidade "DESTDEPSGCH"
Dado que excluo a localidade "HDDEPSGCH"
Dado que excluo a localidade "HPDEPSGCH"
Dado que excluo a zona de transporte "ZTDEPSGCH"
Dado que excluo o agrupador de zt "AZTDEPSGCH"
Dado que excluo a restrição de localidade "RLDEPSGCH"
Dado que excluo o embarcador "EMBDEPSGCH"