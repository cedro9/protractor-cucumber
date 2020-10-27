#language:pt

@Cadastro
@CadastroCaminhoes

Funcionalidade: Cadastro de Caminhões

Cenario: Cadastrar Dependências
Dado que cadastro o agrupador de zt "AZTDEPCAM"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERVDEPCAM" com o agrupador de zona de transporte "AZTDEPCAM"
Dado que cadastro o veículo "VEIDEPCAM01", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPCAM02", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o calculador de frete viagem "CALFREVIAGMDEPCAM"
Dado que cadastro a transportadora "TRANSDEPCAM01" para o calculador de tipo de serviço "TIPOSERVDEPCAM", agrupador zona de transporte "AZTDEPCAM", grupo logístico "AZTDEPCAM" e calculador de frete viagem "CALFREVIAGMDEPCAM"
Dado que cadastro a transportadora "TRANSDEPCAM02" para o calculador de tipo de serviço "TIPOSERVDEPCAM", agrupador zona de transporte "AZTDEPCAM", grupo logístico "AZTDEPCAM" e calculador de frete viagem "CALFREVIAGMDEPCAM"

Cenario: Cadastrar caminhão sem sucesso - código não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo " ",  Nome "Caminhao Teste Automacao" e Descrição "Teste Automacao"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.

Cenario: Cadastrar caminhão sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9999",  Nome " " e Descrição "Teste Automacao"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.

Cenario: Cadastrar caminhão sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9999",  Nome "Caminhao Teste Automacao" e Descrição " "
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.

Cenario: Cadastrar caminhão sem sucesso - situação não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9999",  Nome "Caminhao Teste Automacao" e Descrição "Teste Automacao"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com " "
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem que Situação do caminhão deve ser especificada.

Cenario: Cadastrar caminhão sem sucesso - veículo não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9999",  Nome "Caminhao Teste Automacao" e Descrição "Teste Automacao"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo " "
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem que O caminhão deve estar associado a algum veículo.

Cenario: Cadastrar caminhão sem sucesso - transportadora não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9999",  Nome "Caminhao Teste Automacao" e Descrição "Teste Automacao"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora " "
E clico no botão Salvar
Entao e exibido a mensagem que Caminhão deve ter ao menos uma transportadora associada.


Cenario: Cadastrar caminhão sem sucesso - caminhão já cadastrado
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9991",  Nome "Caminhao duplicado testeauto" e Descrição "Caminhao duplicado testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9991",  Nome "Caminhao duplicado testeauto" e Descrição "Caminhao duplicado testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9991"


Cenario: Validar cadastro caminhão com sucesso - Frota Propria
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9992",  Nome "Caminhao frota propria testeauto" e Descrição "Caminhao frota propria testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9992"


Cenario: Validar cadastro caminhão com sucesso - Agregado
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9993",  Nome "Caminhao agregado testeauto" e Descrição "Caminhao agregado testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Agregado"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9993"


Cenario: Validar cadastro caminhão com sucesso - Frota Terceirizada
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9994",  Nome "Caminhao Frota Terceirizada testeauto" e Descrição "Caminhao Frota Terceirizada testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota terceirizada"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9994"


Cenario: Copiar caminhão com sucesso
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9995",  Nome "Caminhao cópia testeauto" e Descrição "Caminhao cópia testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-9995"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-9996",  Nome "Caminhao cópia1 testeauto" e Descrição "Caminhao cópia1 testeauto"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9995"
E excluo o cadastro gerado no teste com o codigo "FFF-9996"


Cenario: Editar caminhão com sucesso
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9997",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-9997"
E clico no botão editar
Quando altero o veiculo para "VEIDEPCAM01" e transportadora para "TRANSDEPCAM02"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9997"


Cenario: Editar caminhão sem sucesso - apagar o nome
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9998",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-9998"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Caminhao edição testeauto"
E clico no botão Salvar
Então e exibido a mensagem O campo nome está vazio.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9998"


Cenario: Editar caminhão sem sucesso - apagar a descrição
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-9799",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-9799"
E clico no botão editar
Quando altero o campo  Nome "Caminhao edição testeauto" e Descrição " "
E clico no botão Salvar
Então e exibido a mensagem O campo descrição está vazio.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-9799"


Cenario: Editar caminhão sem sucesso - apagar o país
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8881",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8881"
E clico no botão editar
Quando Apago Pais
E clico no botão Salvar
Então e exibido a mensagem O país da placa deve ser especificado.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8881"



