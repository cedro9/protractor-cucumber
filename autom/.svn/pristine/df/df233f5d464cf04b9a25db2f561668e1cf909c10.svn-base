#language:pt

@Monitoramento
@CadastroDispositivos

Funcionalidade: Monitoramento - Cadastro de Dispositivos

Cenário: Cadastro de dispositivo com sucesso - Cadastro de um dispositivo - Provedor interno: mobile
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "mobile" 
Quando preencho o campo número do dispositivo mobile "5511987654321"
Quando preencho a placa "DDD-1111"
Quando preencho a descrição "5511987654321"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654321"

Cenário: Cadastro de dispositivo com sucesso - Cadastro de um dispositivo - Provedor interno: mobile
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "mobile" 
Quando preencho o campo número do dispositivo mobile "5511987654322"
Quando preencho a placa "DDD-1112"
Quando preencho a descrição "5511987654322"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654322"

Cenário: Cadastro de dispositivo sem sucesso - Cadastro de um dispositivo com número inválido - Provedor interno: mobile
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "mobile" 
Quando preencho o campo número do dispositivo mobile "5511987654323"
Quando preencho a placa "DDD-1113"
Quando preencho a descrição "5511987654323"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654323"

Cenário: Cadastro de dispositivo com sucesso - Cadastro de um dispositivo - Provedor externo: Autotrac
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654324"
Quando preencho a placa "DDD-1114"
Quando preencho a descrição "5511987654324"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654324"

Cenário: Cadastro de dispositivos com sucesso - Cadastro de dois dispositivos com o mesmo provedor
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654325"
Quando preencho a placa "DDD-1115"
Quando preencho a descrição "5511987654325"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654326"
Quando preencho a placa "DDD-1116"
Quando preencho a descrição "5511987654326"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654325"
E excluo o dispositivo cadastrado com o código "5511987654326"

Cenário: Cadastro de dispositivos com sucesso - Cadastro de dois dispositivos com o mesmo número e provedores diferentes
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654327"
Quando preencho a placa "DDD-1117"
Quando preencho a descrição "5511987654327"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão Cadastro
Quando preencho o campo provedor "Sascar" 
Quando preencho o campo número do dispositivo "5511987654327"
Quando preencho a placa "DDD-1118"
Quando preencho a descrição "5511987654327"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654327"

Cenário: Cadastro de dispositivos sem sucesso - Cadastro de dois dispositivos com o mesmo número e o mesmo provedor
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654328"
Quando preencho a placa "DDD-1119"
Quando preencho a descrição "5511987654328"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654328"
Quando preencho a placa "DDD-1120"
Quando preencho a descrição "5511987654328"
E clico no botão Salvar
Então é exibido a mensagem "Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o dispositivo cadastrado com o código "5511987654328"

Cenário: Editar de dispositivo com sucesso - Editar um dispositivo alterando o provedor
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654329"
Quando preencho a placa "DDD-1121"
Quando preencho a descrição "5511987654329"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando realizo o filtro de dispositivos com o número "5511987654329"
E clico no botão editar
Quando preencho o campo provedor "Sascar" 
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654329"

Cenário: Editar de dispositivo com sucesso - Editar um dispositivo alterando o número
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654330"
Quando preencho a placa "DDD-1122"
Quando preencho a descrição "5511987654330"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando realizo o filtro de dispositivos com o número "5511987654330"
E clico no botão editar
Quando preencho o campo número do dispositivo "5511987654331"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E excluo o dispositivo cadastrado com o código "5511987654331"

@bug
Cenário: Editar de dispositivo sem sucesso - Editar um dispositivo alterando a placa - 
# AssertionError
#     + expected - actual

#     -A entidade foi salva com sucesso.
#     +Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo.
# Ação: alinhar o comportamento esperado com Julio Santos
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654332"
Quando preencho a placa "DDD-1123"
Quando preencho a descrição "5511987654332"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando realizo o filtro de dispositivos com o número "5511987654332"
E clico no botão editar
Quando preencho a placa "DDD-1124"
E clico no botão Salvar
Então é exibido a mensagem "Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o dispositivo cadastrado com o código "5511987654332"

@bug
Cenário: Editar de dispositivo sem sucesso - Editar um dispositivo alterando a descrição - 
# AssertionError
#     + expected - actual

#     -A entidade foi salva com sucesso.
#     +Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo.
# Ação: alinhar o comportamento esperado com Julio Santos
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654333"
Quando preencho a placa "DDD-1125"
Quando preencho a descrição "5511987654333"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando realizo o filtro de dispositivos com o número "5511987654333"
E clico no botão editar
Quando preencho a descrição "5511987654334"
E clico no botão Salvar
Então é exibido a mensagem "Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o dispositivo cadastrado com o código "5511987654333"

Cenário: Editar de dispositivo sem sucesso - Editar um dispositivo alterando o número para um igual do mesmo provedor
Dado que acesso a tela "Monitoramento", "Dispositivos"
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654335"
Quando preencho a placa "DDD-1126"
Quando preencho a descrição "5511987654335"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão Cadastro
Quando preencho o campo provedor "Autotrac" 
Quando preencho o campo número do dispositivo "5511987654336"
Quando preencho a placa "DDD-1127"
Quando preencho a descrição "5511987654336"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando realizo o filtro de dispositivos com o número "5511987654336"
E clico no botão editar
Quando preencho o campo número do dispositivo "5511987654335"
E clico no botão Salvar
Então é exibido a mensagem "Já existe um dispositivo de rastreamento com mesmo Provedor e Número do dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o dispositivo cadastrado com o código "5511987654335"
E excluo o dispositivo cadastrado com o código "5511987654336"