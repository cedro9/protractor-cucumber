#language:pt

@SEB
@OperaçãoManualSEB

Funcionalidade: Operação Manual SEB

Cenario: Cadastro de Dependências
Dado que cadastro a restrição de localidade "RESTLOCOPMSEB"
Dado que cadastro a origem "LOCORIGEMOPMSEB" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020" 
Dado que cadastro o destino "LOCDESTOPMSEB" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020"
Dado que cadastro a origem "LOCORIGEMOPMSEB2" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020" 
Dado que cadastro o destino "LOCDESTOPMSEB2" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020"
Dado que cadastro o hub de destino "LOCDESTHUBOPMSEB" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020" 
Dado que cadastro o hub de destino "LOCDESTHUBOPMSEB2" com a restrição de localidade "RESTLOCOPMSEB" e Cep "03374-001" 
Dado que cadastro o hub de passagem "LOCPASSHUBOPMSEB" com a restrição de localidade "RESTLOCOPMSEB" e Cep "08061-020" 
Dado que cadastro o pedido "PEDIDOOPMSEB" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "LOCDESTOPMSEB" origem "LOCORIGEMOPMSEB" produto "AS-4475 MOLA ESC SIMPLES" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "LOCDESTHUBOPMSEB"
Dado que copio o Pedido "PEDIDOOPMSEB", localidade "LOCORIGEMOPMSEB", Produtos "AS-4475 MOLA ESC SIMPLES", tipo de Item de Pedido "Padrão" e Involucros "Granel" "10" vezes
Dado que cadastro o pedido "PEDIDOOPMSEB15" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "LOCDESTOPMSEB2" origem "LOCORIGEMOPMSEB" produto "AS-4475 MOLA ESC SIMPLES" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "LOCDESTHUBOPMSEB"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB3" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB4" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB5" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB6" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB7" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB8" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"
Dado que cadastro a viagem para SEB o pedido "PEDIDOOPMSEB9" com a transportadora "ATUAL SERV TRANSP RAP LTDA" e veículo "Kombi"

Cenario: Edição de Pedidos - Alterar Destino
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOOPMSEB0"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDOOPMSEB0" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPMSEB0"
Quando seleciono o pedido "PEDIDOOPMSEB0" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBOPMSEB2"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDOOPMSEB0/2"
Entao valido se o destino é o "LOCDESTHUBOPMSEB2"
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPMSEB0"
Quando seleciono o pedido "PEDIDOOPMSEB0" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "PEDIDOOPMSEB0" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino do pedido
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOOPMSEB1"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDOOPMSEB1" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPMSEB1"
Quando seleciono o pedido "PEDIDOOPMSEB1" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Possíveis do pedido)"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDOOPMSEB1/1"
Entao valido se o destino é o "LOCDESTHUBOPMSEB"
Quando seleciono o pedido "PEDIDOOPMSEB1" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "PEDIDOOPMSEB1" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Pedidos - Alterar destino para Hub de destino selecionado
Dado que acesso a tela "Programação", "Seleção"
Quando realizo o filtro da Cesta de Pedido com o codigo "PEDIDOOPMSEB2"
Quando oculto a cesta de viagens
Quando clico para ser exibido 50 registros
Quando Seleciono o pedido "PEDIDOOPMSEB2" da Cesta de Pedidos
E clico no botão Mover Pedidos
Quando seleciono o usuario "Neolog"
Entao é exibido a mensagem "Movimentação de pedidos efetuada com sucesso."
E clico no botão OK
Dado que acesso a tela "Programação", "Análise"
Dado que desabilito a exibiçao da Cesta Geral e Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPMSEB2"
Quando seleciono o pedido "PEDIDOOPMSEB2" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Hub de destino mais proximo (Todos os cadastrados)"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando na cesta do usuario clico para expandir o pedido
Quando na cesta do usuario clico para exibir os detalhes da UT "PEDIDOOPMSEB2/1"
Entao valido se o destino é o "LOCDESTHUBOPMSEB"
Quando seleciono o pedido "PEDIDOOPMSEB2" na cesta do usuário
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK
Quando seleciono o pedido "PEDIDOOPMSEB2" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição de Viagem - Alterar Veículo selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB3"
Quando clico em edição de viagem
Quando altero o veiculo para "Toco"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico no botão detalhes da viagem
Entao o veiculo "Toco" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero o veiculo para "Kombi"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar transportadora selecionando campos Manualmente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB4"
Quando clico em edição de viagem
Quando altero a transportadora para "BELNAVE RODOFLUVIAL E LOGISTICA LTD"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico no botão detalhes da viagem
Entao a transportadora "BELNAVE RODOFLUVIAL E LOGISTICA LTD" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero a transportadora para "ATUAL SERV TRANSP RAP LTDA"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Paradas
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOOPMSEB15"
Quando seleciono o pedido "PEDIDOOPMSEB15" na cesta geral
E clico no botão Mover pedidos para Minha Cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOOPMSEB15"
Quando seleciono o pedido "PEDIDOOPMSEB15" na cesta do usuário
Quando clico no botão Cesta geral
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB5"
Quando expando o header da viagem
Quando clico em Mover seleção aqui da carga
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando clico no botão Minha cesta
Quando na viagem clico em alterar paradas
Quando seleciono a parada "LOCDESTOPMSEB2 - São Paulo"
E clico para subir a parada ao topo da lista
Quando clico no botão "Confirmar"
Quando seleciono o contexto de Otimização "Otimização"
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Manipulação de paradas realizada com sucesso."
E clico no botão "OK"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao deve exibir a parada "LOCDESTOPMSEB2"
Quando seleciono a parada na cesta de viagem
Quando clico no botão Minha cesta
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E na mensagem "Violações" clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOOPMSEB15" na cesta do usuário
E clico no botão Mover para cesta Geral

