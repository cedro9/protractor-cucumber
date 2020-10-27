#language:pt

@Monitoramento
@CadastroDeCategoriaDeOcorrencia

Funcionalidade: Monitoramento - Cadastro de Categoria de ocorrência

Cenário: Cadastro de depedências
Dado que cadastro o status de ocorrência inicial "STAOCODEPCATOCO"
Dado que cadastro a categoria de ocorrência "CATOCODEPCATOCO"
Dado que cadastro a causa de ocorrência "CAUOCODEPCATOCO", com o status "STAOCODEPCATOCO" e a categoria de ocorrência "CATOCODEPCATOCO"

Cenário: Cadastro de categoria de ocorrência com sucesso
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria1",  Nome "Categoria1" e Descrição "Categoria1"
Quando seleciono a checkbox Quantidade de Categoria de ocorrência
Quando seleciono a checkbox Impacto temporal de Categoria de ocorrência
Quando seleciono a checkbox Impacto financeiro de Categoria de ocorrência
Quando seleciono a checkbox Notificar sistema externo de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria1"

Cenário: Cadastro de categoria de ocorrência com sucesso - Descrição não preenchida
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria2",  Nome "Categoria2" e Descrição " "
Quando seleciono a checkbox Quantidade de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria2"

Cenário: Cadastro de categorias de ocorrência com sucesso - Cadastrar 2 ocorrências utilizando o botão salvar e continuar
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria3",  Nome "Categoria3" e Descrição "Categoria3"
Quando seleciono a checkbox Impacto temporal de Categoria de ocorrência
E clico no botão Salvar e Continuar
E clico no botão OK
Quando preencho o campo Codigo "Categoria4",  Nome "Categoria4" e Descrição "Categoria4"
Quando seleciono a checkbox Impacto financeiro de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria3"
E excluo o cadastro gerado no teste com o codigo "Categoria4"

Cenário: Cadastro de categoria de ocorrência sem sucesso - Preenchendo e apagando o campo código
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria6",  Nome "Categoria6" e Descrição "Categoria6"
Quando seleciono a checkbox Quantidade de Categoria de ocorrência
Quando seleciono a checkbox Impacto temporal de Categoria de ocorrência
Quando preencho o campo Codigo " "
Quando preencho o campo Codigo "Categoria6"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria6"

Cenário: Cadastro de categoria de ocorrência com sucesso - Descrição não preenchida
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria8",  Nome "Categoria8" e Descrição " "
Quando seleciono a checkbox Impacto financeiro de Categoria de ocorrência
Quando seleciono a checkbox Notificar sistema externo de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria8"

Cenário: Editar categoria de ocorrência com sucesso - Alterar descrição
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria9",  Nome "Categoria9" e Descrição "Categoria9"
Quando seleciono a checkbox Quantidade de Categoria de ocorrência
Quando seleciono a checkbox Impacto temporal de Categoria de ocorrência
Quando seleciono a checkbox Impacto financeiro de Categoria de ocorrência
Quando seleciono a checkbox Notificar sistema externo de Categoria de ocorrência
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Categoria9"
E clico no botão editar
Quando preencho o campo Descrição "Categoria10"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro de Categoria de ocorrência do Monitoramento com o código externo "Categoria9"

Cenário: Copiar categoria de ocorrência sem sucesso - Código já cadastrado
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria11",  Nome "Categoria11" e Descrição "Categoria11"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Categoria11"
E clico no botão copiar
Quando preencho o campo Codigo "Categoria11",  Nome "Categoria12" e Descrição "Categoria12"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma categoria de ocorrência com este código."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria11"

Cenário: Copiar categoria de ocorrência sem sucesso - Nome já cadastrado
Dado que estou na tela de categoria de ocorrencias
E clico no botão Cadastro
Quando preencho o campo Codigo "Categoria13",  Nome "Categoria13" e Descrição "Categoria13"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Categoria13"
E clico no botão copiar
Quando preencho o campo Codigo "Categoria14",  Nome "Categoria13" e Descrição "Categoria14"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma categoria de ocorrência com este nome."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Categoria13"

Cenário: Excluir categoria de ocorrência sem sucesso - Categoria utilizada por causa de ocorrência
Dado que estou na tela de categoria de ocorrencias
Quando realizo o filtro com o codigo "CATOCODEPCATOCO"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "Categoria de ocorrência em uso por uma causa de ocorrência"
E clico no botão "OK"

Cenário: Exclusão de dependências
Dado que excluo a causa de ocorrência "CAUOCODEPCATOCO"
Dado que excluo a categoria de ocorrência "CATOCODEPCATOCO"
Dado que excluo o status de ocorrência "STAOCODEPCATOCO"