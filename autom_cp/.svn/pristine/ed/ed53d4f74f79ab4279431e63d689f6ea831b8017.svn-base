#language:pt

@Monitoramento
@CadastroStatusDeOcorrencia

Funcionalidade: Monitoramento - Cadastro de Status de ocorrência

Cenário: Cadastro de depedências
Dado que cadastro o status de ocorrência inicial "STADEPSTAOCO01"
Dado que cadastro o status de ocorrência final "STADEPSTAOCO02"
Dado que cadastro a categoria de ocorrência "CATOCODEPSTAOCO"
Dado que cadastro a causa de ocorrência "CAUOCODEPSTAOCO", com o status "STADEPSTAOCO01" e a categoria de ocorrência "CATOCODEPSTAOCO"

Cenário: Cadastro de status de ocorrência com sucesso - Status final
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status1"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status1"

Cenário: Cadastro de 2 status de ocorrência sem sucesso - Tentativa de exclusão de status final antes de inicial
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status2"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Inicial"
Quando seleciono próximos status "STADEPSTAOCO02"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de status de ocorrência com o nome "STADEPSTAOCO02"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "Não é possível apagar o status, pois ele está listado como possível próximo status para o status Status2"
E excluo o cadastro gerado no teste com o nome "Status2"

Cenário: Cadastro de 1 status de ocorrência com sucesso - Tipo do status inicial e próximo status anteriormente persistido
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status3"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Inicial"
Quando seleciono próximos status "STADEPSTAOCO02"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status3"

Cenário: Cadastro de status de ocorrência com sucesso - Tipo do status intermediário e próximos status anteriormente persistido
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status4"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Intermediário"
Quando seleciono próximos status "STADEPSTAOCO02"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de status de ocorrência com o nome "STADEPSTAOCO02"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "Não é possível apagar o status, pois ele está listado como possível próximo status para o status Status4"
E excluo o cadastro gerado no teste com o nome "Status4"

Cenário: Cadastro de status de ocorrência com sucesso - Cadastro de dois status de ocorrência utilizando o botão salvar e continuar
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status5"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar e Continuar
E clico no botão OK
Quando preencho o campo Nome "Status6"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status5"
E excluo o cadastro gerado no teste com o nome "Status6"

Cenário: Cadastro de status de ocorrência sem sucesso - Status inicial sem próximo status
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status7"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Inicial"
E clico no botão Salvar
Então é exibido a mensagem "Status de ocorrência com tipo Inicial ou Intermediário deve ter pelo menos um Próximo Status associado."

Cenário: Cadastro de status de ocorrência com sucesso - Status final - Configuração temporal inválida, porém os campos setam limites máximos
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status8"
Quando preencho o tempo Primeiro SLA "9999999999" dia, "9999999999" hora, "9999999999" minutos
Quando preencho o tempo Segundo SLA "9999999999" dia, "9999999999" hora, "9999999999" minutos
#asserts
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status8"

Cenário: Editar status de ocorrência com sucesso - Status final - Alterar a configuração temporal
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status9"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de status de ocorrência com o nome "Status9"
E clico no botão editar
Quando preencho o tempo Primeiro SLA "02" dia, "02" hora, "02" minutos
Quando preencho o tempo Segundo SLA "02" dia, "02" hora, "02" minutos
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status9"

Cenário: Editar status de ocorrência final com sucesso - Alterar tipo do status para Inicial com próximos status
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status10"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de status de ocorrência com o nome "Status10"
E clico no botão editar
Quando seleciono o tipo do status "Inicial"
Quando seleciono próximos status "STADEPSTAOCO02"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status10"

Cenário: Editar status de ocorrência final com sucesso - Alterar tipo do status para Intermediário com próximo status
Dado que estou na tela de status de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Nome "Status11"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de status de ocorrência com o nome "Status11"
E clico no botão editar
Quando seleciono o tipo do status "Intermediário"
Quando seleciono próximos status "STADEPSTAOCO02"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status11"

Cenário: Copiar status de ocorrência com sucesso
Dado que estou na tela de status de ocorrencias
Quando realizo o filtro de status de ocorrência com o nome "STADEPSTAOCO02"
E clico no botão copiar
Quando preencho o campo Nome "Status12"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o nome "Status12"

Cenário: Copiar status de ocorrência sem sucesso - Nome já persistido
Dado que estou na tela de status de ocorrencias
Quando realizo o filtro de status de ocorrência com o nome "STADEPSTAOCO02"
E clico no botão copiar
Quando preencho o campo Nome "STADEPSTAOCO02"
E clico no botão Salvar
Então é exibido a mensagem "Já existe um status de ocorrência ativo com este nome."
E clico no botão "OK"
E clico no botão "Voltar"

Cenário: Excluir status de ocorrência sem sucesso - Status utilizado por causa de ocorrência
Dado que estou na tela de status de ocorrencias
Quando realizo o filtro de status de ocorrência com o nome "STADEPSTAOCO01"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "Existem causas utilizando este status como padrão."
E clico no botão "OK"

Cenário: Exclusão de dependências
Dado que excluo a causa de ocorrência "CAUOCODEPSTAOCO"
Dado que excluo a categoria de ocorrência "CATOCODEPSTAOCO"
Dado que excluo o status de ocorrência "STADEPSTAOCO01"
Dado que excluo o status de ocorrência "STADEPSTAOCO02"