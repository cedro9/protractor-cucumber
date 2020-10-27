#language:pt
@Cadastro
@TempoDeEspera
Funcionalidade: Cadastro de Tempo de espera


Cenario: Cadastro de Dependências
Dado que cadastro o agrupador de zt "AZTDEPTEMPESP01"
Dado que cadastro o agrupador de zt "AZTDEPTEMPESP02"
Dado que cadastro a restrição de localidade "RESLOCDEPTEMESP"
Dado que cadastro a zona de transporte "ZTDEPTEMPESP01" com a cidade "São Paulo" do agrupador "AZTDEPTEMPESP01" com a restrição de localidade "RESLOCDEPTEMESP" e prioridade "1000"
Dado que cadastro a zona de transporte "ZTDEPTEMPESP02" com a cidade "Guarulhos" do agrupador "AZTDEPTEMPESP01" com a restrição de localidade "RESLOCDEPTEMESP" e prioridade "1001"
Dado que cadastro a zona de transporte "ZTDEPTEMPESP03" com a cidade "Campinas" do agrupador "AZTDEPTEMPESP01" com a restrição de localidade "RESLOCDEPTEMESP" e prioridade "1002"


Cenario:1 Cadastrar um tempo de espera com sucesso
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste001",  Nome "Teste001" e Descrição "Teste001"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E preencho "ZTDEPTEMPESP01" com "02" dias, "00" horas e "00" minutos
E preencho "ZTDEPTEMPESP02" com "00" dias, "01" horas e "45" minutos
E preencho "ZTDEPTEMPESP03" com "00" dias, "00" horas e "30" minutos
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste001"

Cenario:2 Cadastrar um tempo de espera sem sucesso - código já cadastrado
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste002",  Nome "Teste002" e Descrição "Teste002"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E preencho "ZTDEPTEMPESP01" com "02" dias, "00" horas e "00" minutos
E preencho "ZTDEPTEMPESP02" com "00" dias, "01" horas e "45" minutos
E preencho "ZTDEPTEMPESP03" com "00" dias, "00" horas e "30" minutos
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
E é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste002",  Nome "Teste002" e Descrição "Teste002"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste002"


Cenario:3 Cadastrar um tempo de espera sem sucesso - Agrupador não informado
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste003",  Nome "Teste003" e Descrição "Teste003"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Entao é exibido a mensagem "O agrupador de zona de transporte não foi selecionado."

Cenario: Cadastrar tempo de espera sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Teste004" e Descrição "Teste004"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo código está vazio."

Cenario:4 Cadastrar tempo de espera sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste005",  Nome " " e Descrição "Teste005"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo nome está vazio."

Cenario:5 Cadastrar tempo de espera sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste006",  Nome "Teste006" e Descrição " "
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo descrição está vazio."

Cenario:6 Copiar tempo de espera com sucesso
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste007",  Nome "Teste007" e Descrição "Teste007"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste007"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste007",  Nome "Copy-Teste007" e Descrição "Copy-Teste007"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Copy-Teste007"
E excluo o cadastro gerado no teste com o codigo "Teste007"

Cenário:7 Copiar Tempo de espera sem sucesso - sem código
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste008",  Nome "Teste008" e Descrição "Teste008"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste008"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Copy-Teste008" e Descrição "Copy-Teste008"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo código está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste008"

Cenário:8 Copiar Tempo de espera sem sucesso - sem nome
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste009",  Nome "Teste009" e Descrição "Teste009"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste009"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste009",  Nome " " e Descrição "Copy-Teste009"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste009"

Cenário:9 Copiar Tempo de espera sem sucesso - sem descrição
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste010",  Nome "Teste010" e Descrição "Teste010"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste010"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste010",  Nome "Copy-Teste010" e Descrição " "
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste010"



Cenário:10 Copiar Tempo de espera sem sucesso – sem agrupador
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste011",  Nome "Teste011" e Descrição "Teste011"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste011"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste011",  Nome "Copy-Teste011" e Descrição "Copy-Teste011"
Quando altero o Agrupador " "
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Entao é exibido a mensagem "O agrupador de zona de transporte não foi selecionado."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste011"


Cenário:11 Editar Tempo de espera sem sucesso - sem nome
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste012",  Nome "Teste012" e Descrição "Teste012"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste012"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Teste012"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste012"

Cenário:12 Editar Tempo de espera sem sucesso - sem descrição
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste013",  Nome "Teste013" e Descrição "Teste013"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste013"
E clico no botão editar
Quando altero o campo  Nome "Teste013" e Descrição " "
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste013"



Cenário:13 Editar Tempo de espera sem sucesso – sem agrupador
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste014",  Nome "Teste014" e Descrição "Teste014"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste014"
E clico no botão editar
Quando altero o Agrupador " "
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Entao é exibido a mensagem "O agrupador de zona de transporte não foi selecionado."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste014"



Cenário:14 Editar Tempo de espera com sucesso – Agrupador Padrão
Dado que acesso a tela "Cadastro", "Tempo de espera"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste015",  Nome "Teste015" e Descrição "Teste015"
Quando seleciono o Agrupador "AZTDEPTEMPESP01"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste015"
E clico no botão editar
Quando altero o Agrupador "AZTDEPTEMPESP02"
E clico no botão Salvar
Então é exibido a mensagem "Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?"
E clico no botão OK
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste015"


Cenario: Excluir Dependências
Dado que excluo a zona de transporte "ZTDEPTEMPESP01"
Dado que excluo a zona de transporte "ZTDEPTEMPESP02"
Dado que excluo a zona de transporte "ZTDEPTEMPESP03"
Dado que excluo o agrupador de zt "AZTDEPTEMPESP01"
Dado que excluo o agrupador de zt "AZTDEPTEMPESP02"
Dado que excluo a restrição de localidade "RESLOCDEPTEMESP"