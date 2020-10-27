#language:pt
@Cadastro
@cadastroEmbarcadores
Funcionalidade: Cadastro de Embarcadores


Cenario: Validar regras de todos campos obrigatorios
Dado acesso a tela de cadastro de Embarcadores
E clico no botão Salvar
Entao e exibido a mensagem Nenhuma propriedade da entidade foi alterada.


Cenario: Cadastrar embarcador sem sucesso - código não preenchido
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo " ",  Nome "TesteAutomacao" e Descrição "TesteAutomacao"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.


Cenario: Cadastrar embarcador sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador1",  Nome " " e Descrição "TesteAutomacao"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.


Cenario: Cadastrar embarcador sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador1",  Nome "TesteAutomacao" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.


Cenario: Cadastrar embarcador sem sucesso - embarcador já cadastrado
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador1",  Nome "Embarcador1" e Descrição "Embarcador1"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador1",  Nome "Embarcador1" e Descrição "Embarcador1"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador1"


Cenario: Copiar embarcador com sucesso
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador2",  Nome "Embarcador2" e Descrição "Embarcador2"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador2"
E clico no botão copiar
Quando preencho o campo Codigo "Embarcador3",  Nome "Embarcador3" e Descrição "Embarcador3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador2"
E excluo o cadastro gerado no teste com o codigo "Embarcador3"


Cenario: Copiar embarcador sem sucesso - embarcador já cadastrado
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador4",  Nome "Embarcador4" e Descrição "Embarcador4"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador4"
E clico no botão copiar
Quando preencho o campo Codigo "Embarcador4",  Nome "Embarcador4" e Descrição "Embarcador4"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador4"


Cenario: Copiar embarcador sem sucesso - código não preenchido
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador5",  Nome "Embarcador5" e Descrição "Embarcador5"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador5"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "TesteAutomacao" e Descrição "TesteAutomacao"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador5"


Cenario: Copiar embarcador sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador6",  Nome "Embarcador6" e Descrição "Embarcador6"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador6"
E clico no botão copiar
Quando preencho o campo Codigo "Embarcador7",  Nome " " e Descrição "TesteAutomacao"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador6"


Cenario: Copiar embarcador sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador7",  Nome "Embarcador7" e Descrição "Embarcador7"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador7"
E clico no botão copiar
Quando preencho o campo Codigo "Embarcador8",  Nome "TesteAutomacao" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador7"


Cenario: Editar embarcador com sucesso
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador8",  Nome "Embarcador8" e Descrição "Embarcador8"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador9",  Nome "Embarcador9" e Descrição "Embarcador9"
Quando seleciono o Grupo Logistico "DEFAULT"
Quando seleciono o Embarcador incompatível "Embarcador8"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador9"
E clico no botão editar
Quando altero o Grupo Logistico para "Agrupador por cidades"
Quando removo o Embarcador incompatível
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador8"
E excluo o cadastro gerado no teste com o codigo "Embarcador9"

Cenario: Editar embarcador sem sucesso - apagar o nome
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador10",  Nome "Embarcador10" e Descrição "Embarcador10"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador10"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Embarcador10"
E clico no botão Salvar
Então e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador10"


Cenario: Editar embarcador sem sucesso - apagar a descrição
Dado acesso a tela de cadastro de Embarcadores
Quando preencho o campo Codigo "Embarcador11",  Nome "Embarcador11" e Descrição "Embarcador11"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Embarcador11"
E clico no botão editar
Quando altero o campo  Nome "Embarcador12" e Descrição " "
E clico no botão Salvar
Então e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Embarcador11"