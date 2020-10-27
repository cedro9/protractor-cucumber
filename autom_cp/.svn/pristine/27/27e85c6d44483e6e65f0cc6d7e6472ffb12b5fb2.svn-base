#language:pt
@Cadastro
@AgrupadoresZonaTransporte
Funcionalidade: Cadastro de Agrupadores de Zona de Transporte


Cenario: Cadastrar agrupador de zonas de transporte sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "TesteAutomacao" e Descrição "TesteAutomacao"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo código está vazio."


Cenario: Cadastrar agrupador de zonas de transporte sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto1",  Nome " " e Descrição "TesteAutomacao"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar agrupador de zonas de transporte sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto1",  Nome "TesteAutomacao" e Descrição " "
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."


Cenario: Cadastrar agrupador de zonas de transporte sem sucesso - agrupador de zonas de transporte já cadastrado
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto1",  Nome "TestecadastroDuplicado" e Descrição "TestecadastroDuplicado"
E clico no botão Salvar
E clico no botão "OK"
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto1",  Nome "TestecadastroDuplicado" e Descrição "TestecadastroDuplicado"
E clico no botão "Salvar"
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto1"


Cenario: Copiar agrupador de zonas de transporte com sucesso
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto2",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto2"
E clico no botão copiar
Quando preencho o campo Codigo "TesteAuto3",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto2"
E excluo o cadastro gerado no teste com o codigo "TesteAuto3"

Cenario: Copiar agrupador de zonas de transporte sem sucesso - agrupador de zonas de transporte já cadastrado
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto4",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto4"
E clico no botão copiar
Quando preencho o campo Codigo "TesteAuto4",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão "Salvar"
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto4"

Cenario: Validar bloqueio cópia de Agrupador de Zona de transporte - Codigo nao Preenchido
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto5",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto5"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto5"

Cenario: Validar bloqueio cópia de Agrupador de Zona de transporte - Nome nao Preenchido
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto6",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto6"
E clico no botão copiar
Quando preencho o campo Codigo "TesteAuto7",  Nome " " e Descrição "TestecadastroCopia"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto6"

Cenario: Validar bloqueio cópia de Agrupador de Zona de transporte - Descrição nao Preenchido
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto7",  Nome "TestecadastroCopia" e Descrição "TestecadastroCopia"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto7"
E clico no botão copiar
Quando preencho o campo Codigo "TesteAuto8",  Nome "TestecadastroCopia" e Descrição " "
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto7"


Cenario: Editar agrupador de zonas de transporte com sucesso
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto8",  Nome "Testeedição" e Descrição "Testeedição"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto8"
E clico no botão editar
Quando altero o campo  Nome "TesteAuto9" e Descrição "TesteAuto9"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto8"


Cenario: Editar agrupador de zonas de transporte sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto9",  Nome "TesteAuto9" e Descrição "TesteAuto9"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto9"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "TesteAuto09"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto9"


Cenario: Editar agrupador de zonas de transporte sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Agrupadores de zona de transporte"
E clico no botão Cadastro
Quando preencho o campo Codigo "TesteAuto10",  Nome "TesteAuto10" e Descrição "TesteAuto10"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "TesteAuto10"
E clico no botão editar
Quando altero o campo  Nome "TesteAuto11" e Descrição " "
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "TesteAuto10"

