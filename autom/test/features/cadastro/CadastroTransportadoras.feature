#language:pt
@Cadastro
@CadastroTransportadoras
Funcionalidade: Cadastro de Transportadoras

Cenario: Cadastro de dependências
Dado que cadastro o tipo de serviço "TIPOSERVDEPTRAN"
Dado que cadastro a restrição de localidade "RESLOCDEPTRAN"
Dado que cadastro o agrupador de zt "AZTDEPTRAN"
Dado que cadastro a zona de transporte "ZTREGDEPTRAN" com a cidade "São Paulo" do agrupador "AZTDEPTRAN" com a restrição de localidade "RESLOCDEPTRAN" e prioridade "2"
# Dado que cadastro a zona de transporte "ZTREGDEPTRAN" do tipo região do agrupador do agrupador "AZTDEPTRAN" com a restrição de localidade "RESLOCDEPTRAN" e prioridade "2"
Dado que cadastro a categoria de produto "CATPRODEPTRAN"
Dado que cadastro o calculador de tipo de serviço "CALCTIPSERVDEPTRAN" com o agrupador de zona de transporte "AZTDEPTRAN"
Dado que cadastro o calculador de frete carga "CALFRECARGADEPTRAN" com o agrupador "AZTDEPTRAN"
Dado que cadastro o calculador de frete viagem "CALFREVIAGEMDEPTRAN"
Dado que removo as configurações de entidade padrão "Transportadora"

Cenario:1 Inserir transportadora com sucesso
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora1",  Nome "Transportadora1" e Descrição "Transportadora1"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora1"

Cenario:2 Inserir transportadora sem sucesso - transportadora já cadastrada
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora2",  Nome "Transportadora2" e Descrição "Transportadora2"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora2",  Nome "Transportadora2" e Descrição "Transportadora2"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora2"

Cenario:3 Inserir transportadora sem sucesso - justificativa auto-rejeite não preenchida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "Uma justificativa deve ser especificada para caso ocorra auto-rejeite."

Cenario:3 Inserir transportadora sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario:4 Inserir transportadora sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome " " e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario:5 Inserir transportadora sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição " "
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario:6 Inserir transportadora sem sucesso - e-mail da transportadora não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora " "
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O e-mail da transportadora deve ser preenchido."

Cenario:7 Inserir transportadora sem sucesso - calculador de tipo de serviço não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço " "
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O campo de calculador de tipo de serviço está vazio."

Cenario:8 Inserir transportadora sem sucesso - agrupador não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte " " e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O agrupador da transportadora deve ser especificado."

Cenario:9 Inserir transportadora sem sucesso - grupo logístico não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico " "
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O grupo logístico da transportadora deve ser informado."

Cenario:10 Inserir transportadora sem sucesso - calculador de frete não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem " "
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "O campo de calculador de frete para viagem está vazio."

Cenario:12 Inserir transportadora sem sucesso - horário de funcionamento não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora3",  Nome "Transportadora3" e Descrição "Transportadora3"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem Sem horário de funcionamento definido.

Cenario:13 Copiar transportadora com sucesso
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora4",  Nome "Transportadora4" e Descrição "Transportadora4"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora4"
E clico no botão copiar
Quando preencho o campo Codigo "Transportadora5",  Nome "Transportadora5" e Descrição "Transportadora5"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora4"
E excluo o cadastro gerado no teste com o codigo "Transportadora5"

Cenario:14 Copiar transportadora sem sucesso - transportadora já cadastrado
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora6",  Nome "Transportadora6" e Descrição "Transportadora6"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora6"
E clico no botão copiar
Quando preencho o campo Codigo "Transportadora6",  Nome "Transportadora6" e Descrição "Transportadora6"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora6"

Cenario:15 Copiar transportadora sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora7",  Nome "Transportadora7" e Descrição "Transportadora7"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora7"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Transportadora8" e Descrição "Transportadora8"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora7"

Cenario:16 Copiar transportadora sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora8",  Nome "Transportadora8" e Descrição "Transportadora8"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora8"
E clico no botão copiar
Quando preencho o campo Codigo "Transportadora9",  Nome " " e Descrição "Transportadora8"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora8"

Cenario:17 Copiar transportadora sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora9",  Nome "Transportadora9" e Descrição "Transportadora9"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora9"
E clico no botão copiar
Quando preencho o campo Codigo "Transportadora10",  Nome "Transportadora10" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora9"


Cenario:18 Editar transportadora com sucesso
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora10",  Nome "Transportadora10" e Descrição "Transportadora10"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora10"
E clico no botão editar
Quando altero o campo  Nome "Transportadora11" e Descrição "Transportadora11"
Quando preencho as opções de visualização Responsável "Person33", E-mail do Responsável "person33@neolog.com.br" e E-mail da Transportadora "person44@neolog.com.br"
Quando preencho o Horizonte de Abertura "30"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora10"

