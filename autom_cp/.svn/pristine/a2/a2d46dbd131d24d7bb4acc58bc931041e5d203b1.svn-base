#language:pt
@Cadastro
@CadastroDocas
Funcionalidade: Cadastro de Docas


Cenario: Cadastrar Dependências
Dado que cadastro a categoria de produto "CATPRODDEPDOCA"
Dado que cadastro o embarcador "EMBDEPDOCA"
Dado que cadastro a restrição de localidade "RESLOCDEPDOCA"
Dado que cadastro a origem "ORIDEPDOCA" com a restrição de localidade "RESLOCDEPDOCA" e Cep "76820-408"
Dado que cadastro o tipo de serviço "TIPOSERVDEPDOCA"
Dado que cadastro o agrupador de zt "AZTDEPDOCA"
Dado que cadastro o calculador de tipo de serviço "CALTIPOSERVDEPDOCA" com o agrupador de zona de transporte "AZTDEPDOCA"
Dado que cadastro o calculador de frete viagem "CALFREVIAGEMDEPDOCA"
Dado que cadastro a transportadora "TRANSDEPDOCA" para o calculador de tipo de serviço "CALTIPOSERVDEPDOCA", agrupador zona de transporte "AZTDEPDOCA", grupo logístico "AZTDEPDOCA" e calculador de frete viagem "CALFREVIAGEMDEPDOCA"
Dado que cadastro o veículo "VEIDEPDOCA", com "2,5" de largura, "8,00" de comprimento e "2,8" de altura


Cenario: Inserir doca com sucesso - Inserir doca (tipo ambos)
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste1",  Nome "DocaTeste1" e Descrição "DocaTeste1"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste1"


Cenario: Inserir doca com sucesso - dois horários de funcionamento no mesmo dia
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste2",  Nome "DocaTeste2" e Descrição "DocaTeste2"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "18" e "19" as "21"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste2"


Cenario: Inserir doca com sucesso - Inserir doca (tipo carregamento)
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste3",  Nome "DocaTeste3" e Descrição "DocaTeste3"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste3"


Cenario: Inserir doca com sucesso - Inserir doca (tipo descarregamento)
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste4",  Nome "DocaTeste4" e Descrição "DocaTeste4"
Quando preencho o Serviços suportados "Descarregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste4"


Cenario: Inserir doca sem sucesso - Doca já cadastrada
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste5",  Nome "DocaTeste5" e Descrição "DocaTeste5"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste5",  Nome "DocaTeste5" e Descrição "DocaTeste5"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste5"


Cenario: Inserir doca sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.


Cenario: Inserir doca sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome " " e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.


Cenario: Inserir doca sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição " "
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.


Cenario: Inserir doca sem sucesso - serviço suportado não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados " ", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem O serviço suportado deve ser especificado.


Cenario: Inserir doca sem sucesso - localidade não preenchida
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Carregamento", Localidade " " e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "10" as "22"
E clico no botão Salvar
Entao e exibido a mensagem A localidade deve ser especificada.


Cenario: Inserir doca sem sucesso - horário não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Carregamento", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
E clico no botão Salvar
Entao e exibido a mensagem Sem horário de funcionamento definido.


Cenario: Inserir doca sem sucesso - Horário de funcionamento sobreposto
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "18" e "08" as "19"
E clico no botão Salvar
Então é exibido a mensagem Há sobreposição de horários de funcionamento.


Cenario: Inserir doca sem sucesso -  horário inicial maior que o final
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "10" as "07" e "13" as "19"
E clico no botão Salvar
Então é exibido a mensagem Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.


Cenario: Inserir doca sem sucesso - horário de exceção sobrepoe o horário de funcionamento
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
Quando preencho a exceção data "04/02/2019", Tipo "Funcionamento" das "08" as "12"
E clico no botão Salvar
Então é exibido a mensagem Os horários de exceção de funcionamento são inválidos existe sobreposição de horários.


Cenario: Inserir doca sem sucesso - horário de exceção sobrepoe o horário de não funcionamento
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
Quando preencho a exceção data "04/02/2019", Tipo "Não-Funcionamento" das "20" as "23"
E clico no botão Salvar
Então é exibido a mensagem Os horários de exceção de não funcionamento são inválidos existe sobreposição de horários.


Cenario: Inserir doca sem sucesso - horário inicial maior que o final em exceções
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
Quando preencho a exceção data "04/02/2019", Tipo "Funcionamento" das "23" as "20"
E clico no botão Salvar
Então é exibido a mensagem Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.


Cenario: Copiar doca com sucesso
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste6",  Nome "DocaTeste6" e Descrição "DocaTeste6"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste6"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste7",  Nome "DocaTeste7" e Descrição "DocaTeste7"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste6"
E excluo o cadastro gerado no teste com o codigo "DocaTeste7"


Cenario: Copiar doca sem sucesso - doca já cadastrada
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste8",  Nome "DocaTeste8" e Descrição "DocaTeste8"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste8"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste8",  Nome "DocaTeste8" e Descrição "DocaTeste8"
E clico no botão Salvar
Entao e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste8"