Cenario: Editar caminhão sem sucesso - apagar a cidade
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8882",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8882"
E clico no botão editar
Quando Apago a Cidade
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8882"


Cenario: Editar caminhão sem sucesso - apagar a situação
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8883",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8883"
E clico no botão editar
Quando Apago a situação do caminhao
E clico no botão Salvar
Então e exibido a mensagem que Situação do caminhão deve ser especificada.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8883"


Cenario: Editar caminhão sem sucesso - apagar o veículo
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8884",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8884"
E clico no botão editar
Quando Apago o veiculo
E clico no botão Salvar
Entao e exibido a mensagem que O caminhão deve estar associado a algum veículo.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8884"


Cenario: Editar caminhão sem sucesso - apagar a transportadora
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8885",  Nome "Caminhao edição testeauto" e Descrição "Caminhao edição testeauto"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8885"
E clico no botão editar
Quando Apago a transportadora
E clico no botão Salvar
Entao e exibido a mensagem que Caminhão deve ter ao menos uma transportadora associada.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8885"



Cenario: Copiar caminhão sem sucesso - caminhão já cadastrado
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8886",  Nome "FFF-8886" e Descrição "FFF-8886"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8886"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8886",  Nome "FFF-8886" e Descrição "FFF-8886"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8886"



Cenario: Copiar caminhão sem sucesso - código não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8887",  Nome "FFF-8887" e Descrição "FFF-8887"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8887"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "FFF-8888" e Descrição "FFF-8888"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8887"



Cenario: Copiar caminhão sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8888",  Nome "FFF-8888" e Descrição "FFF-8888"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8888"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8889",  Nome " " e Descrição "FFF-8889"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8888"



Cenario: Copiar caminhão sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8889",  Nome "FFF-8889" e Descrição "FFF-8889"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8889"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8870",  Nome "FFF-8870" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8889"


Cenario: Copiar caminhão com sucesso - cidade não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8870",  Nome "FFF-8870" e Descrição "FFF-8870"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8870"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8871",  Nome "FFF-8871" e Descrição "FFF-8871"
Quando Apago a Cidade
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8870"
E excluo o cadastro gerado no teste com o codigo "FFF-8871"



Cenario: Copiar caminhão sem sucesso - situação não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8871",  Nome "FFF-8871" e Descrição "FFF-8871"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8871"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8872",  Nome "FFF-8872" e Descrição "FFF-8872"
Quando Apago a situação do caminhao
E clico no botão Salvar
Entao e exibido a mensagem que Situação do caminhão deve ser especificada.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8871"



Cenario: Copiar caminhão sem sucesso - veículo não preenchido
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8872",  Nome "FFF-8872" e Descrição "FFF-8872"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8872"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8873",  Nome "FFF-8873" e Descrição "FFF-8873"
Quando Apago o veiculo
E clico no botão Salvar
Entao e exibido a mensagem que O caminhão deve estar associado a algum veículo.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8872"



Cenario: Copiar caminhão sem sucesso - transportadora não preenchida
Dado acesso a tela de cadastro de caminhoes
Quando preencho o campo Codigo "FFF-8873",  Nome "FFF-8873" e Descrição "FFF-8873"
Quando Preencho o Pais com "Brasil", Estado "Acre" e Cidade "Rio Branco"
Quando Preencho o campo situação do caminhão com "Frota própria"
Quando Associo ao veiculo "VEIDEPCAM01"
Quando Seleciono a transportadora "TRANSDEPCAM01"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "FFF-8873"
E clico no botão copiar
Quando preencho o campo Codigo "FFF-8874",  Nome "FFF-8874" e Descrição "FFF-8874"
Quando Apago a transportadora
E clico no botão Salvar
Entao e exibido a mensagem que Caminhão deve ter ao menos uma transportadora associada.
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "FFF-8873"

Cenario: Excluir Dependências
Dado que excluo o veículo "VEIDEPCAM01"
Dado que excluo o veículo "VEIDEPCAM02"
Dado que excluo a transportadora "TRANSDEPCAM01"
Dado que excluo a transportadora "TRANSDEPCAM02"
Dado que excluo o calculador de frete viagem "CALFREVIAGMDEPCAM"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERVDEPCAM"
Dado que excluo o agrupador de zt "AZTDEPCAM"