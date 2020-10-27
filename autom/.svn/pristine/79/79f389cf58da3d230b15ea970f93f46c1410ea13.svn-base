#language:pt

@WAV
@immediateDelivery

Funcionalidade: Regra de Agendamento com Entrega Imediata
# https://neolog.atlassian.net/browse/WAV-64

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV64"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV64"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV64"
Dado que cadastro o destino "LOCDESTDEPWAV64_1" com a restrição de localidade "RESLOCDEPWAV64" e Cep "04571-011"
Dado que cadastro o destino "LOCDESTDEPWAV64_2" com a restrição de localidade "RESLOCDEPWAV64" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODDEPWAV64"
Dado que cadastro o embarcador "EMBDEPWAV64"
Dado que cadastro o produto "PRODDEPWAV64" com a categoria "CATPRODDEPWAV64" e embarcador "EMBDEPWAV64"
Dado que cadastro o invólucro "INVDEPWAV64" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV64_1" do embarcador "EMBDEPWAV64" tipo de pedido "TIPOPEDIDODEPWAV64" destino "LOCDESTDEPWAV64_1" origem "0870" produto "PRODDEPWAV64" item de pedido "TIPOITEMDEPWAV64" e invólucro "INVDEPWAV64" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV64_2" do embarcador "EMBDEPWAV64" tipo de pedido "TIPOPEDIDODEPWAV64" destino "LOCDESTDEPWAV64_2" origem "0870" produto "PRODDEPWAV64" item de pedido "TIPOITEMDEPWAV64" e invólucro "INVDEPWAV64" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que altero a classificação denominação do pedido "PEDIDODEPWAV64_1" para "Agendamento"
Dado que altero a classificação liberado para imediato do pedido "PEDIDODEPWAV64_1" para "Não"
Dado que altero a classificação denominação do pedido "PEDIDODEPWAV64_2" para "Agendamento"
Dado que adiciono ao contexto de otimização "Contexto de Otimização Primeira Onda" o pré-validador de otimização "MEXImmediateRequiredValidatorFactory" com a ordem "89"

Cenário: Validação de pedido não consolidavél
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV64_1, PEDIDODEPWAV64_2"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV64_1, PEDIDODEPWAV64_2"
E clico no botão Operação manual em todas as páginas
Quando seleciono o contexto de Otimização "Contexto de Otimização Primeira Onda"
E clico no botão OK
Entao é exibido a mensagem que contem "O pedido PEDIDODEPWAV64_1 não podem ser consolidados pois exigem entrega imediata."

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV64_1"
Dado que excluo o pedido "PEDIDODEPWAV64_2"
Dado que excluo o invólucro "INVDEPWAV64"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV64"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV64"
Dado que excluo o produto "PRODDEPWAV64"
Dado que excluo a categoria de produto "CATPRODDEPWAV64"
Dado que excluo o embarcador "EMBDEPWAV64"
Dado que excluo a localidade "LOCDESTDEPWAV64_1"
Dado que excluo a localidade "LOCDESTDEPWAV64_2"
Dado que excluo a restrição de localidade "RESLOCDEPWAV64"