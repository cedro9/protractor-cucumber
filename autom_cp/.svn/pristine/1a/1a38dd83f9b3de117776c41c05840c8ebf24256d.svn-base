#language:pt

@MCB
@maxTripValueByCarrier

Funcionalidade: Valor máximo de carga por transportadora
# https://neolog.atlassian.net/browse/MCA-20

Cenário: Cadastro de dependências
Dado que cadastro o agrupador de zt "AGRZTDEPMTVBC"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEMMTVBC"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERVMTVBC" com o agrupador de zona de transporte "AGRZTDEPMTVBC"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPMTVBC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPMTVBC"
Dado que cadastro a restrição de localidade "RESTLOCDEPMTVBC"
Dado que cadastro a zona de transporte "ZONATRANSPMTVBC" do tipo região do agrupador do agrupador "AGRZTDEPMTVBC" com a restrição de localidade "RESTLOCDEPMTVBC" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPMTVBC" com a restrição de localidade "RESTLOCDEPMTVBC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPMTVBC" com a restrição de localidade "RESTLOCDEPMTVBC" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPMTVBC"
Dado que cadastro o embarcador "EMBDEPMTVBC"
Dado que cadastro o produto "PRODDEPMTVBC" com a categoria "CATPRODDEPMTVBC" e embarcador "EMBDEPMTVBC" e classificação classe de risco " "
Dado que cadastro o invólucro "INVDEPMTVBC" com politicas definidas no produto
Dado que cadastro a transportadora "TRANSDEPMTVBC" para o calculador de tipo de serviço "CALCTIPODESERVMTVBC", agrupador zona de transporte "AGRZTDEPMTVBC", grupo logístico "AGRZTDEPMTVBC" e calculador de frete viagem "CALCFRETVIAGEMMTVBC"
Dado que altero o valor máximo da viagem da transportadora "TRANSDEPMTVBC"
Dado que cadastro o pedido "PEDIDOMTVBC01" do embarcador "EMBDEPMTVBC" tipo de pedido "TIPOPEDIDODEPMTVBC" destino "LOCDESTDEPMTVBC" origem "LOCORIGEMDEPMTVBC" produto "PRODDEPMTVBC" item de pedido "TIPOITEMDEPMTVBC" e invólucro "INVDEPMTVBC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOMTVBC02" do embarcador "EMBDEPMTVBC" tipo de pedido "TIPOPEDIDODEPMTVBC" destino "LOCDESTDEPMTVBC" origem "LOCORIGEMDEPMTVBC" produto "PRODDEPMTVBC" item de pedido "TIPOITEMDEPMTVBC" e invólucro "INVDEPMTVBC" e classificação "Não exige agendamento"
Dado que Cadastro a viagem "PEDIDOMTVBC02"
Dado que adiciono ao contexto de otimização o pré-validador de otimização "Valor Máximo da Viagem por transportadora"

Cenario: Validar que viagens para a transportadora autônoma possui valor máximo de carga
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOMTVBC01"
E seleciono o pedido "PEDIDOMTVBC01" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Quando filtro a cesta do usuário pelo pedido "PEDIDOMTVBC01"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no checkbox Usar restrições
E clico no botão "Restrições"
E preencho a transportadora com "TRANSDEPMTVBC"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A viagem possui o valor máximo do seguro R$ 10000 maior que o valor máximo do seguro R$ 9999 da transportadora TRANSDEPMTVBC."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Validar que viagens para a transportadora autônoma possui valor máximo de carga
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDOMTVBC02"
Quando clico em edição de viagem
Quando altero a transportadora para "TRANSDEPMTVBC"
E clico no botão salvar e uso o contexto de otimização padrão
Então é exibido uma mensagem de violação que contem "A viagem possui o valor máximo do seguro R$ 10000 maior que o valor máximo do seguro R$ 9999 da transportadora TRANSDEPMTVBC."

Cenário: Exclusão de cadastros de dependências
Dado que excluo a viagem "PEDIDOMTVBC02"
Dado que excluo o pedido "PEDIDOMTVBC01"
Dado que excluo o pedido "PEDIDOMTVBC02"
Dado que excluo o produto "PRODDEPMTVBC"
Dado que excluo o invólucro "INVDEPMTVBC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPMTVBC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPMTVBC"
Dado que excluo a categoria de produto "CATPRODDEPMTVBC"
Dado que excluo o embarcador "EMBDEPMTVBC"
Dado que excluo a zona de transporte "ZONATRANSPMTVBC"
Dado que excluo a transportadora "TRANSDEPMTVBC"
Dado que excluo o calculador de frete viagem "CALCFRETVIAGEMMTVBC"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERVMTVBC"
Dado que excluo o agrupador de zt "AGRZTDEPMTVBC"
Dado que excluo a localidade "LOCORIGEMDEPMTVBC"
Dado que excluo a localidade "LOCDESTDEPMTVBC"
Dado que excluo a restrição de localidade "RESLOCDEPFBVM"