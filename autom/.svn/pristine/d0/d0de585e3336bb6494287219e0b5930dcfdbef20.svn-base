#language:pt

@Monitoramento
@CadastroDemotoristas

Funcionalidade: Monitoramento - Cadastro de Motoristas

Esquema do Cenário: - Cadastro de dependências
Dado que cadastro o usuário do monitoramento "<email>"

Exemplos:
|email      |
|101@111.com|
|102@111.com|
|103@111.com|
|104@111.com|
|105@111.com|
|106@111.com|
|107@111.com|
|108@111.com|
|109@111.com|
|110@111.com|
|111@111.com|
|112@111.com|
|113@111.com|
|114@111.com|
|115@111.com|
|116@111.com|
|117@111.com|
|118@111.com|

Cenário: Cadastro de motorista com sucesso - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista1"
Quando preencho o Identificador do motorista "Motorista1"
Quando preencho o Codigo do motorista "Motorista1"
Quando seleciono o Usuario do motorista "101@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista1"

Cenário: Cadastro de motorista sem sucesso - Identificador já cadastrado - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista2"
Quando preencho o Identificador do motorista "Motorista2"
Quando preencho o Codigo do motorista "Motorista2"
Quando seleciono o Usuario do motorista "102@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista3"
Quando preencho o Identificador do motorista "Motorista2"
Quando preencho o Codigo do motorista "Motorista3"
Quando seleciono o Usuario do motorista "103@111.com"
E clico no botão Salvar
Então é exibido a mensagem "Este identificador já está sendo utilizado por outro dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista2"

Cenário: Cadastro de motorista com sucesso - Código já cadastrado - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista4"
Quando preencho o Identificador do motorista "Motorista4"
Quando preencho o Codigo do motorista "Motorista4"
Quando seleciono o Usuario do motorista "104@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista5"
Quando preencho o Identificador do motorista "Motorista5"
Quando preencho o Codigo do motorista "Motorista4"
Quando seleciono o Usuario do motorista "105@111.com"
E clico no botão Salvar
Então é exibido a mensagem "Este código já está sendo utilizado por outro dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista4"

Cenário: Cadastro de motorista sem sucesso - Usuário já utilizado em outro registro - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista6"
Quando preencho o Identificador do motorista "Motorista6"
Quando preencho o Codigo do motorista "Motorista6"
Quando seleciono o Usuario do motorista "106@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista7"
Quando preencho o Identificador do motorista "Motorista7"
Quando preencho o Codigo do motorista "Motorista7"
Quando seleciono o Usuario do motorista "106@111.com"
E clico no botão Salvar
Então é exibido a mensagem "Este usuário já está sendo utilizado por outro motorista."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista6"

Cenário: Edição de motorista com sucesso - Alterar o campo nome - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista7"
Quando preencho o Identificador do motorista "Motorista7"
Quando preencho o Codigo do motorista "Motorista7"
Quando seleciono o Usuario do motorista "107@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista7"
E clico no botão editar
Quando preencho o nome do motorista "Motorista71"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista7"

Cenário: Edição de motorista com sucesso - Alterar o campo identificador - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista8"
Quando preencho o Identificador do motorista "Motorista8"
Quando preencho o Codigo do motorista "Motorista8"
Quando seleciono o Usuario do motorista "108@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista8"
E clico no botão editar
Quando preencho o Identificador do motorista "Motorista9"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista9"

Cenário: Edição de motorista com sucesso - Alterar o campo código - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista10"
Quando preencho o Identificador do motorista "Motorista10"
Quando preencho o Codigo do motorista "Motorista10"
Quando seleciono o Usuario do motorista "109@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista10"
E clico no botão editar
Quando preencho o Codigo do motorista "Motorista10"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista10"

Cenário: Edição de motorista com sucesso - Alterar o campo usuário - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista11"
Quando preencho o Identificador do motorista "Motorista11"
Quando preencho o Codigo do motorista "Motorista11"
Quando seleciono o Usuario do motorista "110@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista11"
E clico no botão editar
Quando seleciono o Usuario do motorista "111@111.com"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista11"

Cenário: Edição de motorista sem sucesso - Alterar o identificador para um já persisitido - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista12"
Quando preencho o Identificador do motorista "Motorista12"
Quando preencho o Codigo do motorista "Motorista12"
Quando seleciono o Usuario do motorista "112@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista13"
Quando preencho o Identificador do motorista "Motorista13"
Quando preencho o Codigo do motorista "Motorista13"
Quando seleciono o Usuario do motorista "113@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista12"
E clico no botão editar
Quando preencho o Identificador do motorista "Motorista13"
E clico no botão "Salvar"
Então é exibido a mensagem "Este identificador já está sendo utilizado por outro dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista12"
E excluo o cadastro do Motorista com o identificador "Motorista13"

Cenário: Edição de motorista sem sucesso - Alterar o código para um já persistido - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista14"
Quando preencho o Identificador do motorista "Motorista14"
Quando preencho o Codigo do motorista "Motorista14"
Quando seleciono o Usuario do motorista "114@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista15"
Quando preencho o Identificador do motorista "Motorista15"
Quando preencho o Codigo do motorista "Motorista15"
Quando seleciono o Usuario do motorista "115@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista14"
E clico no botão editar
Quando preencho o Codigo do motorista "Motorista15"
E clico no botão "Salvar"
Então é exibido a mensagem "Este código já está sendo utilizado por outro dispositivo."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista14"
E excluo o cadastro do Motorista com o identificador "Motorista15"

Cenário: Edição de motorista sem sucesso - Alterar o usuário para um já persistido - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista16"
Quando preencho o Identificador do motorista "Motorista16"
Quando preencho o Codigo do motorista "Motorista16"
Quando seleciono o Usuario do motorista "116@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista17"
Quando preencho o Identificador do motorista "Motorista17"
Quando preencho o Codigo do motorista "Motorista17"
Quando seleciono o Usuario do motorista "117@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de motoristas pelo identificador "Motorista16"
E clico no botão editar
Quando seleciono o Usuario do motorista "117@111.com"
E clico no botão "Salvar"
Então é exibido a mensagem "Este usuário já está sendo utilizado por outro motorista."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista16"
E excluo o cadastro do Motorista com o identificador "Motorista17"

Cenário: Cadastro de motorista sem sucesso - Usuário já persistido - NLGPRODUTO-1037
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista18"
Quando preencho o Identificador do motorista "Motorista18"
Quando preencho o Codigo do motorista "Motorista18"
Quando seleciono o Usuario do motorista "118@111.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista19"
Quando preencho o Identificador do motorista "Motorista19"
Quando preencho o Codigo do motorista "Motorista19"
Quando seleciono o Usuario do motorista "118@111.com"
E clico no botão Salvar
Então é exibido a mensagem "Este usuário já está sendo utilizado por outro motorista."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro do Motorista com o identificador "Motorista18"

Esquema do Cenário: - Exclusão de dependências
Dado que excluo o usuário do monitoramento "<email>"

Exemplos:
|email      |
|101@111.com|
|102@111.com|
|103@111.com|
|104@111.com|
|105@111.com|
|106@111.com|
|107@111.com|
|108@111.com|
|109@111.com|
|110@111.com|
|111@111.com|
|112@111.com|
|113@111.com|
|114@111.com|
|115@111.com|
|116@111.com|
|117@111.com|
|118@111.com|