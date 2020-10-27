#language:pt
@Cadastro
@RestricaoDeLocalidade
Funcionalidade: Cadastro de Restrição de localidade



Cenario: Cadastro de dependências
Dado que cadastro a categoria de produto "CATPRODEPRESLOC01"
Dado que cadastro a categoria de produto "CATPRODEPRESLOC02"
Dado que cadastro a categoria de produto "CATPRODEPRESLOC03"
Dado que cadastro o veículo "VEIDEPRESLOC", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro a restrição de localidade "RESLOCDEPRESLOC"
Dado que cadastro a restrição de localidade "RESLOCDEPRESLOC2"
Dado que cadastro a restrição de localidade "RESLOCDEPRESLOC3"
Dado que cadastro a restrição de localidade "RESLOCDEPRESLOC4"
Dado que cadastro o agrupador de zt "AZTDEPRESLOC"
Dado que cadastro a restrição de localidade "RESLOCDEPRESLOC"
Dado que cadastro a zona de transporte "ZTDEPRESLOC" com a cidade "São Paulo" do agrupador "AZTDEPRESLOC" com a restrição de localidade "RESLOCDEPRESLOC" e prioridade "10000"
Dado que cadastro a origem "LOCDEPRESLOC1" com a restrição de localidade "RESLOCDEPRESLOC3" e Cep "76820-408"
Dado que cadastro o hub de passagem "HUBPASDEPRESLOC1" com a restrição de localidade "RESLOCDEPRESLOC3" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESTDEPRESLOC" com a restrição de localidade "RESLOCDEPRESLOC3" e Cep "76820-408"


Cenario: Inserir uma restrição de localidade completa
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste01",  Nome "Teste01" e Descrição "Teste01"
Quando clico em todos os checkboxes
Quando clico no checkbox Compatibilidade
E clico no botão Pesquisar
Quando seleciono a Restrição de localidade incompativel "RESLOCDEPRESLOC"
E clico na aba "Restrições logísticas"
Quando preencho o campo Volume minimo "1,000" e Volume máximo "100,000"
Quando preencho o campo Peso minimo "100,0" e Peso máximo "50000,0"
Quando preencho o campo Limites para quantidades da categoria de invólucro "Granel" com mínimo "5" e máximo "10000"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento padrão
Quando preencho a exceção de "Não-Funcionamento" dia "26/12/2019" das "00" : "00" as "19" : "00" em função "Feriado"
E clico na aba "Custos"
Quando preencho o custo de carregamento mínimo "30", máximo "200" e fixo "50"
Quando preencho o custo de descarregamento mínimo "30", máximo "200" e fixo "50"
Quando preencho o carregamento com categoria de invólucro "Granel", grandeza "Volume" e variável "10"
Quando preencho o descarregamento com categoria de invólucro "Palete", grandeza "Volume" e variável "10"
E clico na aba "Monitoramento"
Quando preencho o tempo para considerarmos uma viagem atrasada ou adiantada "01" dia, "01" hora, "59" minutos, "59" segundos e "999" milesundos
Quando clico no checkbox Atualizar tempo de descarga automaticamente
E clico na aba "Restrição de categoria de produto"
Quando seleciono a Categorias de Produtos Bloqueadas em restrições de localidade "CATPRODEPRESLOC01"
Quando preencho o valor máximo da Categoria de Produtos "CATPRODEPRESLOC02" em "30000"
Quando preencho o valor máximo da Categoria de Produtos "CATPRODEPRESLOC03" em "15000" e incompatibilizo a categoria "CATPRODEPRESLOC02"
E clico na aba "Restrição de categoria de Invólucro"
Quando seleciono a Categoria de invólucro "Bobina" como restrita
Quando seleciono a Categoria de invólucro "Palete" como restrita
Quando seleciono a Categoria de invólucro "Tubo" e incompatibilico com "Fardo"
Quando seleciono as Orientações Permitidas para o invólucro "Granel"
E clico na aba "Restrições de veículo"
Quando preencho a Velocidade média "40" 
Quando preencho Valor máximo da carga "20000,00"
E clico na aba "Restrições de Hubs"
Quando desbloqueio o Hub de destino "HUBDESTDEPRESLOC"
Quando desbloqueio o Hub de passagem "HUBPASDEPRESLOC1"
E clico na aba "Restrição de carregamento/descarregamento"
Quando preencho Distância máxima para carregamento ou descarregamento "300"
Quando seleciono Tipo de carregamento ou descarregamento não permitidos "Chão para cima"
Quando preencho Altura máxima de carregamento ou descarregamento da categoria "Granel" com "1,15"
E clico na aba "Restrição de categoria de produto por veículo"
Quando seleciono o veículo "VEIDEPRESLOC" e categoria "CATPRODEPRESLOC03" e limito a altura em "1,95"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste01"

