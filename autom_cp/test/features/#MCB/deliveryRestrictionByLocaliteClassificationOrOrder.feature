#language:pt

@MCB
@deliveryRestrictionByLocaliteClassificationOrOrder

Funcionalidade: Carga exclusiva ou primeira parada para clientes que exigem agendamento
# https://neolog.atlassian.net/browse/MCA-42

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPCEOPPCQEA01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPCEOPPCQEA02" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPCEOPPCQEA"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPCEOPPCQEA"
Dado que cadastro a restrição de localidade "RESTLOCDEPCEOPPCQEA"
Dado que cadastro a origem "LOCORIGEMDEPCEOPPCQEA" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA01" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA02" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA03" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA04" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Quando altero a classificação restrição de entrega da localidade "LOCDESTDEPCEOPPCQEA04" para "Primeira Parada"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA05" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Quando altero a classificação restrição de entrega da localidade "LOCDESTDEPCEOPPCQEA05" para "Carga Exclusiva"
Dado que cadastro o destino "LOCDESTDEPCEOPPCQEA06" com a restrição de localidade "RESTLOCDEPCEOPPCQEA" e Cep "08061-020"
Quando altero a classificação restrição de entrega da localidade "LOCDESTDEPCEOPPCQEA06" para "Última Parada"
Dado que cadastro a categoria de produto "CATPRODDEPCEOPPCQEA"
Dado que cadastro o embarcador "EMBDEPCEOPPCQEA"
Dado que cadastro o produto "PRODDEPCEOPPCQEA" com a categoria "CATPRODDEPCEOPPCQEA" e embarcador "EMBDEPCEOPPCQEA" e classificação classe de risco "CLADEPCEOPPCQEA01"
Dado que cadastro o invólucro "INVDEPCEOPPCQEA" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA01" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA02" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA02" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Agendado pelo comercial"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA03" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA04" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA02" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA05" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA06" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA02" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA07" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA04" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA08" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA09" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA04" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA10" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA11" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA04" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA12" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA13" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA05" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA14" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA15" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA05" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA16" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA17" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA05" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA18" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA19" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA06" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA20" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA21" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA06" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA22" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA23" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA06" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCEOPPCQEA24" do embarcador "EMBDEPCEOPPCQEA" tipo de pedido "TIPOPEDIDODEPCEOPPCQEA" destino "LOCDESTDEPCEOPPCQEA01" origem "LOCORIGEMDEPCEOPPCQEA" produto "PRODDEPCEOPPCQEA" item de pedido "TIPOITEMDEPCEOPPCQEA" e invólucro "INVDEPCEOPPCQEA" e classificação "Não exige agendamento"
Dado que adiciono ao contexto de otimização o pré-validador de otimização "Carga exclusiva por classificação da localidade de descarregamento e classificação de agendamento do pedido"

Cenário: Operação manual com pedido com classificação de agendamento (Agendado pelo comercial)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA01,PEDIDODEPCEOPPCQEA02"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA01,PEDIDODEPCEOPPCQEA02"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
E é exibido uma mensagem de violação que contem "A localidade LOCDESTDEPCEOPPCQEA02 exige ser de primeira parada ou carga exclusiva."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido com classificação de agendamento (Exige agendamento)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA03,PEDIDODEPCEOPPCQEA04"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA03,PEDIDODEPCEOPPCQEA04"
E clico no botão "Operação manual em todas as páginas"
E clico no botão "Prosseguir operação"
E clico no botão OK
E é exibido uma mensagem de violação que contem "A localidade LOCDESTDEPCEOPPCQEA02 exige ser de primeira parada ou carga exclusiva."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido com classificação de agendamento (Não exige agendamento)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA05,PEDIDODEPCEOPPCQEA06"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA05,PEDIDODEPCEOPPCQEA06"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
E é exibido uma mensagem que contem "Não foram geradas violações."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Primeira parada) e com pedido que não exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA07,PEDIDODEPCEOPPCQEA08"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA07,PEDIDODEPCEOPPCQEA08"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA04 exige ser a primeira parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Primeira parada) e com pedido que exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA09,PEDIDODEPCEOPPCQEA10"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA09,PEDIDODEPCEOPPCQEA10"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA04 exige ser a primeira parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Primeira parada) e com pedido que é agendado pelo comercial
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA11,PEDIDODEPCEOPPCQEA12"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA11,PEDIDODEPCEOPPCQEA12"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA04 exige ser a primeira parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Carga exclusiva) e com pedido que não exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA13,PEDIDODEPCEOPPCQEA14"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA13,PEDIDODEPCEOPPCQEA14"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA05 exige exclusividade."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Carga exclusiva) e com pedido que exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA15,PEDIDODEPCEOPPCQEA16"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA15,PEDIDODEPCEOPPCQEA16"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA05 exige exclusividade."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Carga exclusiva) e com pedido que é agendado pelo comercial
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA17,PEDIDODEPCEOPPCQEA18"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA17,PEDIDODEPCEOPPCQEA18"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "A localidade de descarregamento LOCDESTDEPCEOPPCQEA05 exige exclusividade."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Última parada) e com pedido que não exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA19,PEDIDODEPCEOPPCQEA20"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA19,PEDIDODEPCEOPPCQEA20"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O pedido PEDIDODEPCEOPPCQEA19 tem classificação 'Não exige agendamento' e, por isso, precisa ser última parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Última parada) e com pedido que exige agendamento
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA21,PEDIDODEPCEOPPCQEA22"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA21,PEDIDODEPCEOPPCQEA22"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O pedido PEDIDODEPCEOPPCQEA21 tem classificação 'Não exige agendamento' e, por isso, precisa ser última parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedido de localidade classificada como (Última parada) e com pedido que é agendado pelo comercial
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPCEOPPCQEA23,PEDIDODEPCEOPPCQEA24"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPCEOPPCQEA23,PEDIDODEPCEOPPCQEA24"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O pedido PEDIDODEPCEOPPCQEA23 tem classificação 'Não exige agendamento' e, por isso, precisa ser última parada."
E na mensagem "Violações" clico no botão "Cancelar"
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA01"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA02"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA03"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA04"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA05"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA06"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA07"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA08"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA09"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA10"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA11"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA12"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA13"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA14"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA15"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA16"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA17"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA18"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA19"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA20"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA21"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA22"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA23"
Dado que excluo o pedido "PEDIDODEPCEOPPCQEA24"
Dado que excluo o produto "PRODDEPCEOPPCQEA"
Dado que excluo o invólucro "INVDEPCEOPPCQEA"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPCEOPPCQEA"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPCEOPPCQEA"
Dado que excluo a categoria de produto "CATPRODDEPCEOPPCQEA"
Dado que excluo o embarcador "EMBDEPCEOPPCQEA"
Dado que excluo a localidade "LOCORIGEMDEPCEOPPCQEA"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA01"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA02"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA03"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA04"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA05"
Dado que excluo a localidade "LOCDESTDEPCEOPPCQEA06"
Dado que excluo a restrição de localidade "RESTLOCDEPCEOPPCQEA"