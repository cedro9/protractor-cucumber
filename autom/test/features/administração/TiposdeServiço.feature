#language:pt

@Administração
@TiposdeServiço
@produto
Funcionalidade: Cadastro de Tipos de Serviço

Cenario: Cadastrar tipo de serviço com sucesso
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço1",  Nome "TipoServiço1" e Descrição "TipoServiço1"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço1"

Cenario: Cadastrar tipo de serviço sem sucesso - tipo de serviço já cadastrado
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço2",  Nome "TipoServiço2" e Descrição "TipoServiço2"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço2",  Nome "TipoServiço2" e Descrição "TipoServiço2"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço2"

Cenario: Cadastrar tipo de serviço sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "TipoServiço3" e Descrição "TipoServiço3"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar tipo de serviço sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço4",  Nome " " e Descrição "TipoServiço4"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar tipo de serviço sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço5",  Nome "TipoServiço5" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Copiar tipo de serviço com sucesso
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço6",  Nome "TipoServiço6" e Descrição "TipoServiço6"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço6"
E clico no botão copiar
Quando preencho o campo Codigo "TipoServiço7",  Nome "TipoServiço7" e Descrição "TipoServiço7"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço6"
E excluo o cadastro gerado no teste com o codigo "TipoServiço7"

Cenario: Copiar tipo de serviço sem sucesso - tipo de serviço já cadastrado
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço8",  Nome "TipoServiço8" e Descrição "TipoServiço8"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço8"
E clico no botão copiar
Quando preencho o campo Codigo "TipoServiço8",  Nome "TipoServiço8" e Descrição "TipoServiço8"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço8"

Cenario: Copiar tipo de serviço sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço9",  Nome "TipoServiço9" e Descrição "TipoServiço9"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço9"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "TipoServiço10" e Descrição "TipoServiço10"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço9"

Cenario: Copiar tipo de serviço sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço11",  Nome "TipoServiço11" e Descrição "TipoServiço11"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço11"
E clico no botão copiar
Quando preencho o campo Codigo "TipoServiço12",  Nome " " e Descrição "TipoServiço12"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço11"

Cenario: Copiar tipo de serviço sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço13",  Nome "TipoServiço13" e Descrição "TipoServiço13"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço13"
E clico no botão copiar
Quando preencho o campo Codigo "TipoServiço14",  Nome "TipoServiço14" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço13"

Cenario: Editar tipo de serviço com sucesso
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço15",  Nome "TipoServiço15" e Descrição "TipoServiço15"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço15"
E clico no botão editar
Quando altero o campo  Nome "TipoServiço16" e Descrição "TipoServiço16"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço15"

Cenario: Editar tipo de serviço sem sucesso - nenhuma propriedade alterada
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço17",  Nome "TipoServiço17" e Descrição "TipoServiço17"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço17"
E clico no botão editar
E clico no botão Salvar
Entao é exibido a mensagem "Nenhuma propriedade da entidade foi alterada."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço17"

Cenario: Editar tipo de serviço sem sucesso - apagar o nome
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço18",  Nome "TipoServiço18" e Descrição "TipoServiço18"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço18"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "TipoServiço19"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TipoServiço18"

Cenario: Editar tipo de serviço sem sucesso - apagar a descrição
Dado que acesso a tela "Administração", "Tipos de serviço"
E clico no botão Cadastro
Quando preencho o campo Codigo "TipoServiço20",  Nome "TipoServiço20" e Descrição "TipoServiço20"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "TipoServiço20"
E clico no botão editar
Quando altero o campo  Nome "TipoServiço21" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"   
E excluo o cadastro gerado no teste com o codigo "TipoServiço20"