Cenario: Inserir restrição de localidade com sucesso sucesso - dois horários de funcionamento no mesmo dia
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste02",  Nome "Teste02" e Descrição "Teste02"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento com intervalo
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste02"

Cenario:: Inserir uma restrição de localidade sem sucesso - código já cadastrado
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste03",  Nome "Teste03" e Descrição "Teste03"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste03",  Nome "Teste03" e Descrição "Teste03"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem Já existe uma entidade com o código informado.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste03"

Cenario: Inserir restrição de localidade sem sucesso - sem código
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Teste04" e Descrição "Teste04"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.

Cenario: Inserir restrição de localidade sem sucesso - sem nome
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste05",  Nome " " e Descrição "Teste05"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.

Cenario: Inserir restrição de localidade sem sucesso - sem descrição
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste06",  Nome "Teste06" e Descrição " "
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.

Cenario: Inserir restrição de localidade sem sucesso - sem calculador de tempo de serviço
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste07",  Nome "Teste07" e Descrição "Teste07"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
E clico no botão Salvar
Entao é exibido a mensagem Especificar o calculador de duração de carregamento e descarregamento.

Cenario: Inserir restrição de localidade sem sucesso - sem hora de funcionamento
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste08",  Nome "Teste08" e Descrição "Teste08"
Quando clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando removo o horário de funcionamento
E clico no botão Salvar
Entao é exibido a mensagem Sem horário de funcionamento definido.

Cenario: Inserir restrição de localidade sem sucesso - Horário de funcionamento sobreposto
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste09",  Nome "Teste09" e Descrição "Teste09"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento com sobreposição
E clico no botão Salvar
Entao é exibido a mensagem Há sobreposição de horários de funcionamento.

Cenario: Inserir restrição de localidade sem sucesso - horário inicial maior que o final
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste10",  Nome "Teste10" e Descrição "Teste10"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento com horario inicial maior que o final
E clico no botão Salvar
Entao é exibido a mensagem Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.

Cenario: Inserir restrição de localidade sem sucesso - horário de exceção sobrepoe o horário de funcionamento
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste11",  Nome "Teste11" e Descrição "Teste11"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho a exceção de "Funcionamento" dia "26/12/2019" das "00" : "00" as "19" : "00" em função "Feriado"
E clico no botão Salvar
Entao é exibido a mensagem Os horários de exceção de funcionamento são inválidos existe sobreposição de horários.

Cenario: Inserir restrição de localidade sem sucesso - horário de exceção sobrepoe o horário de não funcionamento
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste12",  Nome "Teste12" e Descrição "Teste12"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento padrão
Quando preencho a exceção de "Não-Funcionamento" dia "26/12/2019" das "22" : "30" as "23" : "30" em função "Feriado"
E clico no botão Salvar
Entao é exibido a mensagem Os horários de exceção de não funcionamento são inválidos existe sobreposição de horários.

Cenario: Inserir restrição de localidade sem sucesso - horário inicial maior que o final em exceções
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste13",  Nome "Teste13" e Descrição "Teste13"
E clico na aba "Funcionamento"
Quando preencho o horario de funcionamento com intervalo
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho a exceção de "Funcionamento" dia "16/02/2019" das "23" : "30" as "22" : "30" em função "Feriado"
E clico no botão Salvar
Entao é exibido a mensagem Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.


Cenario: Copiar Restrição de Localidade com sucesso
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste14",  Nome "Teste14" e Descrição "Teste14"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste14"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste14",  Nome "Copy-Teste14" e Descrição "Copy-Teste14"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Copy-Teste14"
E excluo o cadastro gerado no teste com o codigo "Teste14"

Cenario: Copiar restrição de localidade sem sucesso - restrição de localidade já cadastrada
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste15",  Nome "Teste15" e Descrição "Teste15"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste15"
E clico no botão copiar
Quando preencho o campo Codigo "Teste15",  Nome "Teste15" e Descrição "Teste15"
E clico no botão Salvar
Entao é exibido a mensagem Já existe uma entidade com o código informado.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste15"

Cenario: Copiar restrição de localidade sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste16",  Nome "Teste16" e Descrição "Teste16"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste16"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Teste16" e Descrição "Teste16"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste16"

Cenario: Copiar restrição de localidade sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste17",  Nome "Teste17" e Descrição "Teste17"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste17"
E clico no botão copiar
Quando preencho o campo Codigo "Teste17",  Nome " " e Descrição "Teste17"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste17"

