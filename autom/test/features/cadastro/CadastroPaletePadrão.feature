#language:pt
@Cadastro
@PaletePadrao
Funcionalidade: Cadastro de Palete Padrão


Cenario: Cadastro de Dependências
Dado que cadastro o invólucro composto "INVDEPPALETE1"
Dado que cadastro o invólucro composto "INVDEPPALETE2"
Dado que cadastro o embarcador "EMBDEPPALETE"
Dado que cadastro a categoria de produto "CATPRODEPPALETE"
Dado que cadastro o produto "PRODEPPALETE" com a categoria "CATPRODEPPALETE" e embarcador "EMBDEPPALETE"


Cenario: Cadastrar palete sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Palete Teste Automacao" e Descrição "Teste Automacao"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo código está vazio."


Cenario: Cadastrar palete sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Codigo Teste Automacao",  Nome " " e Descrição "Teste Automacao"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."


Cenario: Cadastrar palete sem sucesso - descrição não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Codigo Teste Automacao",  Nome "Palete Teste Automacao" e Descrição " "
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."


Cenario: Cadastrar palete sem sucesso - involucro não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Codigo Teste Automacao",  Nome "Palete Teste Automacao" e Descrição "Teste Automacao"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão "Salvar"
Entao é exibido a mensagem "O invólucro não pode ser nulo."


Cenario: Cadastrar palete sem sucesso - produto não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Codigo Teste Automacao",  Nome "Palete Teste Automacao" e Descrição "Teste Automacao"
Quando seleciono o Involucro composto "INVDEPPALETE1"
E clico no botão "Salvar"
Entao é exibido a mensagem "O produto não pode ser nulo."


Cenario: Editar palete com sucesso
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "PaletetesteEdicao",  Nome "Palete Teste edicao Automação" e Descrição "Teste edicao Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "PaletetesteEdicao"
E clico no botão editar
Quando altero o Involucro composto "INVDEPPALETE2"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "PaletetesteEdicao"


Cenario: Editar palete sem sucesso - nome nao preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste1",  Nome "Palete Teste edicao Automação" e Descrição "Teste edicao Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste1"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Paleteteste1"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste1"



Cenario: Editar palete sem sucesso - descrição nao preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste2",  Nome "Palete Teste edicao Automação" e Descrição "Teste edicao Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste2"
E clico no botão editar
Quando altero o campo  Nome "Paleteteste2" e Descrição " "
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste2"


Cenario: Editar palete sem sucesso - involucro nao preenchido 
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste3",  Nome "Palete Teste edicao Automação" e Descrição "Teste edicao Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste3"
E clico no botão editar
Quando eu limpo o campo Involucro
E clico no botão "Salvar"
Entao é exibido a mensagem "O invólucro não pode ser nulo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste3"


Cenario: Editar palete sem sucesso - produto nao preenchido 
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste4",  Nome "Palete Teste edicao Automação" e Descrição "Teste edicao Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste4"
E clico no botão editar
Quando eu limpo o campo Protudo
E clico no botão "Salvar"
Entao é exibido a mensagem "O produto não pode ser nulo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste4"


Cenario: Validar o bloqueio de cadastro duplicado
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paletetesteduplicado",  Nome "Palete Teste duplicado Automação" e Descrição "Teste duplicado Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paletetesteduplicado",  Nome "Palete Teste duplicado Automação" e Descrição "Teste duplicado Automação"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão "Salvar"
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paletetesteduplicado"


Cenario: Copiar palete com sucesso
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste5",  Nome "Paleteteste5" e Descrição "Paleteteste5"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste5"
E clico no botão copiar
Quando preencho o campo Codigo "Paleteteste6",  Nome "Paleteteste6" e Descrição "Paleteteste6"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste5"
E excluo o cadastro gerado no teste com o codigo "Paleteteste6"


Cenario: Copiar palete sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste7",  Nome "Paleteteste7" e Descrição "Paleteteste7"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste7"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Paleteteste8" e Descrição "Paleteteste8"
E clico no botão "Salvar"
Então é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste7"


Cenario: Copiar palete sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste8",  Nome "Paleteteste8" e Descrição "Paleteteste8"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste8"
E clico no botão copiar
Quando preencho o campo Codigo "Paleteteste9",  Nome " " e Descrição "Paleteteste9"
E clico no botão "Salvar"
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste8"


Cenario: Copiar palete sem sucesso - descrição não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste9",  Nome "Paleteteste9" e Descrição "Paleteteste9"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste9"
E clico no botão copiar
Quando preencho o campo Codigo "Paleteteste10",  Nome "Paleteteste10" e Descrição " "
E clico no botão "Salvar"
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste9"


Cenario: Copiar palete sem sucesso - involucro não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste10",  Nome "Paleteteste10" e Descrição "Paleteteste10"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste10"
E clico no botão copiar
Quando preencho o campo Codigo "Paleteteste11",  Nome "Paleteteste11" e Descrição "Paleteteste11"
Quando seleciono o Involucro composto " "
E clico no botão "Salvar"
Então é exibido a mensagem "O invólucro não pode ser nulo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste10"


Cenario: Copiar palete sem sucesso - produto não preenchido
Dado que acesso a tela "Cadastro", "Palete padrão"
E clico no botão Cadastro
Quando preencho o campo Codigo "Paleteteste12",  Nome "Paleteteste12" e Descrição "Paleteteste12"
Quando seleciono o Involucro composto "INVDEPPALETE1"
Quando seleciono o Produto "PRODEPPALETE"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Paleteteste12"
E clico no botão copiar
Quando preencho o campo Codigo "Paleteteste13",  Nome "Paleteteste13" e Descrição "Paleteteste13"
Quando seleciono o Produto " "
E clico no botão "Salvar"
Então é exibido a mensagem "O produto não pode ser nulo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Paleteteste12"


Cenario: Excluir Dependências
Dado que excluo o invólucro "INVDEPPALETE1"
Dado que excluo o invólucro "INVDEPPALETE2"
Dado que excluo o produto "PRODEPPALETE"
Dado que excluo a categoria de produto "CATPRODEPPALETE" 
Dado que excluo o embarcador "EMBDEPPALETE"
