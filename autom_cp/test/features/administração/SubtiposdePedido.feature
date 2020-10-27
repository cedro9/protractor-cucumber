#language:pt

@Administração
@SubtiposdePedido

Funcionalidade: Cadastro de Subtipos de Pedido

Cenario: Cadastrar subtipo de pedido com sucesso
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido1",  Nome "SubtipoPedido1" e Descrição "SubtipoPedido1"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido1"

Cenario: Cadastrar subtipo de pedido sem sucesso - subtipo de pedido já cadastrado
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido2",  Nome "SubtipoPedido2" e Descrição "SubtipoPedido2"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido2",  Nome "SubtipoPedido2" e Descrição "SubtipoPedido2"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido2"

Cenario: Cadastrar subtipo de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "SubtipoPedido3" e Descrição "SubtipoPedido3"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar subtipo de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido4",  Nome " " e Descrição "SubtipoPedido4"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar subtipo de pedido sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido5",  Nome "SubtipoPedido5" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Copiar subtipo de pedido com sucesso
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido6",  Nome "SubtipoPedido6" e Descrição "SubtipoPedido6"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido6"
E clico no botão copiar
Quando preencho o campo Codigo "SubtipoPedido7",  Nome "SubtipoPedido7" e Descrição "SubtipoPedido7"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido6"
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido7"

Cenario: Copiar subtipo de pedido sem sucesso - subtipo de pedido já cadastrado
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido8",  Nome "SubtipoPedido8" e Descrição "SubtipoPedido8"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido8"
E clico no botão copiar
Quando preencho o campo Codigo "SubtipoPedido8",  Nome "SubtipoPedido8" e Descrição "SubtipoPedido8"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido8"

Cenario: Copiar subtipo de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido9",  Nome "SubtipoPedido9" e Descrição "SubtipoPedido9"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido9"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "SubtipoPedido10" e Descrição "SubtipoPedido10"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido9"

Cenario: Copiar subtipo de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido11",  Nome "SubtipoPedido11" e Descrição "SubtipoPedido11"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido11"
E clico no botão copiar
Quando preencho o campo Codigo "SubtipoPedido12",  Nome " " e Descrição "SubtipoPedido12"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido11"

Cenario: Copiar subtipo de pedido sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido13",  Nome "SubtipoPedido13" e Descrição "SubtipoPedido13"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido13"
E clico no botão copiar
Quando preencho o campo Codigo "SubtipoPedido14",  Nome "SubtipoPedido14" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido13"

Cenario: Editar subtipo de pedido com sucesso
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido15",  Nome "SubtipoPedido15" e Descrição "SubtipoPedido15"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido15"
E clico no botão editar
Quando altero o campo  Nome "SubtipoPedido16" e Descrição "SubtipoPedido16"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido15"

Cenario: Editar subtipo de pedido sem sucesso - nenhuma propriedade alterada
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido17",  Nome "SubtipoPedido17" e Descrição "SubtipoPedido17"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido17"
E clico no botão editar
E clico no botão Salvar
Entao é exibido a mensagem "Nenhuma propriedade da entidade foi alterada."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido17"

Cenario: Editar subtipo de pedido sem sucesso - apagar o nome
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido18",  Nome "SubtipoPedido18" e Descrição "SubtipoPedido18"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido18"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "SubtipoPedido19"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido18"

Cenario: Editar subtipo de pedido sem sucesso - apagar a descrição
Dado que acesso a tela "Administração", "Subtipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "SubtipoPedido20",  Nome "SubtipoPedido20" e Descrição "SubtipoPedido20"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "SubtipoPedido20"
E clico no botão editar
Quando altero o campo  Nome "SubtipoPedido21" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "SubtipoPedido20"