Cenario:19 Editar transportadora com sucesso - horizonte de abertura inválido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora11",  Nome "Transportadora11" e Descrição "Transportadora11"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora11"
E clico no botão editar
Quando altero o campo  Nome "Transportadora12" e Descrição "Transportadora12"
Quando preencho as opções de visualização Responsável "Person33", E-mail do Responsável "person33@neolog.com.br" e E-mail da Transportadora "person44@neolog.com.br"
Quando preencho o Horizonte de Abertura "abc"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora11"

Cenario:20 Editar transportadora com sucesso - Máxima Distância de Dead-Head inválida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora12",  Nome "Transportadora12" e Descrição "Transportadora12"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora12"
E clico no botão editar
Quando altero o campo  Nome "Transportadora13" e Descrição "Transportadora13"
E clico na aba "Restrições Logísticas"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "abc", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora12"

Cenario:21 Editar transportadora com sucesso - Máxima Distância Total de Dead-Head inválida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora13",  Nome "Transportadora13" e Descrição "Transportadora13"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora13"
E clico no botão editar
Quando altero o campo  Nome "Transportadora14" e Descrição "Transportadora14"
E clico na aba "Restrições Logísticas"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "abc", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora13"

Cenario:22 Editar transportadora com sucesso - Número Máximo de Cargas na Viagem inválida
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora14",  Nome "Transportadora14" e Descrição "Transportadora14"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora14"
E clico no botão editar
Quando altero o campo  Nome "Transportadora15" e Descrição "Transportadora15"
E clico na aba "Restrições Logísticas"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "abc" e Valor Maximo da Viagem "14,00"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora14"

Cenario:23 Editar transportadora com sucesso - Valor Máximo da Viagem inválido
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora15",  Nome "Transportadora15" e Descrição "Transportadora15"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora15"
E clico no botão editar
Quando altero o campo  Nome "Transportadora16" e Descrição "Transportadora16"
E clico na aba "Restrições Logísticas"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "abc"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora15"

Cenario:24 Editar transportadora sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora16",  Nome "Transportadora16" e Descrição "Transportadora16"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora16"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Transportadora17"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora16"

Cenario:25 Editar transportadora sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora17",  Nome "Transportadora17" e Descrição "Transportadora17"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person2@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Transportadora17"
E clico no botão editar
Quando altero o campo  Nome "Transportadora18" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Transportadora17"

Cenario:26 Inserir transportadora sem sucesso - e-mail da transportadora preenchido incorretamente
Dado que acesso a tela "Cadastro", "Transportadoras"
E clico no botão Cadastro
Quando preencho o campo Codigo "Transportadora19",  Nome "Transportadora19" e Descrição "Transportadora19"
Quando preencho as opções de visualização Responsável "Person1", E-mail do Responsável "person1@neolog.com.br" e E-mail da Transportadora "person1@@neolog.com.br"
Quando preencho o Calculador de Tipo de Serviço "CALCTIPSERVDEPTRAN"
Quando preencho o SLA com o horario "20"
Quando preencho a justificativa de auto-rejeite
Quando preencho o Horizonte de Abertura "10"
E clico na aba "Restrições Logísticas"
Quando na visualização seleciono a Zona de Transporte "AZTDEPTRAN" e Grupo Logístico "AZTDEPTRAN"
Quando preencho as Restriçoes Maxima Distancia de DeadHead "11,00", Maxima Distancia Total de DeadHead "12,00", Numero Maximo de Cargas na Viagem "13" e Valor Maximo da Viagem "14,00"
Quando seleciono a Classificações de Carga Bloqueadas "Car. Único - Descar. Único"
Quando seleciono a Categorias de Produtos Bloqueadas "CATPRODEPTRAN"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento segunda a sexta-feira das "8" as "15"
E clico na aba "Frete"
Quando seleciono o Calculador de frete para viagem "CALFREVIAGEMDEPTRAN"
Quando seleciono a Configuração de calculador de frete "CALFRECARGADEPTRAN" para o Tipo de serviço "TIPOSERVDEPTRAN"
E clico no botão Salvar
Entao é exibido a mensagem "E-mail(s) inválido(s) do campo E-mail da Transportadora"

Cenario: Excluir dependências
Dado que excluo o tipo de serviço "TIPOSERVDEPTRAN"
Dado que excluo o calculador de frete carga "CALFRECARGADEPTRAN"
Dado que excluo o calculador de frete viagem "CALFREVIAGEMDEPTRAN"
Dado que excluo o calculador de tipo de serviço "CALCTIPSERVDEPTRAN"
Dado que excluo a zona de transporte "ZTREGDEPTRAN"
Dado que excluo o agrupador de zt "AZTDEPTRAN"
Dado que excluo a categoria de produto "CATPRODEPTRAN"