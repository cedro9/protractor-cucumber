#language:pt

@GTF-Frigorificado
@OperaçãoManualGTF-Frigorificado

Funcionalidade: Operação Manual GTF

Cenario: Cadastro de Dependências
Dado que cadastro o tipo de serviço "TIPOSERVDEPDOCA"
Dado que cadastro a entidade "ENTIDADE-OPM1"
Dado que cadastro a entidade "ENTIDADE-OPM2"
Dado que cadastro o agrupador de zt "ZONATRANSP-OPM"
Dado que cadastro a restrição de localidade "SEG-SEX 8h-18h"
Dado que cadastro a restrição de localidade "RESLOCDEPGTF"
Dado que cadastro a zona de transporte "ZONATRANSP1-OPM" com a cidade "São Paulo" do agrupador "ZONATRANSP-OPM" com a restrição de localidade "RESLOCDEPGTF" e prioridade "1"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEM-OPM"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERV-OPM" com o agrupador de zona de transporte "ZONATRANSP-OPM"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEP-OPM"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEP-OPM"
# Dado que cadastro a restrição de localidade "RESTLOCDEP-OPM"
Dado que cadastro a origem "LOCORIGEMDEP-OPM" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020" 
Dado que cadastro o destino "LOCDESTDEP-OPM" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020"
Dado que cadastro a origem "LOCORIGEMDEP-OPM2" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020" 
Dado que cadastro o destino "LOCDESTDEP-OPM2" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020"
Dado que cadastro o hub de destino "LOCDESTHUBDEP-OPM" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020" 
Dado que cadastro o hub de destino "LOCDESTHUBDEP-OPM2" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08412-000" 
Dado que cadastro o hub de passagem "LOCPASSHUBDEP-OPM" com a restrição de localidade "SEG-SEX 8h-18h" e Cep "08061-020" 
Dado que cadastro a categoria de produto "CATPRODDEP01-OPM"
Dado que cadastro o embarcador "EMBDEP01-OPM"
Dado que cadastro o produto "PRODDEP01-OPM" com a categoria "CATPRODDEP01-OPM" e embarcador "EMBDEP01-OPM"
Dado que cadastro o invólucro "INVDEP01-OPM" com politicas definidas no produto
Dado que cadastro o veículo "VEICULODEP-OPM1", com "2,5" de largura, "14,00" de comprimento e "2,80" de altura
Dado que cadastro o veículo "VEICULODEP-OPM2", com "2,5" de largura, "10,00" de comprimento e "2,80" de altura
Dado que cadastro a transportadora "TRANSPORTADORA-OPM1" para o calaculador de tipo de serviço "CALCTIPODESERV-OPM", agrupador zona de transporte "ZONATRANSP-OPM", grupo logístico "ZONATRANSP-OPM" e calculador de frete viagem "CALCFRETVIAGEM-OPM"
Dado que cadastro a transportadora "TRANSPORTADORA-OPM2" para o calaculador de tipo de serviço "CALCTIPODESERV-OPM", agrupador zona de transporte "ZONATRANSP-OPM", grupo logístico "ZONATRANSP-OPM" e calculador de frete viagem "CALCFRETVIAGEM-OPM"
Dado que cadastro o caminhão "OPM-1111" do veículo "VEICULODEP-OPM1" da transportadora "TRANSPORTADORA-OPM1"
Dado que cadastro o caminhão "OPM-3333" do veículo "VEICULODEP-OPM1" da transportadora "TRANSPORTADORA-OPM1"
Dado que cadastro o caminhão "OPM-2222" do veículo "VEICULODEP-OPM2" da transportadora "TRANSPORTADORA-OPM2"
Dado que cadastro o caminhão "OPM-4444" do veículo "VEICULODEP-OPM2" da transportadora "TRANSPORTADORA-OPM2"
Dado que cadastro o pedido "PEDIDO01-OPM0" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM1" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM2" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM3" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM4" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM5" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM6" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM7" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM8" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM9" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM10" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM11" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM12" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM13" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM14" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro o pedido "PEDIDO01-OPM15" do embarcador "EMBDEP01-OPM" tipo de pedido "TIPOPEDIDODEP-OPM" destino "LOCDESTDEP-OPM2" origem "LOCORIGEMDEP-OPM" produto "PRODDEP01-OPM" item de pedido "TIPOITEMDEP-OPM" e invólucro "INVDEP01-OPM" e Hub de destino "LOCDESTHUBDEP-OPM"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM3" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM4" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
# Dado que cadastro a viagem para o pedido "PEDIDO01-OPM5" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM6" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM7" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM8" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM9" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM10" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM11" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM12" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM13" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
Dado que cadastro a viagem para o pedido "PEDIDO01-OPM14" com a transportadora "TRANSPORTADORA-OPM1" e veículo "VEICULODEP-OPM1"
# Dado que adiciono ao contexto de otimização o validador de seleção de operação manual "Transportadoras permitidas por origem e localidade ou origem e zt"
Dado que adiciono a transportadora "TRANSPORTADORA-OPM2" e a origem "LOCORIGEMDEP-OPM" no parâmetro "Transportadoras permitidas por origem e localidade/zt"
# Dado que altero o seletor de veículo para "Seletor - Menor volume de veículo"

