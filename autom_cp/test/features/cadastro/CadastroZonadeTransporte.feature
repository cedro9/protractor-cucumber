#language:pt
@Cadastro
@CadastroZonaDeTransporte
Funcionalidade: Cadastro de Zona de Transporte


Cenario: Cadastro de Dependências
Dado que cadastro o agrupador de zt "AZTDEPZT"
Dado que cadastro a restrição de localidade "RESTLOCDEPZT"

Cenario: Validar regras de campo obrigatorio Codigo
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo " ",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "5" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "São Paulo"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.


Cenario: Validar regras de campo obrigatorio Nome
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome " " e Descrição "teste1"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "5" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "São Paulo"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.


Cenario: Validar regras de campo obrigatorio descrição
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição " "
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "5" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "São Paulo"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.


Cenario: Validar regras de campo obrigatorio Agrupador Zona de transporte
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador " ", Prioridade "5" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
E clico no botão Salvar
Entao e exibido a mensagem que O agrupador de zonas de transporte não pode ser nulo.


Cenario: Validar regras de campo obrigatorio Tipo
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador "Padrao", Prioridade "5" e Tipo " "
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
E clico no botão Salvar
Entao e exibido a mensagem que A zona de transporte deve possuir um detalhe não nulo.


Cenario: Validar regras de campo obrigatorio Restrição Localidade
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "5" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade " " e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "São Paulo"
E clico no botão Salvar
Entao e exibido a mensagem que A restrição de localidade não pode ser nula.


Cenario: Validar regras bloqueio de cadastro duplicado
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "1" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "São Paulo"
E clico no botão Salvar e confirmo
E Clico no botão voltar
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste1",  Nome "teste1" e Descrição "teste1"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "2" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Palmeiras de São Paulo"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste1"


Cenario: Copiar zona de transporte sem sucesso - cidade - Código não preenchido
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste2",  Nome "teste2" e Descrição "teste2"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "3" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Palmeiras de São Paulo"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste2"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "teste3" e Descrição "teste3"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "4" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Adolfo"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste2"


Cenario: Copiar zona de transporte sem sucesso - cidade - Nome não preenchido
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste3",  Nome "teste3" e Descrição "teste3"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "7" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Adolfo"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste3"
E clico no botão copiar
Quando preencho o campo Codigo "teste4",  Nome " " e Descrição "teste4"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "8" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Agissê"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste3"


Cenario: Copiar zona de transporte sem sucesso - cidade - Descrição não preenchido
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste4",  Nome "teste4" e Descrição "teste4"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "9" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Agissê"
E clico no botão Salvar e confirmo
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste4"
E clico no botão copiar
Quando preencho o campo Codigo "teste5",  Nome "teste5" e Descrição " "
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "10" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Aguaí"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste4"


Cenario: copiar zona de transporte sem sucesso - cidade - mesma prioridade
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste5",  Nome "teste5" e Descrição "teste5"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "9" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Aguaí"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste5"
E clico no botão copiar
Quando preencho o campo Codigo "teste6",  Nome "teste6" e Descrição "teste6"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "9" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Alphaville"
E clico no botão Salvar
Entao e exibido a mensagem A zona de transporte não pode ter a mesma prioridade que outras zonas de transporte do mesmo agrupador.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste5"


Cenario: Editar zona de transporte sem sucesso - cidade - apagar a descrição
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste6",  Nome "teste6" e Descrição "teste6"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "10" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Anhembi"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste6"
E clico no botão editar
Quando altero o campo  Nome "teste6" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste6"


Cenario: Editar zona de transporte sem sucesso - cidade - apagar o nome
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste7",  Nome "teste7" e Descrição "teste7"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "11" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Angatuba"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste7"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "teste7"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste7"


Cenario: Editar zona de transporte sem sucesso - cidade - mesma prioridade
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste8",  Nome "teste8" e Descrição "teste8"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "12" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Baguaçu"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste9",  Nome "teste9" e Descrição "teste9"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "13" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Bananal"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste9"
E clico no botão editar
Quando eu altero a Prioridade para "12"
E clico no botão Salvar
Entao e exibido a mensagem A zona de transporte não pode ter a mesma prioridade que outras zonas de transporte do mesmo agrupador.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste8"
E excluo o cadastro gerado no teste com o codigo "teste9"