Cenario: Copiar restrição de localidade sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste18",  Nome "Teste18" e Descrição "Teste18"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste18"
E clico no botão copiar
Quando preencho o campo Codigo "Teste18",  Nome "Teste18" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste18"

Cenario: Copiar restrição de localidade sem sucesso - script de calculador de duração de serviço não preenchido
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste19",  Nome "Teste19" e Descrição "Teste19"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste19"
E clico no botão copiar
Quando preencho o campo Codigo "Teste19",  Nome "Teste19" e Descrição "Teste19"
E clico na aba "Funcionamento"
Quando removo a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem Especificar o calculador de duração de carregamento e descarregamento.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste19"

Cenario: Copiar restrição de localidade sem sucesso - horário de funcionamento não preenchido
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste20",  Nome "Teste20" e Descrição "Teste20"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste20"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste20",  Nome "Copy-Teste20" e Descrição "Copy-Teste20"
E clico na aba "Funcionamento"
Quando apago o horario de funcionamento
E clico no botão Salvar
Entao e exibido a mensagem Sem horário de funcionamento definido.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste20"

Cenario: Editar restrição de localidade com sucesso - todos os campos
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste21",  Nome "Teste21" e Descrição "Teste21"
Quando clico em todos os checkboxes
Quando clico no checkbox Compatibilidade
E clico no botão Pesquisar
Quando seleciono a Restrição de localidade incompativel "RESLOCDEPRESLOC"
E clico na aba "Restrições logísticas"
Quando preencho o campo Volume minimo "1,000" e Volume máximo "100,000"
Quando preencho o campo Peso minimo "100,0" e Peso máximo "50000,0"
Quando preencho o campo Limites para quantidades da categoria de invólucro "Granel" com mínimo "5" e máximo "10000"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento padrão
Quando preencho a exceção de "Não-Funcionamento" dia "26/12/2019" das "00" : "00" as "19" : "00" em função "Feriado"
E clico na aba "Custos"
Quando preencho o custo de carregamento mínimo "30", máximo "200" e fixo "50"
Quando preencho o custo de descarregamento mínimo "30", máximo "200" e fixo "50"
Quando preencho o carregamento com categoria de invólucro "Granel", grandeza "Volume" e variável "10"
Quando preencho o descarregamento com categoria de invólucro "Palete", grandeza "Volume" e variável "10"
E clico na aba "Monitoramento"
Quando preencho o tempo para considerarmos uma viagem atrasada ou adiantada "01" dia, "01" hora, "59" minutos, "59" segundos e "999" milesundos
Quando clico no checkbox Atualizar tempo de descarga automaticamente
E clico na aba "Restrição de categoria de produto"
Quando seleciono a Categorias de Produtos Bloqueadas em restrições de localidade "CATPRODEPRESLOC01"
Quando preencho o valor máximo da Categoria de Produtos "CATPRODEPRESLOC02" em "30000"
Quando preencho o valor máximo da Categoria de Produtos "CATPRODEPRESLOC03" em "15000" e incompatibilizo a categoria "CATPRODEPRESLOC02"
E clico na aba "Restrição de categoria de Invólucro"
Quando seleciono a Categoria de invólucro "Bobina" como restrita
Quando seleciono a Categoria de invólucro "Palete" como restrita
Quando seleciono a Categoria de invólucro "Tubo" e incompatibilico com "Fardo"
Quando seleciono as Orientações Permitidas para o invólucro "Granel"
E clico na aba "Restrições de veículo"
Quando preencho a Velocidade média "40" 
Quando preencho Valor máximo da carga "20000,00"
E clico na aba "Restrições de Hubs"
Quando desbloqueio o Hub de destino "HUBDESTDEPRESLOC"
Quando desbloqueio o Hub de passagem "HUBPASDEPRESLOC1"
E clico na aba "Restrição de carregamento/descarregamento"
Quando preencho Distância máxima para carregamento ou descarregamento "300"
Quando seleciono Tipo de carregamento ou descarregamento não permitidos "Chão para cima"
Quando preencho Altura máxima de carregamento ou descarregamento da categoria "Granel" com "1,15"
E clico na aba "Restrição de categoria de produto por veículo"
Quando seleciono o veículo "VEIDEPRESLOC" e categoria "CATPRODEPRESLOC03" e limito a altura em "1,95"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste21"
E clico no botão editar
Quando altero o campo  Nome "Edit-Teste21" e Descrição "Edit-Teste21"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste21"


Cenario: Editar restrição de localidade sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste22",  Nome "Teste22" e Descrição "Teste22"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste22"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Teste22"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste22"