Cenario: Edição de Pedidos - Alterar Destino
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-OPM0"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-OPM0" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario Logado
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-OPM0"
Quando seleciono o pedido "PEDIDO01-OPM0" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBDEP-OPM"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDO01-OPM0/1"
Entao valido se o destino é o "LOCDESTHUBDEP-OPM"
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-OPM0"
Quando seleciono o pedido "PEDIDO01-OPM0" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "PEDIDO01-OPM0" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino do pedido
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-OPM1"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-OPM1" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "regional.Frigorificado"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-OPM1"
Quando seleciono o pedido "PEDIDO01-OPM1" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Possíveis do pedido)"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDO01-OPM1/1"
Entao valido se o destino é o "LOCDESTHUBDEP-OPM"
Quando seleciono o pedido "PEDIDO01-OPM1" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino selecionado
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDO01-OPM2"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDO01-OPM2" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "regional.Frigorificado"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-OPM2"
Quando seleciono o pedido "PEDIDO01-OPM2" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Todos os cadastrados)"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDO01-OPM2/1"
Entao valido se o destino é o "LOCDESTHUBDEP-OPM"
Quando seleciono o pedido "PEDIDO01-OPM2" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Viagem - Alterar Veículo selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM3"
Quando clico em edição de viagem
Quando altero o veiculo para "VEICULODEP-OPM2"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "VEICULODEP-OPM2" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero o veiculo para "VEICULODEP-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar transportadora selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM4"
Quando clico em edição de viagem
Quando altero a transportadora para "TRANSPORTADORA-OPM2"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao a transportadora "TRANSPORTADORA-OPM2" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero a transportadora para "TRANSPORTADORA-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Paradas
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDO01-OPM15,PEDIDO01-OPM5"
Quando seleciono o pedido "PEDIDO01-OPM15" na cesta geral
Quando seleciono o pedido "PEDIDO01-OPM5" na cesta geral
E clico no botão Mover pedidos para Minha Cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDO01-OPM15,PEDIDO01-OPM5"
Quando seleciono o pedido "PEDIDO01-OPM5" na cesta do usuário
Quando clico em Mover selação aqui na cesta de viagem
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando seleciono o pedido "PEDIDO01-OPM15" na cesta do usuário
Quando clico no botão Cesta geral
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM5"
Quando expando o header da viagem
Quando clico em Mover selação aqui da carga
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando clico no botão Minha cesta
Quando na viagem clico em alterar paradas
Quando seleciono a parada "LOCDESTDEP-OPM2 - São Paulo (SP)"
E clico para subir a parada ao topo da lista
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Manipulação de paradas realizada com sucesso."
E clico no botão "OK"
Quando clico em Expandir todos os níveis da viagem
E clico no botão detalhe da UT do pedido "PEDIDO01-OPM15"
Entao deve exibir o  destino "LOCDESTDEP-OPM2" no detalhe da UT
Quando seleciono a viagem
Quando cancelo a viagem
Quando clico no botão Minha cesta
Quando seleciono o pedido "PEDIDO01-OPM15" na cesta do usuário
Quando seleciono o pedido "PEDIDO01-OPM5" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição da Carga - Alterar Tipo de Serviço
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM6"
Quando expando o header da viagem
Quando clico em edição da carga
Quando altero o Tipo de serviço para "TIPOSERVDEPDOCA"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando clico no botão detalhes da carga
Quando verifico o tipo de serviço da carga "TIPOSERVDEPDOCA"
Quando clico em edição da carga
Quando altero o Tipo de serviço para "Frete Peso"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Classificações
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM7"
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Quando altero a classificação da viagem para "ENTIDADE-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Entao a classificação da viagem exibida deve ser a "ENTIDADE-OPM1 - ENTIDADE-OPM1"

