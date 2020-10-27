#language:pt

@WHP
@AgendamentoWHP
@bug

Funcionalidade: Agendamento

# Cenario: Cadastrar de dependências
# Dado que libero acesso full as telas do sistema

# Cenario: Agendamento de UTs em cesta com sucesso
# Dado que acesso a tela "Programação", "Análise"
# Quando filtro a cesta geral pelo pedido "AUTOMTESTE02"
# Quando seleciono o pedido "AUTOMTESTE02" na cesta geral
# E clico no botão "Mover pedidos para minha cesta"
# E clico no botão Cesta geral
# Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE02"
# Quando seleciono o pedido "AUTOMTESTE02" na cesta do usuário
# E clico no botão Agendar
# Quando seleciono o destino "WMS SUPERMERCADOS DO BRASIL LT"
# E agendo o pedido para "23/09/2019" até as "18":"30"
# E preencho a senha da agenda "AGE01"
# E seleciono todas as Uts
# E clico no botão "Salvar"
# E clico no botão "OK"
# E na mensagem "Violações" clico no botão "Salvar"
# Entao é exibido a mensagem "Agenda criada com sucesso."
# E clico no botão "OK"
# E altero a visão para "Agenda"
# Entao verifico se o pedido está agendado para "23/09/19 18:30"

# Cenario: Agendamento de UTs em cesta sem sucesso - data não preenchida
# Dado que acesso a tela "Programação", "Análise"
# Quando filtro a cesta geral pelo pedido "AUTOMTESTE05"
# Quando seleciono o pedido "AUTOMTESTE05" na cesta geral
# E clico no botão "Mover pedidos para minha cesta"
# E clico no botão Cesta geral
# Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE05"
# Quando seleciono o pedido "AUTOMTESTE05" na cesta do usuário
# E clico no botão Agendar
# Quando seleciono o destino "WMS SUPERMERCADOS DO BRASIL LT"
# E preencho a senha da agenda "AGE02"
# E seleciono todas as Uts
# E clico no botão "Salvar"
# E clico no botão "OK"
# Entao é exibido a mensagem "Não foi selecionada data para agendamento."

# Cenario: Agendamento de UTs em cesta sem sucesso - nenhuma ut selecionada
# Dado que acesso a tela "Programação", "Análise"
# Quando filtro a cesta geral pelo pedido "AUTOMTESTE08"
# Quando seleciono o pedido "AUTOMTESTE08" na cesta geral
# E clico no botão "Mover pedidos para minha cesta"
# E clico no botão Cesta geral
# Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE08"
# Quando seleciono o pedido "AUTOMTESTE08" na cesta do usuário
# E clico no botão Agendar
# Quando seleciono o destino "WMS SUPERMERCADOS DO BRASIL LT"
# E agendo o pedido para "23/09/2019" até as "18":"30"
# E preencho a senha da agenda "AGE03"
# E clico no botão "Salvar"
# E clico no botão "OK"
# Entao é exibido a mensagem "Não foram selecionadas unidades de transporte para agendamento."


# Cenario: Cancelamento de agendamento de UTs em cesta com sucesso
# Dado que acesso a tela "Programação", "Análise"
# Quando filtro a cesta geral pelo pedido "AUTOMTESTE29"
# E expando o header do pedido
# E seleciono o item de pedido "AUTOMTESTE29@000010" na cesta geral
# E clico no botão "Mover pedidos para minha cesta"
# E clico no botão Cesta geral
# Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE29"
# Quando seleciono o pedido "AUTOMTESTE29" na cesta do usuário
# E clico no botão Agendar
# Quando seleciono o destino "WMS SUPERMERCADOS DO BRASIL LT"
# E agendo o pedido para "23/09/2019" até as "18":"30"
# E preencho a senha da agenda "AGE01"
# E seleciono todas as Uts
# E clico no botão "Salvar"
# E clico no botão "OK"
# E na mensagem "Violações" clico no botão "Salvar"
# Entao é exibido a mensagem "Agenda criada com sucesso."
# E clico no botão "OK"
# E altero a visão para "Agenda"
# Entao verifico se o pedido está agendado para "23/09/19 18:30"
# E seleciono a agenda "23/09/19 18:30" na cesta do usuário
# E clico no botão Remoção de UTs