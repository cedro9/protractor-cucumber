#language:pt

@Operacoes
@Agendamento

Funcionalidade: Agendamento

Cenario: Cadastrar de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPAGE"
Dado que cadastro o tipo de item de pedido "TIPITEDEPAGE"
Dado que cadastro a restrição de localidade "RESLOCDEPAGE"
Dado que cadastro a origem "ORIDEPAGE" com a restrição de localidade "RESLOCDEPAGE" e Cep "76820-408"
Dado que adiciono a origem "ORIDEPAGE" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro o destino "DESTDEPAGE" com a restrição de localidade "RESLOCDEPAGE" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESDEPAGE" com a restrição de localidade "RESLOCDEPAGE" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPAGE"
Dado que cadastro o embarcador "EMBDEPAGE"
Dado que cadastro o invólucro "INVDEPAGE" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPAGE" com a categoria "CATPRODDEPAGE" e embarcador "EMBDEPAGE"
Dado que cadastro o produto "PRODDEPAGE02" com a categoria "CATPRODDEPAGE" e embarcador "EMBDEPAGE"
Dado que cadastro o pedido "PEDIDOAGE01" do embarcador "EMBDEPAGE" tipo de pedido "TIPOPEDDEPAGE" destino "DESTDEPAGE" origem "ORIDEPAGE" produtos "PRODDEPAGE" e "PRODDEPAGE02" item de pedido "TIPITEDEPAGE" e invólucro "INVDEPAGE" e Hub de destino "HUBDESDEPAGE"
Dado que cadastro o pedido "PEDIDOAGE02" do embarcador "EMBDEPAGE" tipo de pedido "TIPOPEDDEPAGE" destino "DESTDEPAGE" origem "ORIDEPAGE" produtos "PRODDEPAGE" e "PRODDEPAGE02" item de pedido "TIPITEDEPAGE" e invólucro "INVDEPAGE" e Hub de destino "HUBDESDEPAGE"
Dado que cadastro o pedido "PEDIDOAGE03" do embarcador "EMBDEPAGE" tipo de pedido "TIPOPEDDEPAGE" destino "DESTDEPAGE" origem "ORIDEPAGE" produtos "PRODDEPAGE" e "PRODDEPAGE02" item de pedido "TIPITEDEPAGE" e invólucro "INVDEPAGE" e Hub de destino "HUBDESDEPAGE"
Dado que cadastro o pedido "PEDIDOAGE04" do embarcador "EMBDEPAGE" tipo de pedido "TIPOPEDDEPAGE" destino "DESTDEPAGE" origem "ORIDEPAGE" produtos "PRODDEPAGE" e "PRODDEPAGE02" item de pedido "TIPITEDEPAGE" e invólucro "INVDEPAGE" e Hub de destino "HUBDESDEPAGE"

Cenario: Agendamento de UTs em cesta com sucesso
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGE01"
Quando seleciono o pedido "PEDIDOAGE01" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGE01"
Quando seleciono o pedido "PEDIDOAGE01" na cesta do usuário
E clico no botão Agendar
Quando seleciono o destino "DESTDEPAGE"
E agendo o pedido para "23/09/2019" até as "18":"30"
E preencho a senha da agenda "AGE01"
E seleciono todas as Uts
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Agenda criada com sucesso."
E clico no botão "OK"
Entao verifico se o pedido está agendado para "23/09/19 18:30"

Cenario: Agendamento de UTs em cesta sem sucesso - data não preenchida
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGE02"
Quando seleciono o pedido "PEDIDOAGE02" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGE02"
Quando seleciono o pedido "PEDIDOAGE02" na cesta do usuário
E clico no botão Agendar
Quando seleciono o destino "DESTDEPAGE"
E preencho a senha da agenda "AGE02"
E seleciono todas as Uts
E clico no botão salvar e uso o contexto de otimização padrão
Entao é exibido a mensagem "Não foi selecionada data para agendamento."

Cenario: Agendamento de UTs em cesta sem sucesso - nenhuma ut selecionada
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGE03"
Quando seleciono o pedido "PEDIDOAGE03" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGE03"
Quando seleciono o pedido "PEDIDOAGE03" na cesta do usuário
E clico no botão Agendar
Quando seleciono o destino "DESTDEPAGE"
E agendo o pedido para "23/09/2019" até as "18":"30"
E preencho a senha da agenda "AGE03"
E clico no botão salvar e uso o contexto de otimização padrão
Entao é exibido a mensagem "Não foram selecionadas unidades de transporte para agendamento."

@MADN
Cenario: Cancelamento de agendamento de UTs em cesta com sucesso
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGE04"
E expando o header do pedido
E seleciono o item de pedido "PEDIDOAGE04/1" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGE04"
Quando seleciono o pedido "PEDIDOAGE04" na cesta do usuário
E clico no botão Agendar
Quando seleciono o destino "DESTDEPAGE"
E agendo o pedido para "23/09/2019" até as "18":"30"
E preencho a senha da agenda "AGE01"
E seleciono todas as Uts
E clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao é exibido a mensagem "Agenda criada com sucesso."
E clico no botão "OK"
Entao verifico se o pedido está agendado para "23/09/19 18:30"
E cancelo o agendamento

# Pendente:
# Cenario: Agendamento de UTs em cesta com quebra
# Cenario: Agendamento de UTs em viagem
# Cenario: Agendamento criando viagem
# Cenario: Agendamento em massa

Cenario: Excluir dependências
Dado que excluo o pedido "PEDIDOAGE01"
Dado que excluo o pedido "PEDIDOAGE02"
Dado que excluo o pedido "PEDIDOAGE03"
Dado que excluo o pedido "PEDIDOAGE04"
Dado que excluo o produto "PRODDEPAGE"
Dado que excluo o produto "PRODDEPAGE02"
Dado que excluo o invólucro "INVDEPAGE"
Dado que excluo o tipo de pedido "TIPOPEDDEPAGE"
Dado que excluo o tipo de item de pedido "TIPITEDEPAGE"
Dado que excluo a localidade "ORIDEPAGE"
Dado que excluo a localidade "DESTDEPAGE"
Dado que excluo a localidade "HUBDESDEPAGE"
Dado que excluo a restrição de localidade "RESLOCDEPAGE"
Dado que excluo a categoria de produto "CATPRODDEPAGE"
Dado que excluo o embarcador "EMBDEPAGE"