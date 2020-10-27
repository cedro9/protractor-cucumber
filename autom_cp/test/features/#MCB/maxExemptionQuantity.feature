#language:pt

@bug
# Esta feature deverá eventualmente ser revsita, pois Consultoria informa sobre uma incerteza de utilização da mesma pelo cliente, devido a mudança de lei logística.
# Portanto, a issue de não conformidade, MCA-146, foi rejeitada pois o cliente disse que haveria mudanças na legislação de transporte de produtos perigosos.

@MCB
@maxExemptionQuantity

Funcionalidade: Quantidade máxima de isenção
# https://neolog.atlassian.net/browse/MCA-24

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPMEQ01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPMEQ02" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPMEQ"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPMEQ"
Dado que cadastro a restrição de localidade "RESTLOCDEPMEQ"
Dado que cadastro a origem "LOCORIGEMDEPMEQ" com a restrição de localidade "RESTLOCDEPMEQ" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPMEQ" com a restrição de localidade "RESTLOCDEPMEQ" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPMEQ"
Dado que cadastro o embarcador "EMBDEPMEQ"
Dado que cadastro o produto "PRODDEPMEQ01" com a categoria "CATPRODDEPMEQ" e embarcador "EMBDEPMEQ" e classificação classe de risco "CLADEPMEQ01"
Dado que cadastro o produto "PRODDEPMEQ02" com a categoria "CATPRODDEPMEQ" e embarcador "EMBDEPMEQ" e classificação classe de risco "CLADEPMEQ02"
Dado que cadastro o produto "PRODDEPMEQ03" com a categoria "CATPRODDEPMEQ" e embarcador "EMBDEPMEQ" e classificação classe de risco "CLADEPMEQ02"
Dado que cadastro o invólucro "INVDEPMEQ" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDOMEQ01" do embarcador "EMBDEPMEQ" tipo de pedido "TIPOPEDIDODEPMEQ" destino "LOCDESTDEPMEQ" origem "LOCORIGEMDEPMEQ" produto "PRODDEPMEQ01" item de pedido "TIPOITEMDEPMEQ" e invólucro "INVDEPMEQ" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOMEQ02" do embarcador "EMBDEPMEQ" tipo de pedido "TIPOPEDIDODEPMEQ" destino "LOCDESTDEPMEQ" origem "LOCORIGEMDEPMEQ" produto "PRODDEPMEQ02" item de pedido "TIPOITEMDEPMEQ" e invólucro "INVDEPMEQ" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOMEQ03" do embarcador "EMBDEPMEQ" tipo de pedido "TIPOPEDIDODEPMEQ" destino "LOCDESTDEPMEQ" origem "LOCORIGEMDEPMEQ" produto "PRODDEPMEQ02" item de pedido "TIPOITEMDEPMEQ" e invólucro "INVDEPMEQ" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOMEQ04" do embarcador "EMBDEPMEQ" tipo de pedido "TIPOPEDIDODEPMEQ" destino "LOCDESTDEPMEQ" origem "LOCORIGEMDEPMEQ" produto "PRODDEPMEQ03" item de pedido "TIPOITEMDEPMEQ" e invólucro "INVDEPMEQ" e classificação "Não exige agendamento"
Dado que preencho o parâmetro genérico Quantidade máxima de isenção com o produto "PRODDEPMEQ01" e valor "10"
Dado que preencho o parâmetro genérico Quantidade máxima de isenção com o produto "PRODDEPMEQ02" e valor "5"
Dado que preencho o parâmetro genérico Quantidade máxima de isenção com o produto "PRODDEPMEQ03" e valor "8"
Dado que preencho o parâmetro genérico Incompatibilidade de produtos perigosos por classe de risco com uma classificação "CLADEPMEQ01" e classificação incompatível "CLADEPMEQ02"
Dado que adiciono ao contexto de otimização o pré-validador de otimização "Carga exclusiva por classificação da localidade de descarregamento e classificação de agendamento do pedido"

Cenario: Apresenta mensagem de violação ao realizar operação manual com dois produtos incompatíveis - MCA-146 (Issue rejeitada por Consultoria devido a incerteza de utilização pelo cliente, mudança de lei logística)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOMEQ01,PEDIDOMEQ02"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOMEQ01,PEDIDOMEQ02"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "Produto PRODDEPMEQ02 com classe de risco CLADEPMEQ02 possui o peso total (10 kg) maior que a quantidade de isenção permitida (5 kg)"

Cenario: Não apresenta mensagem de violação ao realizar operação manual com dois produtos compatíveis
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOMEQ03,PEDIDOMEQ04"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOMEQ03,PEDIDOMEQ04"
E clico no botão "Operação manual em todas as páginas"
E clico no botão OK
E é exibido uma mensagem que contem "Não foram geradas violações."
E clico no botão Cancelar

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDOMEQ01"
Dado que excluo o pedido "PEDIDOMEQ02"
Dado que excluo o pedido "PEDIDOMEQ03"
Dado que excluo o pedido "PEDIDOMEQ04"
Dado que excluo o produto "PRODDEPMEQ01"
Dado que excluo o produto "PRODDEPMEQ02"
Dado que excluo o produto "PRODDEPMEQ03"
Dado que excluo o invólucro "INVDEPMEQ"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPMEQ"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPMEQ"
Dado que excluo a categoria de produto "CATPRODDEPMEQ"
Dado que excluo o embarcador "EMBDEPMEQ"
Dado que excluo a localidade "LOCORIGEMDEPMEQ"
Dado que excluo a localidade "LOCDESTDEPMEQ"
Dado que excluo a restrição de localidade "RESTLOCDEPMEQ"