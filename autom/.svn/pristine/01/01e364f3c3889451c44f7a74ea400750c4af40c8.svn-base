#language:pt

@Administração
@TiposdeItemPedido

Funcionalidade: Cadastro de Tipos de Item de Pedido

Cenario: Cadastrar tipo de item de pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido1",  Nome "TipoItemPedido1" e Descrição "TipoItemPedido1"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido1"

Cenario: Cadastrar tipo de item de pedido sem sucesso - tipo de item de produto já cadastrado
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido2",  Nome "TipoItemPedido2" e Descrição "TipoItemPedido2"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido2",  Nome "TipoItemPedido2" e Descrição "TipoItemPedido2"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido2"

Cenario: Cadastrar tipo de item de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "TipoItemPedido3" e Descrição "TipoItemPedido3"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar tipo de item de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido4",  Nome " " e Descrição "TipoItemPedido4"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar tipo de item de pedido sem sucesso - descrição não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido5",  Nome "TipoItemPedido5" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Copiar tipo de item de pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido6",  Nome "TipoItemPedido6" e Descrição "TipoItemPedido6"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido6"
E clico no botão copiar
Quando preencho o campo Codigo "TipoItemPedido7",  Nome "TipoItemPedido7" e Descrição "TipoItemPedido7"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido6"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido7"

Cenario: Copiar tipo de item de pedido sem sucesso - tipo de item de pedido já cadastrado
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido8",  Nome "TipoItemPedido8" e Descrição "TipoItemPedido8"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido8"
E clico no botão copiar
Quando preencho o campo Codigo "TipoItemPedido8",  Nome "TipoItemPedido8" e Descrição "TipoItemPedido8"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido8"

Cenario: Copiar tipo de item de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido9",  Nome "TipoItemPedido9" e Descrição "TipoItemPedido9"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido9"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "TipoItemPedido10" e Descrição "TipoItemPedido10"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido9"

Cenario: Copiar tipo de item de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido11",  Nome "TipoItemPedido11" e Descrição "TipoItemPedido11"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido11"
E clico no botão copiar
Quando preencho o campo Codigo "TipoItemPedido12",  Nome " " e Descrição "TipoItemPedido12"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido11"

Cenario: Copiar tipo de item de pedido sem sucesso - descrição não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido13",  Nome "TipoItemPedido13" e Descrição "TipoItemPedido13"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido13"
E clico no botão copiar
Quando preencho o campo Codigo "TipoItemPedido14",  Nome "TipoItemPedido14" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido13"

Cenario: Editar tipo de item de pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido15",  Nome "TipoItemPedido15" e Descrição "TipoItemPedido15"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido15"
E clico no botão editar
Quando altero o campo  Nome "TipoItemPedido16" e Descrição "TipoItemPedido16"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido15"

Cenario: Editar tipo de item de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido17",  Nome "TipoItemPedido17" e Descrição "TipoItemPedido17"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido17"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "TipoItemPedido18"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido17"

Cenario: Editar tipo de item de pedido sem sucesso - descrição não preenchido
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido19",  Nome "TipoItemPedido19" e Descrição "TipoItemPedido19"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido19"
E clico no botão editar
Quando altero o campo  Nome "TipoItemPedido20" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido19"

Cenario: Editar tipo de item de pedido sem sucesso - nenhuma propriedade alterada
Dado que acesso a tela "Administração", "Tipos de item de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoItemPedido21",  Nome "TipoItemPedido21" e Descrição "TipoItemPedido21"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoItemPedido21"
E clico no botão editar
E clico no botão Salvar
Entao é exibido a mensagem "Nenhuma propriedade da entidade foi alterada."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoItemPedido21"