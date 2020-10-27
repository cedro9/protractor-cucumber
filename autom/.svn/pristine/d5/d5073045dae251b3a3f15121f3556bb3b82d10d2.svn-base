#language:pt
@Cadastro
@CadastroGrupoDeRegioes
Funcionalidade: Cadastro de Grupo de Regioes


Cenario: Cadastrar um grupo de regiões com sucesso
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste001",  Nome "Teste001" e Descrição "Teste001"
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão ver no mapa
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Teste001"

Cenario: Cadastrar um grupo de regiões sem sucesso - Pelo menos uma região deve ser adicionada
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste002",  Nome "Teste002" e Descrição "Teste002"
E clico no botão Salvar
Então é exibido a mensagem Pelo menos uma região deve ser adicionada ao grupo.

Cenario: Cadastrar grupo de regiões sem sucesso - código não preenchido
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo " ",  Nome "Teste003" e Descrição "Teste003"
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão Salvar
Então e exibido a mensagem O campo código está vazio.

Cenario: Cadastrar grupo de regiões sem sucesso - nome não preenchido
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste004",  Nome " " e Descrição "Teste004"
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão Salvar
Então e exibido a mensagem O campo nome está vazio.

Cenario: Cadastrar grupo de regiões sem sucesso - descrição não preenchido
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste005",  Nome "Teste005" e Descrição " "
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão Salvar
Então e exibido a mensagem O campo descrição está vazio.

Cenario: Copiar grupo de regiões com sucesso
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste006",  Nome "Teste006" e Descrição "Teste006"
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Teste006"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste001",  Nome "Copy-Teste001" e Descrição "Copy-Teste001"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Copy-Teste001"
E excluo o cadastro gerado no teste com o codigo "Teste006"

Cenario: Editar um grupo de regiões com sucesso - Adicionando regiões
Dado acesso a tela de Grupo de Regiões
Quando preencho o campo Codigo "Teste007",  Nome "Teste007" e Descrição "Teste007"
Quando seleciono o Importar regiões "RJ - Grajaú"
E clico no botão Importar
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Teste007"
E clico no botão editar
Quando seleciono o Importar regiões "RJ - Acari"
E clico no botão Importar
Quando seleciono o Importar regiões "RJ - Bangu"
E clico no botão Importar
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Teste007"