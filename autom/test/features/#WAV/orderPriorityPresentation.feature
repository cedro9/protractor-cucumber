#language:pt

@WAV
@orderPriorityPresentation

Funcionalidade: Identificador de prioridade do pedido
# https://neolog.atlassian.net/browse/WAV-60

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV60"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV60"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV60"
Dado que cadastro o destino "LOCDESTDEPWAV60" com a restrição de localidade "RESLOCDEPWAV60" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODDEPWAV60"
Dado que cadastro o embarcador "EMBDEPWAV60"
Dado que cadastro o produto "PRODDEPWAV60" com a categoria "CATPRODDEPWAV60" e embarcador "EMBDEPWAV60"
Dado que cadastro o invólucro "INVDEPWAV60" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV60_1" do embarcador "EMBDEPWAV60" tipo de pedido "TIPOPEDIDODEPWAV60" destino "LOCDESTDEPWAV60" origem "0100" produto "PRODDEPWAV60" item de pedido "TIPOITEMDEPWAV60" e invólucro "INVDEPWAV60" e atributo "Data da OV" com valor "2020-01-01"
Dado que cadastro o pedido "PEDIDODEPWAV60_2" do embarcador "EMBDEPWAV60" tipo de pedido "TIPOPEDIDODEPWAV60" destino "LOCDESTDEPWAV60" origem "0100" produto "PRODDEPWAV60" item de pedido "TIPOITEMDEPWAV60" e invólucro "INVDEPWAV60" e atributo "Data da OV" com valor "2020-01-01"
Dado que cadastro o pedido "PEDIDODEPWAV60_3" do embarcador "EMBDEPWAV60" tipo de pedido "TIPOPEDIDODEPWAV60" destino "LOCDESTDEPWAV60" origem "0100" produto "PRODDEPWAV60" item de pedido "TIPOITEMDEPWAV60" e invólucro "INVDEPWAV60" e atributo "Data da OV" com valor " "
Dado que cadastro o pedido "PEDIDODEPWAV60_4" do embarcador "EMBDEPWAV60" tipo de pedido "TIPOPEDIDODEPWAV60" destino "LOCDESTDEPWAV60" origem "0100" produto "PRODDEPWAV60" item de pedido "TIPOITEMDEPWAV60" e invólucro "INVDEPWAV60" e atributo "Data da OV" com valor " "
Dado que preencho o parâmetro genérico Tempo de atraso por zona de transporte e data de OV ou data de remessa com agrupador "CPL SUM" zona de transporte "SP0201" atraso OV e atraso remessa

Cenário: Atraso por data de OV na cesta geral e do usuário
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV60_1"
Então verifico se o header do pedido contém o identificador de prioridade
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_1"
Então verifico se o header do pedido contém o identificador de prioridade

Cenário: Atraso por data de OV em viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV60_2"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_2"
E clico no botão Operação manual em todas as páginas
E seleciono o contexto de Otimização "Contexto de Otimização Primeira Onda"
E clico no botão OK
E clico no botão Salvar
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPWAV60_2"
E expando o header da viagem
E expando o header da carga
E expando o header da parada
Então verifico se o header do pedido contém o identificador de prioridade
E cancelo a viagem do pedido "PEDIDODEPWAV60_2" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Atraso por data de criação da remessa na cesta geral
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV60_3"
Então verifico se o header do pedido contém o identificador de prioridade
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_3"
Então verifico se o header do pedido contém o identificador de prioridade

Cenário: Atraso por data de criação da remessa em viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV60_4"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_4"
E clico no botão Operação manual em todas as páginas
E seleciono o contexto de Otimização "Contexto de Otimização Primeira Onda"
E clico no botão OK
E clico no botão Salvar
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPWAV60_4"
E expando o header da viagem
E expando o header da carga
E expando o header da parada
Então verifico se o header do pedido contém o identificador de prioridade
E cancelo a viagem do pedido "PEDIDODEPWAV60_4" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Remessa sem atraso
Dado que removo o agrupador "CPL SUM" e zona de transporte "SP0201" do parâmetro genérico Tempo de atraso por zona de transporte e data de OV ou data de remessa
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_1"
Então verifico que o header do pedido não contém o identificador de prioridade
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV60_3"
Então verifico que o header do pedido não contém o identificador de prioridade

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV60_1"
Dado que excluo o pedido "PEDIDODEPWAV60_2"
Dado que excluo o pedido "PEDIDODEPWAV60_3"
Dado que excluo o pedido "PEDIDODEPWAV60_4"
Dado que excluo o invólucro "INVDEPWAV60"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV60"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV60"
Dado que excluo o produto "PRODDEPWAV60"
Dado que excluo a categoria de produto "CATPRODDEPWAV60"
Dado que excluo o embarcador "EMBDEPWAV60"
Dado que excluo a localidade "LOCDESTDEPWAV60"
Dado que excluo a restrição de localidade "RESLOCDEPWAV60"