Cenario: Editar zona de transporte sem sucesso - cidade - Restrição de localidade não preenchida
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste10",  Nome "teste10" e Descrição "teste10"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "14" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Borborema"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste10"
E clico no botão editar
Quando eu limpo o campo Restrição de Localidade
E clico no botão Salvar
Entao e exibido a mensagem que A restrição de localidade não pode ser nula.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste10"


Cenario: Editar zona de transporte sem sucesso - cidade - cidade não preenchida
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste11",  Nome "teste11" e Descrição "teste11"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "15" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Conchal"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste11"
E clico no botão editar
Quando eu removo a cidade selecionada
E clico no botão Salvar
Entao e exibido a mensagem que A zona de transporte deve possuir ao menos um elemento.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste11"


Cenario: Cadastrar zona de transporte sem sucesso - cidade - mesma prioridade
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste12",  Nome "teste12" e Descrição "teste12"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "16" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Ana Dias"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste13",  Nome "teste13" e Descrição "teste13"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "16" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Caiabu"
E clico no botão Salvar
Entao e exibido a mensagem A zona de transporte não pode ter a mesma prioridade que outras zonas de transporte do mesmo agrupador.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste12"


Cenario: Copiar zona de transporte com sucesso – cidade
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste13",  Nome "teste13" e Descrição "teste13"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "18" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Analândia"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste13"
E clico no botão copiar
Quando preencho o campo Codigo "teste14",  Nome "teste14" e Descrição "teste14"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "19" e Tipo "Cidade"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Apiaí"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste13"
E excluo o cadastro gerado no teste com o codigo "teste14"


Cenario: Copiar zona de transporte sem sucesso - cidade - zona de transporte já cadastrada
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste15",  Nome "teste15" e Descrição "teste15"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "20" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Broa"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste15"
E clico no botão copiar
Quando preencho o campo Codigo "teste15",  Nome "teste15" e Descrição "teste15"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Ariranha"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste15"


Cenario: Copiar zona de transporte sem sucesso - cidade - agrupador de zona de transporte não preenchido
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste16",  Nome "teste16" e Descrição "teste16"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "21" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Iperó"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste16"
E clico no botão copiar
Quando preencho o campo Codigo "teste17",  Nome "teste17" e Descrição "teste17"
Quando Seleciono o agrupador " ", Prioridade "22" e Tipo "Cidade"
E clico no botão Salvar
Entao e exibido a mensagem que O agrupador de zonas de transporte não pode ser nulo.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste16"


Cenario: Copiar zona de transporte sem sucesso - cidade - restrição de localidade não preenchida
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste17",  Nome "teste17" e Descrição "teste17"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "23" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Aspásia"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste17"
E clico no botão copiar
Quando preencho o campo Codigo "teste18",  Nome "teste18" e Descrição "teste18"
Quando eu limpo o campo Restrição de Localidade
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Coroados"
E clico no botão Salvar
Entao e exibido a mensagem que A restrição de localidade não pode ser nula.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste17"


Cenario: Copiar zona de transporte sem sucesso - cidade - tipo não preenchido
Dado acesso a tela de cadastro de Zona de Transporte
Quando preencho o campo Codigo "teste18",  Nome "teste18" e Descrição "teste18"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "24" e Tipo "Cidade"
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
Quando Seleciono o Pais "Brasil", Estado "São Paulo"
Quando Seleciono a Cidade Disponivel "Auriflama"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "teste18"
E clico no botão copiar
Quando preencho o campo Codigo "teste19",  Nome "teste19" e Descrição "teste19"
Quando Seleciono o agrupador "AZTDEPZT", Prioridade "25" e Tipo " "
Quando Seleciono a Restrição de Localidade "RESTLOCDEPZT" e Velocidade "50"
E clico no botão Salvar
Entao e exibido a mensagem que A zona de transporte deve possuir um detalhe não nulo.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "teste18"


Cenario: Exclusão de Dependências
Dado que excluo o agrupador de zt "AZTDEPZT"
Dado que excluo a restrição de localidade "RESTLOCDEPZT"