Cenario: Edição de Viagem - Alterar Atributos
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM8"
Quando clico em edição de viagem
Quando clico na aba "Atributos"
Quando preencho o valor do atributo "500"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
Quando clico na aba "Atributos"
Quando preencho o valor do atributo "0"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Observações/Motorista
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM9"
Quando clico em edição de viagem
Quando na edição de Viagens preencho a Observação "Teste Observação1"
E clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao no detalhe da Viagen deve exibir o texto "Teste Observação1"
Quando clico em edição de viagem
Quando na edição de viagens apago o campo Observação
E clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Destino
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM10"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header da parada
Quando seleciono o pedido "PEDIDO01-OPM10" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBDEP-OPM"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando expando o header da carga
Entao na cesta de viagem valido se o destino é o "LOCDESTHUBDEP-OPM - LOCDESTHUBDEP-OPM"
Quando expando o header da parada
Quando seleciono o pedido "PEDIDO01-OPM10" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Placa
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM11"
Quando clico em edição de viagem
Quando preencho o campo placa do veiculo "OPM-1111"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao no detalhe da Viagen deve exibir a placa "OPM-1111"
Quando clico em edição de viagem
Quando preencho o campo placa do veiculo "OPM-3333"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar veículo selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM12"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente veículo
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "Padrao" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero o veiculo para "VEICULODEP-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar transportadora selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDO01-OPM13"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente transportadora
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao a transportadora "GONCALVES & TORTOLA S/A" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero a transportadora para "TRANSPORTADORA-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Exclusão de Dependências
# Dado que removo do contexto de otimização o pré-validador de operação manual "Transportadoras permitidas por origem e localidade ou origem e zt"
Dado que excluo o pedido "PEDIDO01-OPM0"
Dado que excluo o pedido "PEDIDO01-OPM1"
Dado que excluo o pedido "PEDIDO01-OPM2"
Dado que excluo o pedido "PEDIDO01-OPM3"
Dado que excluo o pedido "PEDIDO01-OPM4"
Dado que excluo o pedido "PEDIDO01-OPM5"
Dado que excluo o pedido "PEDIDO01-OPM6"
Dado que excluo o pedido "PEDIDO01-OPM7"
Dado que excluo o pedido "PEDIDO01-OPM8"
Dado que excluo o pedido "PEDIDO01-OPM9"
Dado que excluo o pedido "PEDIDO01-OPM10"
Dado que excluo o pedido "PEDIDO01-OPM11"
Dado que excluo o pedido "PEDIDO01-OPM12"
Dado que excluo o pedido "PEDIDO01-OPM13"
Dado que excluo o pedido "PEDIDO01-OPM14"
Dado que excluo o pedido "PEDIDO01-OPM15"
Dado que removo a transportadora "TRANSPORTADORA-OPM2" e a origem "LOCORIGEMDEP-OPM" do parâmetro "Transportadoras permitidas por origem e localidade/zt"
Dado que excluo o produto "PRODDEP01-OPM"
Dado que excluo o tipo de pedido "TIPOPEDIDODEP-OPM"
Dado que excluo o tipo de item de pedido "TIPOITEMDEP-OPM"
Dado que excluo a localidade "LOCORIGEMDEP-OPM"
Dado que excluo a localidade "LOCORIGEMDEP-OPM2"
Dado que excluo a localidade "LOCDESTDEP-OPM"
Dado que excluo a localidade "LOCDESTDEP-OPM2"
Dado que excluo a localidade "LOCPASSHUBDEP-OPM"
Dado que excluo a localidade "LOCDESTHUBDEP-OPM"
Dado que excluo a localidade "LOCDESTHUBDEP-OPM2"
Dado que excluo a categoria de produto "CATPRODDEP01-OPM"
Dado que excluo o caminhão "OPM-1111"
Dado que excluo o caminhão "OPM-2222"
Dado que excluo o caminhão "OPM-3333"
Dado que excluo o caminhão "OPM-4444"
Dado que excluo o embarcador "EMBDEP01-OPM"
Dado que excluo o invólucro "INVDEP01-OPM"
Dado que excluo a transportadora "TRANSPORTADORA-OPM1"
Dado que excluo a transportadora "TRANSPORTADORA-OPM2"
Dado que excluo o veículo "VEICULODEP-OPM1"
Dado que excluo o veículo "VEICULODEP-OPM2"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERV-OPM"
Dado que excluo a zona de transporte "ZONATRANSP1-OPM"
Dado que excluo o agrupador de zt "ZONATRANSP-OPM"
Dado que excluo o tipo de serviço "TIPOSERVDEPDOCA"
Dado que excluo a restrição de localidade "RESLOCDEPGTF"