Cenario: Editar restrição de localidade sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste23",  Nome "Teste23" e Descrição "Teste23"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste23"
E clico no botão editar
Quando altero o campo  Nome "Teste23" e Descrição " "
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste23"

Cenario: Editar restrição de localidade sem sucesso - apagar a script de calculdor de duração de carregamento/descarregamento
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste24",  Nome "Teste24" e Descrição "Teste24"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste24"
E clico no botão editar
E clico na aba "Funcionamento"
Quando removo a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem Especificar o calculador de duração de carregamento e descarregamento.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste24"

Cenario: Editar restrição de localidade sem sucesso - apagar horários de funcionamento
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste25",  Nome "Teste25" e Descrição "Teste25"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste25"
E clico no botão editar
E clico na aba "Funcionamento"
Quando apago o horario de funcionamento
E clico no botão Salvar
Entao e exibido a mensagem Sem horário de funcionamento definido.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste25"

Cenario: Editar restrição de localidade sem sucesso - apagar categoria de invólucro (restrições logísticas)
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste26",  Nome "Teste26" e Descrição "Teste26"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico na aba "Restrições logísticas"
Quando preencho o campo Limites para quantidades da categoria de invólucro "Granel" com mínimo "5" e máximo "10000"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste26"
E clico no botão editar
E clico na aba "Restrições logísticas"
Quando removo a Categoria de Invólucro "Granel"
E clico no botão Salvar
Entao é exibido Quantidade de categoria de invólucro não deve possuir propiedades vazias
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste26"

Cenario: Editar restrição de localidade sem sucesso - apagar dia da semana
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste27",  Nome "Teste27" e Descrição "Teste27"
E clico na aba "Funcionamento"
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
Quando preencho o horario de funcionamento padrão
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste27"
E clico no botão editar
E clico na aba "Funcionamento"
Quando removo o dia da Semana "Segunda-Feira"
E clico no botão Salvar
Entao e exibido a mensagem Os dados de funcionamento para horários permitidos informados não podem ser vazios.
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste27"

Cenario: Editar restrição de localidade sem sucesso - apagar categoria de invólucro (custos/carregamento)
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste28",  Nome "Teste28" e Descrição "Teste28"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico na aba "Custos"
Quando preencho o carregamento com categoria de invólucro "Granel", grandeza "Volume" e variável "10"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste28"
E clico no botão editar
E clico na aba "Custos"
Quando removo a Categoria de Invólucro "Granel"
E clico no botão Salvar
Entao é exibido a mensagem A categoria de invólucro deve ser preenchida
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste28"

Cenario: Editar restrição de localidade sem sucesso - apagar categoria de invólucro (custos/descarregamento)
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste29",  Nome "Teste29" e Descrição "Teste29"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico na aba "Custos"
Quando preencho o descarregamento com categoria de invólucro "Palete", grandeza "Volume" e variável "10"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste29"
E clico no botão editar
E clico na aba "Custos"
Quando removo a Categoria de Invólucro "Palete"
E clico no botão Salvar
Entao é exibido a mensagem A categoria de invólucro deve ser preenchida
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste29"

Cenario: Editar restrição de localidade sem sucesso - apagar categoria de invólucro (restrições de carregamento/descarregamento)
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste30",  Nome "Teste30" e Descrição "Teste30"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico na aba "Restrição de carregamento/descarregamento"
Quando preencho Altura máxima de carregamento ou descarregamento da categoria "Granel" com "1,15"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste30"
E clico no botão editar
E clico na aba "Restrição de carregamento/descarregamento"
Quando removo a Categoria de Invólucro "Granel"
E clico no botão Salvar
Entao é exibido a mensagem Altura máxima por categoria de invólucro não deve possuir propriedades vazias
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste30"

Cenario: Editar restrição de localidade sem sucesso - volume mínimo maior que máximo em restrições lógisticas
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste31",  Nome "Teste31" e Descrição "Teste31"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste31"
E clico no botão editar
E clico na aba "Restrições logísticas"
Quando preencho o campo Volume minimo "100,000" e Volume máximo "10,000"
E clico no botão Salvar
Entao é exibido a mensagem Volume mínimo da carga é maior que o volume máximo
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste31"

Cenario: Editar restrição de localidade com sucesso - peso mínimo maior que máximo em restrições lógisticas
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste32",  Nome "Teste32" e Descrição "Teste32"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste32"
E clico no botão editar
E clico na aba "Restrições logísticas"
Quando preencho o campo Peso minimo "100,0" e Peso máximo "50,0"
E clico no botão Salvar
Entao é exibido a mensagem Peso mínimo da carga é maior que o peso máximo
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste32"

