#language:pt

@MCB
@weekDayByCarrierZone

Funcionalidade: Dia da semana por zona de transporte
# https://neolog.atlassian.net/browse/MCA-265

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RLDEPWDBCZ"
Dado que cadastro o agrupador de zt "AZTDEPWDBCZ"
Dado que cadastro a zona de transporte "ZTDEPWDBCZ" do tipo região do agrupador do agrupador "AZTDEPWDBCZ" com a restrição de localidade "RLDEPWDBCZ" e prioridade "100"
Dado que cadastro o calculador de tipo de serviço "CTSDEPWDBCZ" com o agrupador de zona de transporte "AZTDEPWDBCZ"
Dado que cadastro o calculador de frete viagem "CFVDEPWDBCZ"
Dado que cadastro a transportadora "TRANSDEPWDBCZ" para o calculador de tipo de serviço "CTSDEPWDBCZ", agrupador zona de transporte "AZTDEPWDBCZ", grupo logístico "AZTDEPWDBCZ" e calculador de frete viagem "CFVDEPWDBCZ"
Dado que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora "TRANSDEPWDBCZ" e tipo de produto "Itens Normais"
Dado que cadastro o embarcador "EMBDEPWDBCZ"
Dado que cadastro o tipo de pedido "TPDEPWDBCZ"
Dado que cadastro o destino "DESTDEPWDBCZ" com a restrição de localidade "RLDEPWDBCZ" e Cep "08061-020"
Dado que cadastro a origem "ORIGDEPWDBCZ" com a restrição de localidade "RLDEPWDBCZ" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPWDBCZ"
Dado que cadastro o produto "PRODDEPWDBCZ" com a categoria "CATPRODDEPWDBCZ" e embarcador "EMBDEPWDBCZ"
Dado que cadastro o tipo de item de pedido "IPDEPWDBCZ"
Dado que cadastro o invólucro "INVDEPWDBCZ" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWDBCZ01" do embarcador "EMBDEPWDBCZ" tipo de pedido "TPDEPWDBCZ" destino "DESTDEPWDBCZ" origem "ORIGDEPWDBCZ" produto "PRODDEPWDBCZ" item de pedido "IPDEPWDBCZ" e invólucro "INVDEPWDBCZ" e classificação " "
Dado que cadastro o pedido "PEDIDODEPWDBCZ02" do embarcador "EMBDEPWDBCZ" tipo de pedido "TPDEPWDBCZ" destino "DESTDEPWDBCZ" origem "ORIGDEPWDBCZ" produto "PRODDEPWDBCZ" item de pedido "IPDEPWDBCZ" e invólucro "INVDEPWDBCZ" e classificação " "
Dado altero a classificação calendarizado do pedido "PEDIDODEPWDBCZ02" para "Sim"
Dado que preencho o parâmetro genérico Dia da semana por zona de transporte com a transportadora "TRANSDEPWDBCZ", agrupador "AZTDEPWDBCZ", zona de transporte "ZTDEPWDBCZ" e dia da semana "Segunda-Feira"

Cenário: Otimizar pedido não calendarizado
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWDBCZ01"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPWDBCZ01"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPWDBCZ01"
E expando o header da viagem
E expando o header da carga
Então verifico se o dia de chagada na parada de descarregamento corresponde ao próximo dia util
Entao cancelo a viagem do pedido "PEDIDODEPWDBCZ01"
E filtro a cesta do usuário pelo pedido "PEDIDODEPWDBCZ01"
E clico no botão Mover Todas as paginas para Geral

Cenário: Otimizar pedido calendarizado - MCA-539
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWDBCZ02"
E clico no botão Mover todas as páginas para a cesta
E filtro a cesta do usuário pelo pedido "PEDIDODEPWDBCZ02"
E otimizo com o contexto "MCB_DEF"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPWDBCZ02"
E expando o header da viagem
E expando o header da carga
Então verifico se o dia de chagada na parada de descarregamento corresponde a "Segunda-feira"
Entao cancelo a viagem do pedido "PEDIDODEPWDBCZ02"
E filtro a cesta do usuário pelo pedido "PEDIDODEPWDBCZ02"
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPWDBCZ01"
Dado que excluo o pedido "PEDIDODEPWDBCZ02"
Dado que excluo o produto "PRODDEPWDBCZ"
Dado que excluo a categoria de produto "CATPRODDEPWDBCZ"
Dado que excluo o tipo de item de pedido "IPDEPWDBCZ"
Dado que excluo o invólucro "INVDEPWDBCZ"
Dado que excluo a localidade "DESTDEPWDBCZ"
Dado que excluo a localidade "ORIGDEPWDBCZ"
Dado que excluo a zona de transporte "ZTDEPWDBCZ"
Dado que excluo a restrição de localidade "RLDEPWDBCZ"
Dado que excluo a transportadora "TRANSDEPWDBCZ"
Dado que excluo o calculador de tipo de serviço "CTSDEPWDBCZ"
Dado que excluo o calculador de frete viagem "CFVDEPWDBCZ"
Dado que excluo o agrupador de zt "AZTDEPWDBCZ"
Dado que excluo o embarcador "EMBDEPWDBCZ"
Dado que excluo o tipo de pedido "TPDEPWDBCZ"