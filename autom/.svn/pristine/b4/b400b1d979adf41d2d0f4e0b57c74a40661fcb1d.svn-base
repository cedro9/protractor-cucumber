#language:pt

@Administração
@TiposdePedido
Funcionalidade: Cadastro de Tipos de Pedido

Cenario: Cadastro de Dependência
Dado que cadastro o tipo de pedido "TIPSERVDEPTIPSERV"

Cenario: Cadastrar Tipos de Pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido1",  Nome "TipoPedido1" e Descrição "TipoPedido1"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido1"

Cenario: Cadastrar tipo de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "TipoPedido2" e Descrição "TipoPedido2"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar tipo de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido3",  Nome " " e Descrição "TipoPedido3"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar tipo de pedido sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido4",  Nome "TipoPedido4" e Descrição " "
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Cadastrar tipo de pedido sem sucesso - nenhum campo preenchido
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
E clico no botão Salvar
Entao é exibido a mensagem "Nenhuma propriedade da entidade foi alterada."

Cenario: Cadastrar tipo de pedido sem sucesso - tipo de pedido já existe
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido5",  Nome "TipoPedido5" e Descrição "TipoPedido5"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido5",  Nome "TipoPedido5" e Descrição "TipoPedido5"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem Já existe uma entidade com o código informado.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido5"

Cenario: Copiar tipo de pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido6",  Nome "TipoPedido6" e Descrição "TipoPedido6"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido6"
E clico no botão copiar
Quando preencho o campo Codigo "TipoPedido7",  Nome "TipoPedido7" e Descrição "TipoPedido7"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido6"
E excluo o cadastro gerado no teste com o codigo "TipoPedido7"

Cenario: Copiar tipo de pedido sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido8",  Nome "TipoPedido8" e Descrição "TipoPedido8"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido8"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "TipoPedido9" e Descrição "TipoPedido9"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido8"

Cenario: Copiar tipo de pedido sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido10",  Nome "TipoPedido10" e Descrição "TipoPedido10"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido10"
E clico no botão copiar
Quando preencho o campo Codigo "TipoPedido11",  Nome " " e Descrição "TipoPedido11"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido10"

Cenario: Copiar tipo de pedido sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido12",  Nome "TipoPedido12" e Descrição "TipoPedido12"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido12"
E clico no botão copiar
Quando preencho o campo Codigo "TipoPedido13",  Nome "TipoPedido13" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido12"

Cenario: Editar tipo de pedido com sucesso
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido14",  Nome "TipoPedido14" e Descrição "TipoPedido14"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido14"
E clico no botão editar
Quando altero o campo  Nome "TipoPedido15" e Descrição "TipoPedido15"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido14"

Cenario: Editar tipo de pedido sem sucesso - nenhuma alteração feita
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido15",  Nome "TipoPedido15" e Descrição "TipoPedido15"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido15"
E clico no botão editar
E clico no botão Salvar
Entao é exibido a mensagem "Nenhuma propriedade da entidade foi alterada."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido15"

Cenario: Editar tipo de pedido sem sucesso - apagar o nome
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido16",  Nome "TipoPedido16" e Descrição "TipoPedido16"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido16"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "TipoPedido16"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido16"

Cenario: Editar tipo de pedido sem sucesso - apagar descrição
Dado que acesso a tela "Administração", "Tipos de pedido"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoPedido17",  Nome "TipoPedido17" e Descrição "TipoPedido17"
Quando seleciono a compatibilidade "TIPSERVDEPTIPSERV"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TipoPedido17"
E clico no botão editar
Quando altero o campo  Nome "TipoPedido18" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoPedido17"

Cenario: Excluir Dependência
Dado que excluo o tipo de pedido "TIPSERVDEPTIPSERV"