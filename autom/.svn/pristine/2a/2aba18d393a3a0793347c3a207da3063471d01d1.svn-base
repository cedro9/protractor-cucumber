#language:pt

@WAV
@unloadSequenceByProductCategoryValidator

Funcionalidade: Consolidação de categorias de produtos semelhantes sem intercalar a descarga
# Pendente de automação:
# Contexto selecionado deve conter a configuração do validador MEXUnloadSequenceByProductCategoryValidator
# https://neolog.atlassian.net/browse/WAV-3

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV3"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV3"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV3"
Dado que cadastro o destino "LOCDESTDEPWAV3_1" com a restrição de localidade "RESLOCDEPWAV3" e Cep "78515-000"
Dado que cadastro o destino "LOCDESTDEPWAV3_2" com a restrição de localidade "RESLOCDEPWAV3" e Cep "78557-518"
Dado que cadastro o destino "LOCDESTDEPWAV3_3" com a restrição de localidade "RESLOCDEPWAV3" e Cep "78500-000"
Dado que cadastro o embarcador "EMBDEPWAV3"
Dado que cadastro o produto "PRODDEPWAV3_1" com a categoria "TUBOS - PLASTUBOS" e embarcador "EMBDEPWAV3"
Dado que cadastro o produto "PRODDEPWAV3_2" com a categoria "TUBOS - AMANCO" e embarcador "EMBDEPWAV3"
Dado que cadastro o invólucro "INVDEPWAV3" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV3_1" do embarcador "EMBDEPWAV3" tipo de pedido "TIPOPEDIDODEPWAV3" destino "LOCDESTDEPWAV3_1" origem "0100" produto "PRODDEPWAV3_1" item de pedido "TIPOITEMDEPWAV3" e invólucro "INVDEPWAV3" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV3_2" do embarcador "EMBDEPWAV3" tipo de pedido "TIPOPEDIDODEPWAV3" destino "LOCDESTDEPWAV3_2" origem "0100" produto "PRODDEPWAV3_1" item de pedido "TIPOITEMDEPWAV3" e invólucro "INVDEPWAV3" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV3_3" do embarcador "EMBDEPWAV3" tipo de pedido "TIPOPEDIDODEPWAV3" destino "LOCDESTDEPWAV3_3" origem "0100" produto "PRODDEPWAV3_2" item de pedido "TIPOITEMDEPWAV3" e invólucro "INVDEPWAV3" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que adiciono ao contexto de otimização "Contexto de Otimização Primeira Onda" o pré-validador de otimização "MEXUnloadSequenceByProductCategoryValidator" com a ordem "99"

Cenário: Validar a não consolidação de pedidos com categorias de produtos semelhantes
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV3_1, PEDIDODEPWAV3_2, PEDIDODEPWAV3_3"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV3_1, PEDIDODEPWAV3_2, PEDIDODEPWAV3_3"
E clico no botão Operação manual em todas as páginas
Quando seleciono o contexto de Otimização "Contexto de Otimização Primeira Onda"
E clico no checkbox Usar restrições
E clico na aba Restrições
E seleciono o Veículo "Truck_Pa 7m"
E seleciono a Transportadora "AUTÔNOMOS"
E clico no botão OK
Entao é exibido a mensagem que contem "Ordem de descarregamento possui intercalação entre as categorias de produto TUBOS - PLASTUBOS, TUBOS - AMANCO ."

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV3_1"
Dado que excluo o pedido "PEDIDODEPWAV3_2"
Dado que excluo o pedido "PEDIDODEPWAV3_3"
Dado que excluo o invólucro "INVDEPWAV3"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV3"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV3"
Dado que excluo o produto "PRODDEPWAV3_1"
Dado que excluo o produto "PRODDEPWAV3_2"
Dado que excluo a categoria de produto "CATPRODDEPWAV3"
Dado que excluo o embarcador "EMBDEPWAV3"
Dado que excluo a localidade "LOCDESTDEPWAV3_1"
Dado que excluo a localidade "LOCDESTDEPWAV3_2"
Dado que excluo a localidade "LOCDESTDEPWAV3_3"
Dado que excluo a restrição de localidade "RESLOCDEPWAV3"