Cenario: Copiar doca sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste9",  Nome "DocaTeste9" e Descrição "DocaTeste9"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste9"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "DocaTeste10" e Descrição "DocaTeste10"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste9"


Cenario: Copiar doca sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste10",  Nome "DocaTeste10" e Descrição "DocaTeste10"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste10"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste11",  Nome " " e Descrição "DocaTeste11"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste10"


Cenario: Copiar doca sem sucesso - descrição não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste11",  Nome "DocaTeste11" e Descrição "DocaTeste11"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste11"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste12",  Nome "DocaTeste12" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste11"


Cenario: Copiar doca sem sucesso - serviço suportado não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste12",  Nome "DocaTeste12" e Descrição "DocaTeste12"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste12"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste13",  Nome "DocaTeste13" e Descrição "DocaTeste13"
Quando apago o serviço suportado
E clico no botão Salvar
Entao e exibido a mensagem O serviço suportado deve ser especificado.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste12"


Cenario: Copiar doca sem sucesso - localidade não preenchida
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste13",  Nome "DocaTeste13" e Descrição "DocaTeste13"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste13"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste14",  Nome "DocaTeste14" e Descrição "DocaTeste14"
E apago a localidade
E clico no botão Salvar
Entao e exibido a mensagem A localidade deve ser especificada.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste13"

Cenario: Copiar doca sem sucesso - horário de funcionamento não preenchido
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste14",  Nome "DocaTeste14" e Descrição "DocaTeste14"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste14"
E clico no botão copiar
Quando preencho o campo Codigo "DocaTeste15",  Nome "DocaTeste15" e Descrição "DocaTeste15"
E clico na aba "Funcionamento"
Quando apago o horario de funcionamento
E clico no botão Salvar
Entao e exibido a mensagem Sem horário de funcionamento definido.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste14"


Cenario: Editar doca com sucesso - desativar compatibilidades
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste15",  Nome "DocaTeste15" e Descrição "DocaTeste15"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste15"
E clico no botão editar
Quando Desativo as compatibilidades 
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste15"


Cenario: Editar doca sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste16",  Nome "DocaTeste16" e Descrição "DocaTeste16"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste16"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "DocaTeste16"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste16"


Cenario: Editar doca sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste17",  Nome "DocaTeste17" e Descrição "DocaTeste17"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste17"
E clico no botão editar
Quando altero o campo  Nome "DocaTeste17" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste17"


Cenario: Editar doca sem sucesso - apagar horários de funcionamento
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste18",  Nome "DocaTeste18" e Descrição "DocaTeste18"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste18"
E clico no botão editar
E clico na aba "Funcionamento"
Quando apago o horario de funcionamento
E clico no botão Salvar
Entao e exibido a mensagem Sem horário de funcionamento definido.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste18"


Cenario: Editar doca sem sucesso - apagar dia da semana
Dado que acesso a tela "Cadastro", "Docas"
E clico no botão Cadastro
Quando preencho o campo Codigo "DocaTeste19",  Nome "DocaTeste19" e Descrição "DocaTeste19"
Quando preencho o Serviços suportados "Ambos", Localidade "ORIDEPDOCA" e Prioridade "1"
Quando seleciono a Permissão de embarcadores "EMBDEPDOCA"
E clico na aba "Restrições logísticas"
Quando Bloqueio o veiculo "VEIDEPDOCA"
Quando Bloqueio a Transportadora "TRANSDEPDOCA"
Quando Bloqueio o tipo de serviço "TIPOSERVDEPDOCA"
E clico na aba "Restrições de engenharia"
Quando seleciono a Categoria de Produto incompativel "CATPRODDEPDOCA"
Quando seleciono a Categoria de invólucro compativel "Fardo"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento Segunda-Feira "08" as "12" e "13" as "18"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "DocaTeste19"
E clico no botão editar
E clico na aba "Funcionamento"
Quando apago o dia da semana
E clico no botão Salvar
Entao e exibido a mensagem Os dados de funcionamento para horários permitidos informados não podem ser vazios.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "DocaTeste19"


Cenario: Excluir Dependências
Dado que excluo a transportadora "TRANSDEPDOCA"
Dado que excluo o calculador de frete viagem "CALFREVIAGEMDEPDOCA"
Dado que excluo o calculador de tipo de serviço "CALTIPOSERVDEPDOCA"
Dado que excluo o agrupador de zt "AZTDEPDOCA"
Dado que excluo a categoria de produto "CATPRODDEPDOCA"
Dado que excluo o embarcador "EMBDEPDOCA"
Dado que excluo o tipo de serviço "TIPOSERVDEPDOCA"
Dado que excluo a localidade "ORIDEPDOCA"
Dado que excluo a restrição de localidade "RESLOCDEPDOCA"
Dado que excluo o veículo "VEIDEPDOCA"