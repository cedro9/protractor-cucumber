#language:pt

@WAV
@tripAutomaticOfferExceptions

Funcionalidade: Exceções do fluxo de oferta automática de viagens
# https://neolog.atlassian.net/browse/WAV-7

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV7_1"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPWAV7"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPWAV7"
Dado que cadastro o destino "LOCDESTDEPWAV7_1" com a restrição de localidade "RESLOCDEPWAV7_1" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODDEPWAV7"
Dado que cadastro o embarcador "EMBDEPWAV7"
Dado que cadastro o produto "PRODDEPWAV7" com a categoria "CATPRODDEPWAV7" e embarcador "EMBDEPWAV7"
Dado que cadastro o invólucro "INVDEPWAV7" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPWAV7_1" do embarcador "EMBDEPWAV7" tipo de pedido "TIPOPEDIDODEPWAV7" destino "LOCDESTDEPWAV7_1" origem "0100" produto "PRODDEPWAV7" item de pedido "TIPOITEMDEPWAV7" e invólucro "INVDEPWAV7" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV7_2" do embarcador "EMBDEPWAV7" tipo de pedido "TIPOPEDIDODEPWAV7" destino "LOCDESTDEPWAV7_1" origem "0100" produto "PRODDEPWAV7" item de pedido "TIPOITEMDEPWAV7" e invólucro "INVDEPWAV7" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV7_3" do embarcador "EMBDEPWAV7" tipo de pedido "TIPOPEDIDODEPWAV7" destino "LOCDESTDEPWAV7_1" origem "0100" produto "PRODDEPWAV7" item de pedido "TIPOITEMDEPWAV7" e invólucro "INVDEPWAV7" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que cadastro o pedido "PEDIDODEPWAV7_4" do embarcador "EMBDEPWAV7" tipo de pedido "TIPOPEDIDODEPWAV7" destino "LOCDESTDEPWAV7_1" origem "0100" produto "PRODDEPWAV7" item de pedido "TIPOITEMDEPWAV7" e invólucro "INVDEPWAV7" e atributo "Percentual de Carga do SAP" com valor "100"
Dado que preencho o parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente com o tipo de classificação "Tipo de geração de viagem" e classificação "Otimizada"
Dado que removo a origem "0100" e usuário "sumaré" do parâmetro genérico Troca o usuário da viagem - Otimização automática
Dado que preencho o parâmetro genérico Troca o usuário da viagem - Otimização automática com a origem "0100" e usuário "Neolog"

Cenário: Validar exceção no fluxo de oferta automática - Origem
Dado que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com origem "Sumaré"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV7_1"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV7_1"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV7_1"
E verifico se a viagem está com o status "Distribuída"
E cancelo a viagem do pedido "PEDIDODEPWAV7_1" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Validar exceção no fluxo de oferta automática - Zona de Transporte
Dado que removo a origem "Sumaré" do parâmetro genérico Exceções do fluxo de oferta automática de viagens
Dado que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com agrupador "Itinerarios SUM" e zona de transporte "SP0501"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV7_2"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV7_2"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV7_2"
E verifico se a viagem está com o status "Distribuída"
E cancelo a viagem do pedido "PEDIDODEPWAV7_2" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Validar exceção no fluxo de oferta automática - Classificação
Dado que removo o agrupador "Itinerarios SUM" e zona de transporte "SP0501" do parâmetro genérico Exceções do fluxo de oferta automática de viagens
Dado que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com tipo de classificação "Tipo de geração de viagem" e classificação "Otimizada"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV7_3"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV7_3"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV7_3"
E verifico se a viagem está com o status "Distribuída"
E cancelo a viagem do pedido "PEDIDODEPWAV7_3" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Validade da exceção expirada
Dado que removo o tipo de classificação "Tipo de geração de viagem" e classificação "Otimizada" do parâmetro genérico Exceções do fluxo de oferta automática de viagens
Dado que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com data inicial "01/01/2019" data final "01/02/2019" e origem "0100"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPWAV7_4"
E clico no botão Mover todas as páginas para a cesta
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPWAV7_4"
E otimizo com o contexto "Contexto de Otimização Primeira Onda"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao filtro a cesta de viagem pelo pedido "PEDIDODEPWAV7_4"
E verifico se a viagem está com o status "Ofertada (Aguardando)"
E que seja cancelada a oferta da viagem com o pedido "PEDIDODEPWAV7_4"
E cancelo a viagem do pedido "PEDIDODEPWAV7_4" com o contexto "Contexto de Otimização Primeira Onda"

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPWAV7_1"
Dado que excluo o pedido "PEDIDODEPWAV7_2"
Dado que excluo o pedido "PEDIDODEPWAV7_3"
Dado que excluo o pedido "PEDIDODEPWAV7_4"
Dado que excluo o invólucro "INVDEPWAV7"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPWAV7"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPWAV7"
Dado que excluo o produto "PRODDEPWAV7"
Dado que excluo a categoria de produto "CATPRODDEPWAV7"
Dado que excluo o embarcador "EMBDEPWAV7"
Dado que excluo a localidade "LOCDESTDEPWAV7_1"
Dado que excluo a restrição de localidade "RESLOCDEPWAV7_1"
Dado que removo a origem "0100" e usuário "Neolog" do parâmetro genérico Troca o usuário da viagem - Otimização automática
Dado que preencho o parâmetro genérico Troca o usuário da viagem - Otimização automática com a origem "0100" e usuário "sumaré"
Dado que removo o "Tipo de geração de viagem" com valor "Otimizada" do parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente
Dado que removo data inicial "01/01/2019" data final "01/02/2019" e origem "0100" do parâmetro genérico Exceções do fluxo de oferta automática de viagens