Cenario: Edição da Carga - Alterar Tipo de Serviço
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB6"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando expando o header da UT
Quando seleciono a parada na cesta de viagem
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBOPMSEB2"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando expando o header da UT
Quando expando o header do pedido
Quando clico no botão detalhe da UT do pedido "PEDIDOOPMSEB6"
Entao valido se o destino da UT é o "LOCDESTHUBOPMSEB2"
Quando seleciono a parada na cesta de viagem
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar Destino
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB7"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando seleciono o pedido "PEDIDOOPMSEB7" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "LOCDESTHUBOPMSEB"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando expando o header do pedido
Quando clico no botão detalhe da UT do pedido "PEDIDOOPMSEB7"
Entao valido se o destino da UT é o "LOCDESTHUBOPMSEB"
Quando seleciono o pedido "PEDIDOOPMSEB7" na carga
Quando Clico no botão Unidade de Transporte e Alterar Destinos
Quando altero o destino para "Destino"
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar veículo selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB8"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente veículo
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico no botão detalhes da viagem
Entao o veiculo "Van" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero o veiculo para "kombi"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Edição de Viagem - Alterar transportadora selecionando Automático
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOOPMSEB9"
Quando clico em edição de viagem
Quando clico no botão Selecionar automaticamente transportadora
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Edição feita com sucesso"
E clico no botão OK
Quando clico no botão detalhes da viagem
Entao a transportadora "Default" é exibido para a viagem alterada
Quando clico em edição de viagem
Quando altero a transportadora para "ATUAL SERV TRANSP RAP LTDA"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão OK

Cenario: Exclusão de Dependências
Dado que excluo a viagem SEB "PEDIDOOPMSEB3"
Dado que excluo a viagem SEB "PEDIDOOPMSEB4"
Dado que excluo a viagem SEB "PEDIDOOPMSEB5"
Dado que excluo a viagem SEB "PEDIDOOPMSEB6"
Dado que excluo a viagem SEB "PEDIDOOPMSEB7"
Dado que excluo a viagem SEB "PEDIDOOPMSEB8"
Dado que excluo a viagem SEB "PEDIDOOPMSEB9"
Dado que excluo o pedido "PEDIDOOPMSEB"
Dado que excluo o pedido "PEDIDOOPMSEB" "10" vezes
Dado que excluo o pedido "PEDIDOOPMSEB15"
Dado que excluo a localidade "LOCORIGEMOPMSEB"
Dado que excluo a localidade "LOCDESTOPMSEB"
Dado que excluo a localidade "LOCORIGEMOPMSEB2"
Dado que excluo a localidade "LOCDESTOPMSEB2"
Dado que excluo a localidade "LOCDESTHUBOPMSEB"
Dado que excluo a localidade "LOCDESTHUBOPMSEB2"
Dado que excluo a localidade "LOCPASSHUBOPMSEB"
Dado que excluo a restrição de localidade "RESTLOCOPMSEB"