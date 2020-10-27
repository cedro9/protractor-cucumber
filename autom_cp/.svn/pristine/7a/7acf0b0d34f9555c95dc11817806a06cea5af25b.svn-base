#language:pt

@MCB
@granelOptimization

Funcionalidade: Otimização com produto granel
# https://neolog.atlassian.net/browse/MCA-28

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPGO"
Dado que cadastro o tipo de pedido "TPDEPGO"
Dado que cadastro o tipo de item de pedido "IPDEPGO"
Dado que cadastro a restrição de localidade "RLDEPGO"
Dado que cadastro o agrupador de zt "AZTDEPGO"
Dado que cadastro a zona de transporte "ZTDEPGO" do tipo região do agrupador do agrupador "AZTDEPGO" com a restrição de localidade "RLDEPGO" e prioridade "1"
Dado que cadastro a origem "ORIGDEPGO" com a restrição de localidade "RLDEPGO" e Cep "04571-011"
Dado que cadastro o destino "DESTDEPGO01" com a restrição de localidade "RLDEPGO" e Cep "04685-002"
Dado que cadastro o destino "DESTDEPGO02" com a restrição de localidade "RLDEPGO" e Cep "04685-002"
Dado que cadastro a categoria de produto "CATPRODDEPGO"
Dado que cadastro o produto "PRODDEPGO01" com a categoria "CATPRODDEPGO" e embarcador "EMBDEPGO"
Dado que altero a classificação tipo de produto para "Granel" do produto "PRODDEPGO01"
Dado que cadastro o produto "PRODDEPGO02" com a categoria "CATPRODDEPGO" e embarcador "EMBDEPGO"
Dado que altero a classificação tipo de produto para "Granel" do produto "PRODDEPGO02"
Dado que cadastro o invólucro "INVDEPGO" com politicas definidas no produto
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPGO" e o contexto "MCB_GRANEL"
Dado que cadastro o calculador de frete viagem "CFVDEPGO"
Dado que cadastro o calculador de tipo de serviço "CTSDEPGO" com o agrupador de zona de transporte "AZTDEPGO"
Dado que cadastro a transportadora "TRANSDEPGO" para o calculador de tipo de serviço "CTSDEPGO", agrupador zona de transporte "AZTDEPGO", grupo logístico "AZTDEPGO" e calculador de frete viagem "CFVDEPGO"
Dado que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora "TRANSDEPGO" e tipo de produto "Itens Normais"
Dado que edito o parâmetro Transportadoras permitidas por tipo de serviço e libero todos para a transportadora "TRANSDEPGO"
Dado que cadastro o veículo "VEIDEPGO", com "2,5" de largura, "3,00" de comprimento e "2,5" de altura
Dado que altero a classificação veículo granel para "Sim" do veículo "VEIDEPGO"
Dado que cadastro o pedido "PEDIDODEPGO01" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO01" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino "HDDEPGO"
Dado que cadastro o pedido "PEDIDODEPGO02" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO02" origem "ORIGDEPGO" produto "PRODDEPGO01" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPGO03" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO01" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino "HDDEPGO"
Dado que cadastro o pedido "PEDIDODEPGO04" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO01" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPGO05" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO02" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino "HDDEPGO"
Dado que cadastro o pedido "PEDIDODEPGO06" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO02" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino "HDDEPGO"
Dado que cadastro o pedido "PEDIDODEPGO07" do embarcador "EMBDEPGO" tipo de pedido "TPDEPGO" destino "DESTDEPGO01" origem "ORIGDEPGO" produto "PRODDEPGO02" item de pedido "IPDEPGO" e invólucro "INVDEPGO" e Hub de destino "HDDEPGO"

Cenário: Validar que sejam configuradas viagens com produtos granel apenas em veículos granel
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPGO01"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPGO01"
E otimizo com o contexto "MCB_GRANEL"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPGO01"
E clico em Expandir todos os níveis da viagem
Então verifico o veículo da viagem "VEIDEPGO"
E seleciono a viagem
Quando cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPGO01"
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que não podem ser carregados no mesmo compartimento pedidos com destinos diferentes
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPGO02,PEDIDODEPGO03"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPGO02,PEDIDODEPGO03"
E realizo operação manual em todas as páginas com o contexto "MCB_GRANEL"
E clico no checkbox Usar restrições
E clico no botão "Restrições"
E preencho o veículo com "VEIDEPGO"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O veículo VEIDEPGO não respeitou as restrições de compartimentos com os pedidos do tipo Granel."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que sejam criadas viagens com produtos granel apenas com um produto por contêiner
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPGO04,PEDIDODEPGO05"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPGO04,PEDIDODEPGO05"
E realizo operação manual em todas as páginas com o contexto "MCB_GRANEL"
E clico no checkbox Usar restrições
E clico no botão "Restrições"
E preencho o veículo com "VEIDEPGO"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O veículo VEIDEPGO não respeitou as restrições de compartimentos com os pedidos do tipo Granel."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Validar que, se existirem pedidos com o mesmo produto e destino final (cliente), eles podem ser misturados no mesmo baú/compartimento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPGO06,PEDIDODEPGO07"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPGO06,PEDIDODEPGO07"
E realizo operação manual em todas as páginas com o contexto "MCB_GRANEL"
E clico no checkbox Usar restrições
E clico no botão "Restrições"
E preencho o veículo com "VEIDEPGO"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPGO01"
Dado que excluo o pedido "PEDIDODEPGO02"
Dado que excluo o pedido "PEDIDODEPGO03"
Dado que excluo o pedido "PEDIDODEPGO04"
Dado que excluo o pedido "PEDIDODEPGO05"
Dado que excluo o pedido "PEDIDODEPGO06"
Dado que excluo o pedido "PEDIDODEPGO07"
Dado que excluo o veículo "VEIDEPGO"
Dado que excluo a transportadora "TRANSDEPGO"
Dado que excluo o calculador de frete viagem "CFVDEPGO"
Dado que excluo o calculador de tipo de serviço "CTSDEPGO"
Dado que excluo o tipo de pedido "TPDEPGO"
Dado que excluo o tipo de item de pedido "IPDEPGO"
Dado que excluo o invólucro "INVDEPGO"
Dado que excluo o produto "PRODDEPGO01"
Dado que excluo o produto "PRODDEPGO02"
Dado que excluo a categoria de produto "CATPRODDEPGO"
Dado que excluo a localidade "ORIGDEPGO"
Dado que excluo a localidade "DESTDEPGO01"
Dado que excluo a localidade "DESTDEPGO02"
Dado que excluo a zona de transporte "ZTDEPGO"
Dado que excluo o agrupador de zt "AZTDEPGO"
Dado que excluo a restrição de localidade "RLDEPGO"
Dado que excluo o embarcador "EMBDEPGO"