Cenario: Editar restrição de localidade sem sucesso - quantidades mínima maior que máxima em restrições lógisticas
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste33",  Nome "Teste33" e Descrição "Teste33"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste33"
E clico no botão editar
E clico na aba "Restrições logísticas"
Quando preencho o campo Limites para quantidades da categoria de invólucro "Granel" com mínimo "15" e máximo "10"
E clico no botão Salvar
Entao é exibido a mensagem Quantidade de categoria de invólucro não deve possuir valores mínimos maiores que os valores máximos
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste33"

Cenario: Editar restrição de localidade sem sucesso - mínimo de carregamento deve dar erro ser for maior que máximo
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste34",  Nome "Teste34" e Descrição "Teste34"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste34"
E clico no botão editar
E clico na aba "Custos"
Quando preencho o custo de carregamento mínimo "100", máximo "20" e fixo "150"
E clico no botão Salvar
Entao é exibido a mensagem Custo mínimo de carregamento é maior que o custo máximo
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste34"

Cenario: Editar restrição de localidade sem sucesso - mínimo de descarregamento deve dar erro ser for maior que máximo
Dado que acesso a tela "Cadastro", "Restrições de localidade"
E clico no botão Cadastro
Quando preencho o campo Codigo "Teste35",  Nome "Teste35" e Descrição "Teste35"
E clico na aba "Funcionamento"
E preencho o horario de funcionamento padrão
Quando preencho a Taxa de carregamento com o script "Calculador de duração de serviço linear (Localidade)"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Teste35"
E clico no botão editar
E clico na aba "Custos"
Quando preencho o custo de descarregamento mínimo "100", máximo "20" e fixo "150"
E clico no botão Salvar
Entao é exibido a mensagem Custo mínimo de descarregamento é maior que o custo máximo
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Teste35"

Cenario: Excluir restrição de localidade sem sucesso - dependência com zona de transporte
Dado que acesso a tela "Cadastro", "Zonas de transporte"
Quando realizo o filtro com o codigo "ZTDEPRESLOC"
E clico no botão editar
Quando altero a restrição geral "RESLOCDEPRESLOC2"
E clico no botão Salvar
E clico no botão OK
Dado que acesso a tela "Cadastro", "Restrições de localidade"
Quando realizo o filtro com o codigo "RESLOCDEPRESLOC2"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "A restrição de localidade não pode ser deletada pois está associada a uma zona de transporte"

Cenario: Excluir restrição de localidade sem sucesso - dependência com localidade
Dado que acesso a tela "Cadastro", "Restrições de localidade"
Quando realizo o filtro com o codigo "RESLOCDEPRESLOC3"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "A restrição de localidade não pode ser deletada pois está sendo usada por uma ou mais localidades."

@bug
Cenario: Excluir restrição de localidade sem sucesso - dependência com configuração/restrição de localidade - BUG GTF334
Dado que acesso a tela "Configuração", "Restrições de localidade"
E preencho a Restrição padrão "RESLOCDEPRESLOC4"
E clico na aba "Funcionamento"
E altero o horário de funcionamento do sabado e domingo
E clico no botão Salvar
E clico no botão OK
Dado que acesso a tela "Cadastro", "Restrições de localidade"
Quando realizo o filtro com o codigo "RESLOCDEPRESLOC4"
E clico no botão Excluir e confirmo
Então é exibido a mensagem "A Entidade não pode ser removida pois está em uso por outras entidades."
E clico no botão OK
Dado que acesso a tela "Configuração", "Restrições de localidade"
E preencho a Restrição padrão com a default
E clico no botão Salvar
Entao é exibido a mensagem "Edição feita com sucesso"


Cenario: Excluir dependências
Dado que excluo o veículo "VEIDEPRESLOC"
Dado que excluo a zona de transporte "ZTDEPRESLOC"
Dado que excluo o agrupador de zt "AZTDEPRESLOC"
Dado que excluo a localidade "HUBPASDEPRESLOC1"
Dado que excluo a localidade "HUBDESTDEPRESLOC"
Dado que excluo a localidade "LOCDEPRESLOC1"
Dado que excluo a restrição de localidade "RESLOCDEPRESLOC"
Dado que excluo a restrição de localidade "RESLOCDEPRESLOC2"
Dado que excluo a restrição de localidade "RESLOCDEPRESLOC3"
Dado que excluo a restrição de localidade "RESLOCDEPRESLOC4"
Dado que excluo a categoria de produto "CATPRODEPRESLOC01"
Dado que excluo a categoria de produto "CATPRODEPRESLOC02"
Dado que excluo a categoria de produto "CATPRODEPRESLOC03"