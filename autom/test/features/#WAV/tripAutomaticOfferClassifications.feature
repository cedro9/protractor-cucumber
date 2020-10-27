#language:pt

@WAV
@tripAutomaticOfferClassifications

Funcionalidade: Classificações de viagens que devem ser ofertadas automaticamente
# https://neolog.atlassian.net/browse/WAV-11

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV11"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV11"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV11"
Dado que cadastro o destino "LOCDESTDEPWAV11" com a restrição de localidade "RESLOCDEPWAV11" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODDEPWAV11"
Dado que cadastro o embarcador "EMBDEPWAV11"
Dado que cadastro o produto "PRODDEPWAV11" com a categoria "CATPRODDEPWAV11" e embarcador "EMBDEPWAV11"
Dado que cadastro o invólucro "INVDEPWAV11" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV11_1" do embarcador "EMBDEPWAV11" tipo de pedido "TIPOPEDIDODEPWAV11" destino "LOCDESTDEPWAV11" origem "0100" produto "PRODDEPWAV11" item de pedido "TIPOITEMDEPWAV11" e invólucro "INVDEPWAV11" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV11_2" do embarcador "EMBDEPWAV11" tipo de pedido "TIPOPEDIDODEPWAV11" destino "LOCDESTDEPWAV11" origem "0100" produto "PRODDEPWAV11" item de pedido "TIPOITEMDEPWAV11" e invólucro "INVDEPWAV11" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que removo a origem "0100" e usuário "sumaré" do parâmetro genérico Troca o usuário da viagem - Otimização automática
Dado que preencho o parâmetro genérico Troca o usuário da viagem - Otimização automática com a origem "0100" e usuário "Neolog"

Cenario: Validar a não oferta de viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV11_1"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV11_1"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV11_1"
E verifico se a viagem está com o status "Distribuída"
E cancelo a viagem do pedido "PEDIDODEPWAV11_1" com o contexto "Contexto de Otimização Primeira Onda"

Cenario: Validar a oferta de viagem
Dado que preencho o parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente com o tipo de classificação "Tipo de geração de viagem" e classificação "Otimizada"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV11_2"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV11_2"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV11_2"
E verifico se a viagem está com o status "Ofertada (Aguardando)"
E que seja cancelada a oferta da viagem com o pedido "PEDIDODEPWAV11_2"
E cancelo a viagem do pedido "PEDIDODEPWAV11_2" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV11_1"
Dado que excluo o pedido "PEDIDODEPWAV11_2"
Dado que excluo o invólucro "INVDEPWAV11"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV11"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV11"
Dado que excluo o produto "PRODDEPWAV11"
Dado que excluo a categoria de produto "CATPRODDEPWAV11"
Dado que excluo o embarcador "EMBDEPWAV11"
Dado que excluo a localidade "LOCDESTDEPWAV11"
Dado que excluo a restrição de localidade "RESLOCDEPWAV11"
Dado que removo a origem "0100" e usuário "Neolog" do parâmetro genérico Troca o usuário da viagem - Otimização automática
Dado que preencho o parâmetro genérico Troca o usuário da viagem - Otimização automática com a origem "0100" e usuário "sumaré"
Dado que removo o "Tipo de geração de viagem" com valor "Otimizada" do parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente