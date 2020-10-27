#language:pt

@Monitoramento
@CadastroCausaDeOcorrencia

Funcionalidade: Monitoramento - Cadastro de Causas de ocorrência

Cenário: Cadastro de dependência - Status de ocorrência utilizado como próximo status padrão nas dependências subsequentes
Dado que acesso a tela "Monitoramento", "Status de ocorrência"
E clico no botão Cadastro
Quando preencho o campo Nome "Status0"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Final"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."

Esquema do Cenário: - Cadastro de dependências - Status de ocorrência
Dado que acesso a tela "Monitoramento", "Status de ocorrência"
E clico no botão Cadastro
Quando preencho o campo Nome "<status>"
Quando preencho o tempo Primeiro SLA "01" dia, "01" hora, "59" minutos
Quando preencho o tempo Segundo SLA "01" dia, "01" hora, "59" minutos
Quando seleciono o tipo do status "Inicial"
Quando seleciono próximos status "Status0"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"

Exemplos:
|status  |
|Status01 |
|Status02 |
|Status03 |
|Status04 |
|Status05 |
|Status06 |
|Status07 |
|Status010|
|Status012|
|Status013|
|Status014|
|Status015|
|Status016|
|Status017|
|Status018|
|Status019|

Esquema do Cenário: - Cadastro de dependências - Categorias de ocorrência
Dado que acesso a tela "Monitoramento", "Categorias de ocorrência"
E clico no botão Cadastro
Quando preencho o campo Codigo "<categoria>",  Nome "<categoria>" e Descrição "<categoria>"
Quando seleciono a checkbox Quantidade de Categoria de ocorrência
Quando seleciono a checkbox Impacto temporal de Categoria de ocorrência
Quando seleciono a checkbox Impacto financeiro de Categoria de ocorrência
Quando seleciono a checkbox Notificar sistema externo de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"

Exemplos:
|categoria  |
|Categoria01 |
|Categoria02 |
|Categoria03 |
|Categoria04 |
|Categoria05 |
|Categoria06 |
|Categoria07 |
|Categoria011|
|Categoria012|
|Categoria013|
|Categoria014|
|Categoria015|
|Categoria016|
|Categoria017|
|Categoria018|
|Categoria019|

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável carga - Ocorrência alimentação
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa1",  Nome "Causa1" e Descrição "Causa1"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status01"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria01"
Quando preencho o Tipos de monitoráveis permitidos "Carga"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa1"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável documento - Ocorrência atraso
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa2",  Nome "Causa2" e Descrição "Causa2"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status02"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria02"
Quando preencho o Tipos de monitoráveis permitidos "Documento"
Quando preencho o Ícone da ocorrência "Atraso"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa2"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável nota fiscal - Ocorrência aviso
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa3",  Nome "Causa3" e Descrição "Causa3"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status03"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria03"
Quando preencho o Tipos de monitoráveis permitidos "Nota fiscal"
Quando preencho o Ícone da ocorrência "Aviso"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa3"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável viagem - Ocorrência estabelecimento fechado
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa4",  Nome "Causa4" e Descrição "Causa4"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status04"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria04"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Estabelecimento fechado"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa4"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável viagem - Ocorrência gasto
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa5",  Nome "Causa5" e Descrição "Causa5"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status05"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria05"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Gasto"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa5"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável viagem - Ocorrência pernoite
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa6",  Nome "Causa6" e Descrição "Causa6"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status06"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria06"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Pernoite"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa6"

Cenário: Cadastro de causa de ocorrência com sucesso - Tipos de monitorável viagem - Ocorrência problemas mecânicos
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa7",  Nome "Causa7" e Descrição "Causa7"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status07"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria07"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Problemas mecânicos"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa7"

Cenário: Cadastro de causa de ocorrência sem sucesso - Categoria de ocorrência não preenchido
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa10",  Nome "Causa10" e Descrição "Causa10"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status010"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência " "
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A categoria de ocorrência deve ser preenchida."

Cenário: Cadastro de causa de ocorrência sem sucesso - Status padrão não preenchido
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa11",  Nome "Causa11" e Descrição "Causa11"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão " "
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria011"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "O status padrão deve ser preenchido."

