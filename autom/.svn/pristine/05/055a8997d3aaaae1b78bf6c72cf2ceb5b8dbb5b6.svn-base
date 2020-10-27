#language:pt

@MCB
@divideContexts

Funcionalidade: Contexto de divisão
# https://neolog.atlassian.net/browse/MCA-29

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPDC"
Dado que cadastro o tipo de pedido "TPDEPDC"
Dado que cadastro o tipo de item de pedido "IPDEPDC"
Dado que cadastro a restrição de localidade "RLDEPDC"
Dado que cadastro o agrupador de zt "AZTDEPDC"
Dado que cadastro a zona de transporte "ZTDEPDC" do tipo região do agrupador do agrupador "AZTDEPDC" com a restrição de localidade "RLDEPDC" e prioridade "1"
Dado que cadastro a origem "ORIGDEPDC" com a restrição de localidade "RLDEPDC" e Cep "04571-011"
Dado que cadastro o destino "DESTDEPDC" com a restrição de localidade "RLDEPDC" e Cep "04685-002"
Dado que cadastro a categoria de produto "CATPRODDEPDC"
Dado que cadastro o produto "PRODDEPDC01" com a categoria "CATPRODDEPDC" e embarcador "EMBDEPDC"
Dado que altero a classificação tipo de produto para "Granel" do produto "PRODDEPDC01"
Dado que cadastro o produto "PRODDEPDC02" com a categoria "CATPRODDEPDC" e embarcador "EMBDEPDC"
Dado que altero a classificação tipo de produto para "Granel" do produto "PRODDEPDC02"
Dado que cadastro o invólucro "INVDEPDC01" com politicas definidas no produto
Dado que cadastro o invólucro "INVDEPDC02" com politicas definidas no produto
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPDC01" e o contexto "MCB_GRANEL"
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPDC02" e o contexto "MCB_DEF"
Dado que cadastro o pedido "PEDIDODEPDC01" do embarcador "EMBDEPDC" tipo de pedido "TPDEPDC" destino "DESTDEPDC" origem "ORIGDEPDC" produto "PRODDEPDC01" item de pedido "IPDEPDC" e invólucro "INVDEPDC01" e Hub de destino "HDDEPDC"
Dado que cadastro o pedido "PEDIDODEPDC02" do embarcador "EMBDEPDC" tipo de pedido "TPDEPDC" destino "DESTDEPDC" origem "ORIGDEPDC" produto "PRODDEPDC01" item de pedido "IPDEPDC" e invólucro "INVDEPDC02" e Hub de destino " "

Cenario: Validar que não podem ser carregados no mesmo compartimento pedidos com destinos diferentes
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPDC01,PEDIDODEPDC02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPDC01,PEDIDODEPDC02"
E clico no botão Otimizar todas as páginas
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
Então verifico se foram criados dois jobs de otimização
Dado que acesso a tela "Programação", "Análise"
E cancelo a viagem do pedido "PEDIDODEPDC01,PEDIDODEPDC02"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPDC01,PEDIDODEPDC02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPDC01"
Dado que excluo o pedido "PEDIDODEPDC02"
Dado que excluo o veículo "VEIDEPDC"
Dado que excluo a transportadora "TRANSDEPDC"
Dado que excluo o calculador de frete viagem "CFVDEPDC"
Dado que excluo o calculador de tipo de serviço "CTSDEPDC"
Dado que excluo o tipo de pedido "TPDEPDC"
Dado que excluo o tipo de item de pedido "IPDEPDC"
Dado que excluo o invólucro "INVDEPDC01"
Dado que excluo o invólucro "INVDEPDC02"
Dado que excluo o produto "PRODDEPDC01"
Dado que excluo o produto "PRODDEPDC02"
Dado que excluo a categoria de produto "CATPRODDEPDC"
Dado que excluo a localidade "ORIGDEPDC"
Dado que excluo a localidade "DESTDEPDC"
Dado que excluo a zona de transporte "ZTDEPDC"
Dado que excluo o agrupador de zt "AZTDEPDC"
Dado que excluo a restrição de localidade "RLDEPDC"
Dado que excluo o embarcador "EMBDEPDC"