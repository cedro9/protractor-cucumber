#language:pt

@OperaçãoManualKRN

Funcionalidade: Operação Manual

Cenario: Cadastro de Dependências
Dado que cadastro a entidade "CLASSIFICACAOOPM1"
Dado que cadastro o agrupador de zt "AGRZTDEPPOPM"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEMOPM"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERVOPM" com o agrupador de zona de transporte "AGRZTDEPPOPM"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPOPM"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPOPM"
Dado que cadastro a zona de transporte "ZONATRANSPOPM1" do tipo região do agrupador do agrupador "AGRZTDEPPOPM" com a restrição de localidade "RESTLOCDEPOPM" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPOPM" com a restrição de localidade "Padrao" e Cep "08061-020"
Dado que adiciono a origem "LOCORIGEMDEPOPM" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro o destino "LOCDESTDEPOPM" com a restrição de localidade "Padrao" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPOPM2" com a restrição de localidade "Padrao" e Cep "08061-020"
Dado que cadastro o hub de destino "LOCDESTHUBDEPOPM" com a restrição de localidade "Padrao" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPOPM1"
Dado que cadastro o embarcador "EMBDEPOPM1"
Dado que cadastro o produto "PRODDEPOPM1" com a categoria "CATPRODDEPOPM1" e embarcador "EMBDEPOPM1"
Dado que cadastro o invólucro "INVDEPOPM1" com politicas definidas no produto
Dado que cadastro o veículo "VEICULODEPOPM1", com "2,5" de largura, "14,00" de comprimento e "2,80" de altura
Dado que cadastro o veículo "VEICULODEPOPM2", com "2,5" de largura, "10,00" de comprimento e "2,80" de altura
Dado que cadastro a transportadora "TRANSDEPOPM1" para o calculador de tipo de serviço "CALCTIPODESERVOPM", agrupador zona de transporte "AGRZTDEPPOPM", grupo logístico "AGRZTDEPPOPM" e calculador de frete viagem "CALCFRETVIAGEMOPM"
Dado que cadastro a transportadora "TRANSDEPOPM2" para o calculador de tipo de serviço "CALCTIPODESERVOPM", agrupador zona de transporte "AGRZTDEPPOPM", grupo logístico "AGRZTDEPPOPM" e calculador de frete viagem "CALCFRETVIAGEMOPM"
Dado que cadastro o caminhão "OPM-1111" do veículo "VEICULODEPOPM1" da transportadora "TRANSDEPOPM1"
Dado que cadastro o caminhão "OPM-3333" do veículo "VEICULODEPOPM1" da transportadora "TRANSDEPOPM1"
Dado que cadastro o caminhão "OPM-2222" do veículo "VEICULODEPOPM2" da transportadora "TRANSDEPOPM2"
Dado que cadastro o caminhão "OPM-4444" do veículo "VEICULODEPOPM2" da transportadora "TRANSDEPOPM2"
Dado que cadastro o pedido "PEDIDOOPM03" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM05" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM06" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM07" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM08" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM09" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM10" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM11" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM12" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro o pedido "PEDIDOOPM15" do embarcador "EMBDEPOPM1" tipo de pedido "TIPOPEDIDODEPOPM" destino "LOCDESTDEPOPM2" origem "LOCORIGEMDEPOPM" produto "PRODDEPOPM1" item de pedido "TIPOITEMDEPOPM" e invólucro "INVDEPOPM1" e Hub de destino "LOCDESTHUBDEPOPM"
Dado que cadastro a viagem para o pedido "PEDIDOOPM03" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM05" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM06" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM07" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM08" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM09" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM10" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM11" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que cadastro a viagem para o pedido "PEDIDOOPM12" com a transportadora "TRANSDEPOPM1" e veículo "VEICULODEPOPM1"
Dado que adiciono ao contexto de otimização o validador de seleção de operação manual "Transportadoras permitidas por origem e localidade ou origem e zt"
Dado que adiciono a transportadora "TRANSDEPOPM2" e a origem "LOCORIGEMDEPOPM" no parâmetro "Transportadoras permitidas por origem e localidade/zt"
Dado que altero o seletor de veículo para "Seletor - Menor volume de veículo"

Cenario: Edição de Viagem - Alterar Veículo selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM03"
Quando clico em edição de viagem
Quando altero o veiculo para "VEICULODEPOPM2"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "VEICULODEPOPM2" é exibido para a viagem alterada