Cenário: Cadastro de causa de ocorrência sem sucesso - Código já existente
Dado que estou na tela de causas de ocorrencias
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa12",  Nome "Causa12" e Descrição "Causa12"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status012"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria012"
Quando preencho o Tipos de monitoráveis permitidos "Carga"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa12",  Nome "Causa13" e Descrição "Causa13"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status013"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria013"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma causa de ocorrência com este código."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa12"

Cenário: Cadastro de causa de ocorrência com sucesso - Nome já existente
Dado que estou na tela de causas de ocorrencias
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa14",  Nome "Causa14" e Descrição "Causa14"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status014"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria014"
Quando preencho o Tipos de monitoráveis permitidos "Carga"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa15",  Nome "Causa14" e Descrição "Causa15"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status015"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria015"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa14"
E excluo o cadastro gerado no teste com o codigo "Causa15"

Cenário: Editar causa de ocorrência com sucesso
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa16",  Nome "Causa16" e Descrição "Causa16"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status016"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria016"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de Causas de ocorrência com o nome "Causa16"
E clico no botão editar
Quando preencho o campo Impacto padrão Financeiro "20,00"
Quando preencho o campo Impacto padrão Quantitativo "20"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status017"
Quando preencho o Ordem "1"
Quando preencho o Categoria de ocorrência "Categoria017"
Quando preencho o Tipos de monitoráveis permitidos "Carga"
Quando preencho o Ícone da ocorrência "Atraso"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa16"

Cenário: Copiar causa de ocorrência sem sucesso - Código já existente
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa17",  Nome "Causa17" e Descrição "Causa17"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status018"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria018"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de Causas de ocorrência com o nome "Causa17"
E clico no botão copiar
Quando preencho o campo Codigo "Causa17",  Nome "Causa18" e Descrição "Causa18"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma causa de ocorrência com este código."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa17"

Cenário: Copiar causa de ocorrência sem sucesso - Nome já existente
Dado que estou na tela de causas de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Causa19",  Nome "Causa19" e Descrição "Causa19"
Quando preencho o campo Impacto padrão Financeiro "10,00"
Quando preencho o campo Impacto padrão Quantitativo "10"
Quando preencho o Impacto padrão Temporal hora "07"
Quando preencho o Impacto padrão Temporal minutos "00"
Quando preencho o Status padrão "Status019"
Quando preencho o Ordem "0"
Quando preencho o Categoria de ocorrência "Categoria019"
Quando preencho o Tipos de monitoráveis permitidos "Viagem"
Quando preencho o Ícone da ocorrência "Alimentação"
Quando seleciono a checkbox Anexo obrigatório
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro de Causas de ocorrência com o nome "Causa19"
E clico no botão copiar
Quando preencho o campo Codigo "Causa20",  Nome "Causa19" e Descrição "Causa20"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma causa de ocorrência com este nome."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Causa19"

Esquema do Cenário: - Exclusão de dependências - Status de ocorrência
Dado que acesso a tela "Monitoramento", "Status de ocorrência"
E excluo o cadastro de status de ocorrência do Monitoramento com o nome "<status>"

Exemplos:
|status  |
|Status01 |
|Status02 |
|Status03 |
|Status04 |
|Status05 |
|Status06 |
|Status07 |
|Status010|
|Status012|
|Status013|
|Status014|
|Status015|
|Status016|
|Status017|
|Status018|
|Status019|
|Status0 |

Esquema do Cenário: - Exclusão de dependências - Categorias de ocorrência
Dado que acesso a tela "Monitoramento", "Categorias de ocorrência"
E excluo o cadastro de categorias de ocorrência do Monitoramento com o código externo "<categoria>"

Exemplos:
|categoria  |
|Categoria01 |
|Categoria02 |
|Categoria03 |
|Categoria04 |
|Categoria05 |
|Categoria06 |
|Categoria07 |
|Categoria011|
|Categoria012|
|Categoria013|
|Categoria014|
|Categoria015|
|Categoria016|
|Categoria017|
|Categoria018|
|Categoria019|