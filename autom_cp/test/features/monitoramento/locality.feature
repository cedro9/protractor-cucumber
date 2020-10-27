#language:pt

@Monitoramento
@CadastroLocalidadeMonitoramento

Funcionalidade: Monitoramento - Cadastro de Localidades

Cenário: Dependência - Liberar todas as tarefas de geolocalização
Dado que libero todas as tarefas de geolocalização

Cenário: Cadastro de localidade com sucesso - Cadastrar 1 localidade com papel logístico destino
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade1",  Nome "Localidade1" e Descrição "Localidade1"
Quando seleciono o tipo de localidade Monitoramento "Destino"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario1" e email "usuario1@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade1"

Cenário: Cadastro de Localidade com sucesso - Cadastrar 1 localidade  com papel logístico origem
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade2",  Nome "Localidade2" e Descrição "Localidade2"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario2" e email "usuario2@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade2"

Cenário: Cadastro de localidades com sucesso - Cadastrar 2 localidades utilizando o botão salvar e continuar
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade3",  Nome "Localidade3" e Descrição "Localidade3"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario3" e email "usuario3@teste.com"
E clico no botão Salvar e Continuar
E clico no botão OK
Quando preencho o campo Codigo "Localidade4",  Nome "Localidade4" e Descrição "Localidade4"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario4" e email "usuario4@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade3"
E excluo o cadastro gerado no teste com o codigo "Localidade4"

Cenário: Cadastro de localidade sem sucesso - Cadastrar 2 localidades com o mesmo código utilizando o botão salvar e continuar
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade5",  Nome "Localidade5" e Descrição "Localidade5"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario5" e email "usuario5@teste.com"
E clico no botão Salvar e Continuar
E clico no botão OK
Quando preencho o campo Codigo "Localidade5",  Nome "Localidade5" e Descrição "Localidade5"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario6" e email "usuario6@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "Código já existente"
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade5"

Cenário: Cadastro de localidade sem sucesso - Código já existente
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade7",  Nome "Localidade7" e Descrição "Localidade7"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario7" e email "usuario7@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade7",  Nome "Localidade7" e Descrição "Localidade7"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario8" e email "usuario8@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "Código já existente"
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade7"

Cenário: Cadastro de localidade sem sucesso - Campo código não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Localidade9" e Descrição "Localidade9"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario9" e email "usuario9@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "O campo código deve ser preenchido."

Cenário: Cadastro de localidade sem sucesso - Campo nome não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade10",  Nome " " e Descrição "Localidade10"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario10" e email "usuario10@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "O campo nome deve ser preenchido."

Cenário: Cadastro de localidade sem sucesso - Campo descrição não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade11",  Nome "Localidade11" e Descrição " "
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario11" e email "usuario11@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição deve ser preenchido."

Cenário: Cadastro de localidade com sucesso - Campo país não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade12",  Nome "Localidade12" e Descrição "Localidade12"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais " ", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
E geolocalizo pelo endereço
Quando preencho o responsavel Monitoramento "Usuario12" e email "usuario12@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade12"

Cenário: Cadastro de localidade com sucesso - Campos estado e cidade não preenchidos
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade13",  Nome "Localidade13" e Descrição "Localidade13"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o país "Brasil"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario13" e email "usuario13@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade13"

Cenário: Cadastro de localidade com sucesso - Campo cidade não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade14",  Nome "Localidade14" e Descrição "Localidade14"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade " "
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario14" e email "usuario14@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade14"

Cenário: Cadastro de localidade com sucesso - Geolocalização pelo endereço
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade15",  Nome "Localidade15" e Descrição "Localidade15"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
E geolocalizo pelo endereço
Quando preencho o responsavel Monitoramento "Usuario15" e email "usuario15@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade15"

Cenário: Cadastro de localidade sem sucesso - Campos de endereço não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade16",  Nome "Localidade16" e Descrição "Localidade16"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
E clico no botão Salvar
Então é exibido a mensagem "O campo rua deve ser preenchido"

Cenário: Cadastro de localidade sem sucesso - Campos país, estado e cidade não preenchidos - Sem geolocalização
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade17",  Nome "Localidade17" e Descrição "Localidade17"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
E clico no botão Salvar
Então é exibido a mensagem que contem "O campo país deve ser preenchido"
Então é exibido a mensagem que contem "O campo estado deve ser preenchido"
Então é exibido a mensagem que contem "O campo cidade deve ser preenchido"

Cenário: Cadastro de localidade sem sucesso - Campo país não preenchido - Sem geolocalização
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade18",  Nome "Localidade18" e Descrição "Localidade18"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais " ", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
E clico no botão Salvar
Então é exibido a mensagem "O campo país deve ser preenchido"

Cenário: Cadastro de localidade sem sucesso - Campos estado e cidade não preenchidos - Sem geolocalização
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade19",  Nome "Localidade19" e Descrição "Localidade19"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o país "Brasil"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
E clico no botão Salvar
Então é exibido a mensagem que contem "O campo estado deve ser preenchido"
Então é exibido a mensagem que contem "O campo cidade deve ser preenchido"

Cenário: Editar localidade com sucesso - Alterar o campo cep
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade20",  Nome "Localidade20" e Descrição "Localidade20"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario20" e email "usuario20@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de localidade pelo identificador "Localidade20"
E clico no botão editar
Quando preencho o endereço "Av. Barão de Itapura"
Quando preencho o número do endereço "599"
Quando preencho o CEP "13020431"
E geolocalizo pelo CEP
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade20"

Cenário: Editar localidade sem sucesso - Apagar o campo descrição
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade21",  Nome "Localidade21" e Descrição "Localidade21"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario21" e email "usuario21@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de localidade pelo identificador "Localidade21"
E clico no botão editar
Quando altero o campo Decrição " "
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição deve ser preenchido."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade21"

Cenário: Editar localidade com sucesso - Alterar o campo descrição, e cep não preenchido
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade22",  Nome "Localidade22" e Descrição "Localidade22"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario22" e email "usuario22@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de localidade pelo identificador "Localidade22"
E clico no botão editar
Quando altero o campo Decrição "Localidade23"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade22"

Cenário: Copiar localidade com sucesso
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade24",  Nome "Localidade24" e Descrição "Localidade24"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario24" e email "usuario24@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de localidade pelo identificador "Localidade24"
E clico no botão copiar
Quando preencho o campo Codigo "Localidade25",  Nome "Localidade25" e Descrição "Localidade25"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade24"
E excluo o cadastro gerado no teste com o codigo "Localidade25"

Cenário: Copiar localidade sem sucesso - Código já cadastrado
Dado que acesso a tela "Monitoramento", "Localidades"
E clico no botão Cadastro
Quando preencho o campo Codigo "Localidade26",  Nome "Localidade26" e Descrição "Localidade26"
Quando seleciono o tipo de localidade Monitoramento "Origem"
Quando seleciono o Pais "Brasil", estado "São Paulo" e cidade "Campinas (SP)"
Quando preencho o endereço "Avenida Brasil"
Quando preencho o número do endereço "100"
Quando preencho o CEP "13070178"
E geolocalizo pelo CEP
Quando preencho o responsavel Monitoramento "Usuario26" e email "usuario26@teste.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de localidade pelo identificador "Localidade26"
E clico no botão copiar
Quando preencho o campo Codigo "Localidade26",  Nome "Localidade27" e Descrição "Localidade27"
E clico no botão Salvar
Então é exibido a mensagem "Código já existente"
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Localidade26"