Cenario: Edição de Viagem - Alterar Paradas
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOOPM15"
Quando seleciono o pedido "PEDIDOOPM15" na cesta geral
E clico no botão Mover pedidos para Minha Cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPM15"
Quando seleciono o pedido "PEDIDOOPM15" na cesta do usuário
Quando clico no botão Cesta geral
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM05"
Quando expando o header da viagem
Quando clico em Mover seleção aqui da carga
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando clico no botão Minha cesta
E expando o header da viagem
E expando o header da carga
E verifico qual é a ultima parada de descarregamento
Quando na viagem clico em alterar paradas
Quando altero a ordem das paradas de descarregamento
Quando clico no botão "Confirmar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Manipulação de paradas realizada com sucesso."
E clico no botão "OK"
Quando expando o header da viagem
E expando o header da carga
Entao valido se o destino da penultima parada foi alterado
Quando expando o header da parada
Quando seleciono o pedido "PEDIDOOPM15" na carga
Quando clico no botão Minha cesta
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPM15"
E seleciono o pedido "PEDIDOOPM15" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição da Carga - Alterar Tipo de Serviço
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM06"
Quando expando o header da viagem
Quando clico em edição da carga
Quando altero o Tipo de serviço para "2"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
E clico no botão detalhes da carga
Quando verifico o tipo de serviço da carga "FLT - Lotação Itinerante fixo"

Cenario: Edição de Viagem - Alterar Classificações
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM07"
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Quando altero a classificação da viagem para "CLASSIFICACAOOPM1"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Entao a classificação da viagem exibida deve ser a "CLASSIFICACAOOPM1 - CLASSIFICACAOOPM1"

Cenario: Edição de Viagem - Alterar Atributos
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM08"
Quando clico em edição de viagem
Quando clico na aba "Atributos"
Quando preencho o valor do atributo "500"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
Quando clico na aba "Atributos"
Quando preencho o valor do atributo "0"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Observações/Motorista
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM09"
Quando clico em edição de viagem
Quando na edição de Viagens preencho a Observação "Teste Observação1"
E clico no botão salvar e uso o contexto de otimização padrão
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
E na edição de viagens apago o campo Observação
E clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Destino
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM10"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header da parada
Quando seleciono o pedido "PEDIDOOPM10" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBDEPOPM"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando expando o header da carga
Entao na cesta de viagem valido se o destino é o "LOCDESTHUBDEPOPM - LOCDESTHUBDEPOPM"
Quando expando o header da parada
Quando seleciono o pedido "PEDIDOOPM10" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Placa
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM11"
Quando clico em edição de viagem
Quando preencho o campo placa do veiculo "OPM-1111"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao no detalhe da Viagen deve exibir a placa "OPM-1111"
Quando clico em edição de viagem
Quando preencho o campo placa do veiculo "OPM-3333"
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar veículo selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPM12"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente veículo
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "Truck" é exibido para a viagem alterada

Cenario: Exclusão de Dependências
Dado que removo do contexto de otimização o pré-validador de operação manual "Transportadoras permitidas por origem e localidade ou origem e zt"
Dado que excluo o pedido "PEDIDOOPM03"
Dado que excluo o pedido "PEDIDOOPM05"
Dado que excluo o pedido "PEDIDOOPM06"
Dado que excluo o pedido "PEDIDOOPM07"
Dado que excluo o pedido "PEDIDOOPM08"
Dado que excluo o pedido "PEDIDOOPM09"
Dado que excluo o pedido "PEDIDOOPM10"
Dado que excluo o pedido "PEDIDOOPM11"
Dado que excluo o pedido "PEDIDOOPM12"
Dado que excluo o pedido "PEDIDOOPM15"
Dado que excluo o produto "PRODDEPOPM1"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPOPM"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPOPM"
Dado que excluo a categoria de produto "CATPRODDEPOPM1"
Dado que excluo o caminhão "OPM-1111"
Dado que excluo o caminhão "OPM-2222"
Dado que excluo o caminhão "OPM-3333"
Dado que excluo o caminhão "OPM-4444"
Dado que excluo o embarcador "EMBDEPOPM1"
Dado que excluo o invólucro "INVDEPOPM1"
Dado que excluo a transportadora "TRANSDEPOPM1"
Dado que excluo a transportadora "TRANSDEPOPM2"
Dado que excluo o veículo "VEICULODEPOPM1"
Dado que excluo o veículo "VEICULODEPOPM2"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERVOPM"
Dado que excluo a zona de transporte "ZONATRANSPOPM1"
Dado que excluo o agrupador de zt "AGRZTDEPPOPM"
Dado que excluo a localidade "LOCORIGEMDEPOPM"
Dado que excluo a localidade "LOCDESTDEPOPM"
Dado que excluo a localidade "LOCDESTDEPOPM2"
Dado que excluo a localidade "LOCDESTHUBDEPOPM"