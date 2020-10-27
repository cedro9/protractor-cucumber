#language:pt

@WHP
@OperaçãoManualWHP

Funcionalidade: Operação Manual

Cenario: Cadastro de Dependências
Dado que cadastro a entidade "ENTIDADE-OPM1"
Dado que cadastro o caminhão "OPM-1111" do veículo "CBX" da transportadora "Cruzado (RCL)-Produção"
Dado que cadastro o caminhão "OPM-3333" do veículo "CBX" da transportadora "Cruzado (RCL)-Produção"
Dado que cadastro o caminhão "OPM-2222" do veículo "CBX 14,7" da transportadora "Coopercargo (RCL)"
Dado que cadastro o caminhão "OPM-4444" do veículo "CBX 14,7" da transportadora "Coopercargo (RCL)"
Dado que cadastro a viagem para o pedido "AUTOMTESTE134" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE137" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE143" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE146" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE149" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE152" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE155" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE158" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE161" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE164" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE167" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE284" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"

Cenario: Edição de Pedidos - Alterar Destino
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE125"
E seleciono o pedido "AUTOMTESTE125" na cesta geral
E clico em Mover pedidos para minha cesta
# Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE125"
Quando seleciono o pedido "AUTOMTESTE125" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "TRANSMAGNA LTDA"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
E clico no botão detalhes do item de pedido na cesta do usuário
Entao valido se o destino é o "TRANSMAGNA LTDA"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE125"
Quando seleciono o pedido "AUTOMTESTE125" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "AUTOMTESTE125" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino do pedido
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE128"
E seleciono o pedido "AUTOMTESTE128" na cesta geral
E clico em Mover pedidos para minha cesta
# Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE128"
Quando seleciono o pedido "AUTOMTESTE128" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Possíveis do pedido)"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
E clico no botão detalhes do item de pedido na cesta do usuário
Entao valido se o destino é o "TRANSMAGNA LTDA"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE128"
Quando seleciono o pedido "AUTOMTESTE128" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "AUTOMTESTE128" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino selecionado
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE131"
E seleciono o pedido "AUTOMTESTE131" na cesta geral
E clico em Mover pedidos para minha cesta
# Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE131"
Quando seleciono o pedido "AUTOMTESTE131" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Todos os cadastrados)"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
E clico no botão detalhes do item de pedido na cesta do usuário
Entao valido se o destino é o "PACIFICO LOG LOG E TRANSP. EIR"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE131"
Quando seleciono o pedido "AUTOMTESTE131" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "AUTOMTESTE131" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Viagem - Alterar Veículo selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE134"
Quando clico em edição de viagem
Quando altero o veiculo para "CBX 14,7"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "CBX 14,7" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero o veiculo para "CBX"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar transportadora selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE137"
Quando clico em edição de viagem
Quando altero a transportadora para "Coopercargo (RCL)"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao a transportadora "Coopercargo (RCL)" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero a transportadora para "Cruzado (RCL)-Produção"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

@bug
Cenario: Edição de Viagem - Alterar Paradas
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE140"
Quando seleciono o pedido "AUTOMTESTE140" na cesta geral
E clico no botão Mover pedidos para Minha Cesta
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE140"
Quando seleciono o pedido "AUTOMTESTE140" na cesta do usuário
Quando clico no botão Cesta geral
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE143"
Quando expando o header da viagem
Quando clico em Mover seleção aqui da carga
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando clico no botão Minha cesta
Quando na viagem clico em alterar paradas
Quando seleciono a parada "STEFANINI - Porto Alegre"
E clico para subir a parada ao topo da lista
Quando clico no botão "Confirmar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Manipulação de paradas realizada com sucesso."
E clico no botão "OK"
Quando clico em Expandir todos os níveis da viagem
Entao valido se o destino da parada "2" é o "STEFANINI - 12137397"
Quando seleciono o pedido "AUTOMTESTE140" na carga
Quando clico no botão Minha cesta
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando seleciono o pedido "AUTOMTESTE140" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição da Carga - Alterar Tipo de Serviço
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE146"
Quando expando o header da viagem
Quando clico em edição da carga
Quando altero o Tipo de serviço para "Fracionada"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando verifico o tipo de serviço da carga "Fracionada"

Cenario: Edição de Viagem - Alterar Classificações
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE149"
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Quando altero a classificação da viagem para "ENTIDADE-OPM1"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em edição de viagem
Quando clico na aba "Classificações"
Entao a classificação da viagem exibida deve ser a "(CLASSIFICAÇÃO DE VIAGEM) ENTIDADE-OPM1 - ENTIDADE-OPM1"

Cenario: Edição de Viagem - Alterar Atributos
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE152"
Quando clico em edição de viagem
Quando clico na aba "Atributos"
Quando preencho o valor do atributo "500"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Observações/Motorista
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE155"
Quando clico em edição de viagem
Quando na edição de Viagens preencho a Observação "Teste Observação1"
E clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao no detalhe da Viagen deve exibir o texto "Teste Observação1"

@bug
Cenario: Edição de Viagem - Alterar Destino
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE158"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "AUTOMTESTE158" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "TRANSMAGNA LTDA"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico em Expandir todos os níveis da viagem
# Entao na cesta de viagem valido se o destino é o "TRANSMAGNA LTDA - 14816"
Quando seleciono o pedido "AUTOMTESTE158" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
E clico no botão "Salvar"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Inserir Placa
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE161"
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
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE164"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente veículo
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao o veiculo "CBX 14,7" é exibido para a viagem alterada

Cenario: Edição de Viagem - Alterar transportadora selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE167"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente transportadora
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Entao a transportadora "Coopercargo (RCL)" é exibido para a viagem alterada

Cenario: Exclusão de Dependências
Dado que excluo a viagem "AUTOMTESTE134"
Dado que excluo a viagem "AUTOMTESTE137"
Dado que excluo a viagem "AUTOMTESTE143"
Dado que excluo a viagem "AUTOMTESTE146"
Dado que excluo a viagem "AUTOMTESTE149"
Dado que excluo a viagem "AUTOMTESTE152"
Dado que excluo a viagem "AUTOMTESTE155"
Dado que excluo a viagem "AUTOMTESTE158"
Dado que excluo a viagem "AUTOMTESTE161"
Dado que excluo a viagem "AUTOMTESTE164"
Dado que excluo a viagem "AUTOMTESTE167"
Dado que excluo a viagem "AUTOMTESTE284"
Dado que excluo o caminhão "OPM-1111"
Dado que excluo o caminhão "OPM-2222"
Dado que excluo o caminhão "OPM-3333"
Dado que excluo o caminhão "OPM-4444"