#language:pt

@SEB
@AgendamentoSEB

Funcionalidade: Agendamento SEB
# Pendente de automação:
# Obs: Antes da execução, verificar se esta habilitado o botao Sugerir Agenda e Sugerir Agenda em Massa em Perfis/Permissões CPL/Administrador/Programação/Análise/Botões

Cenario: Cadastrar de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPAGESEB"
Dado que cadastro o tipo de item de pedido "TIPITEDEPAGESEB"
Dado que cadastro a restrição de localidade "RESLOCDEPAGESEB"
Dado que cadastro a origem "ORIDEPAGESEB" com a restrição de localidade "RESLOCDEPAGESEB" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPAGESEB" com a restrição de localidade "RESLOCDEPAGESEB" e Cep "76820-408"
Dado que cadastro a origem "ORIDEPAGESEB2" com a restrição de localidade "RESLOCDEPAGESEB" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPAGESEB2" com a restrição de localidade "RESLOCDEPAGESEB" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESDEPAGESEB" com a restrição de localidade "RESLOCDEPAGESEB" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPAGESEB"
Dado que cadastro o embarcador "EMBDEPAGESB"
Dado que cadastro o invólucro "INVDEPAGESEB" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPAGESEB" com a categoria "CATPRODDEPAGESEB" e embarcador "EMBDEPAGESB"
Dado que cadastro o produto "PRODDEPAGESEB02" com a categoria "CATPRODDEPAGESEB" e embarcador "EMBDEPAGESB"
Dado que cadastro o pedido "PEDIDOAGESEB01" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB01" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB02" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB2" origem "ORIDEPAGESEB2" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB02" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB03" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB01" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB13" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB13" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB14" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB2" origem "ORIDEPAGESEB2" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB17" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB2" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB19" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB" e invólucro "INVDEPAGESEB" e classificação " "
Dado que cadastro o pedido "PEDIDOAGESEB20" do embarcador "EMBDEPAGESB" tipo de pedido "TIPOPEDDEPAGESEB" destino "DESTDEPAGESEB" origem "ORIDEPAGESEB" produto "PRODDEPAGESEB" item de pedido "TIPITEDEPAGESEB" e invólucro "INVDEPAGESEB" e classificação " "
Dado que gero a agenda para o pedido "PEDIDOAGESEB01" com destino "DESTDEPAGESEB"
Dado que gero a agenda para o pedido "PEDIDOAGESEB02" com destino "DESTDEPAGESEB2"
Dado que gero a agenda para o pedido "PEDIDOAGESEB03" com destino "DESTDEPAGESEB"
Dado que gero a agenda para o pedido "PEDIDOAGESEB13" com destino "DESTDEPAGESEB"
Dado que gero a agenda para o pedido "PEDIDOAGESEB14" com destino "DESTDEPAGESEB2"
Dado que gero a agenda para o pedido "PEDIDOAGESEB20" com destino "DESTDEPAGESEB"

Cenário: Agendar em massa com pedidos CIF: verificar se as informações de Data de Agendamento foram salvas corretamente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Viagens
Quando altero a visão para Agenda
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB13"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
E preencho na primeira linha os campos Data de Agendamento "31/05/2019" e Data de Expedição "30/05/2019"
E clico no botão de preenchimento automatico de Data de Expedição
E clico no botão de preenchimento automatico de Data de Agendamento
Quando clico em selecionar todas as agendas
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Entao verifico se a data e hora da agenda é "31/05/19 00:00"

Cenário: Agendar em massa com pedidos CIF: verificar se as informações de Data de Expedição foram salvas corretamente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Viagens
Quando altero a visão para Agenda
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB14"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
E preencho na primeira linha os campos Data de Agendamento "31/05/2019" e Data de Expedição "30/05/2019"
E clico no botão de preenchimento automatico de Data de Expedição
E clico no botão de preenchimento automatico de Data de Agendamento
Quando clico em selecionar todas as agendas
Quando clico no botão salvar e uso o contexto de otimização padrão
E na mensagem "Violações" clico no botão "Salvar"
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB14"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
Entao verifico se a data da expedição é "30/05/2019"
E clico no botão "Fechar"

Cenário: Agendar em massa com pedidos CIF: verificar se as duas localidades de destinos são exibidas corretamente
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Viagens
Quando altero a visão para Agenda
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB01,PEDIDOAGESEB02"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
Entao deve exibir dois destinos dos pedidos - o "DESTDEPAGESEB - DESTDEPAGESEB" e o "DESTDEPAGESEB2 - DESTDEPAGESEB2"
E clico no botão "Fechar"

Cenário:Agendar em massa com pedidos CIF : Data de entrega deve ser maior que a data de expedição
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Viagens
Quando altero a visão para Agenda
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB20"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
E preencho na primeira linha os campos Data de Agendamento "31/05/2019" e Data de Expedição "30/05/2020"
E clico no botão de preenchimento automatico de Data de Expedição
E clico no botão de preenchimento automatico de Data de Agendamento
Quando clico em selecionar todas as agendas
E clico no botão "Sugerir Agenda"
Então o sistema deve exibir a violação de agenda "Data de entrega deve ser maior que a data de expedição"
E clico no botão "OK"
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenário:Fluxo de Agendar padrão com pedidos CIF : Validar data de expedição no passado
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGESEB19"
Quando seleciono o pedido "PEDIDOAGESEB19" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB19"
Quando seleciono o pedido "PEDIDOAGESEB19" na cesta do usuário
E clico no botão Agendar
Quando clico no checkbox "Descarregamento"
Quando seleciono o destino "DESTDEPAGESEB"
E preencho a Data de Expedição "27/05/2019" "11" horas e "30" minutos
E seleciono todas as Uts
E clico no botão " Sugerir Agenda "
Então o sistema deve exibir a violação "O início da tarefa na localidade"" ORIDEPAGESEB - ORIDEPAGESEB"" é menor que hoje"
E clico no botão Cancelar na modal Sugestão de Agenda
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenário:Fluxo de Agendar padrão com pedidos CIF | Validar data de agendamento no passado
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOAGESEB17"
Quando seleciono o pedido "PEDIDOAGESEB17" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB17"
Quando seleciono o pedido "PEDIDOAGESEB17" na cesta do usuário
E clico no botão Agendar
Quando clico no checkbox "Descarregamento"
Quando seleciono o destino "DESTDEPAGESEB"
E preencho Data de Agendamento "28/05/2019" "12" horas e "00" minutos
E seleciono todas as Uts
E clico no botão " Calcular Expedição "
Então o sistema deve exibir a violação "O início da tarefa na localidade"" DESTDEPAGESEB - DESTDEPAGESEB"" é menor que hoje"
E clico no botão Cancelar na modal Sugestão de Agenda
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenário:SEBUPG-148 3 | Validar data de expedição no passado no modal de Agendamento em Massa
Dado que acesso a tela "Programação", "Análise"
Quando clico no botão Cesta geral
Quando clico no botão Viagens
Quando altero a visão para Agenda
Quando filtro a cesta do usuário pelo pedido "PEDIDOAGESEB03"
E clico em selecionar pedidos na cesta do usuario
E clico agendar em massa
E preencho na primeira linha os campos Data de Agendamento " " e Data de Expedição "30/05/2019"
E clico no botão de preenchimento automatico de Data de Expedição
E clico no botão de preenchimento automatico de Data de Agendamento
Quando clico em selecionar todas as agendas
E clico no botão "Sugerir Agenda"
Então o sistema deve exibir a violação "O início da tarefa na localidade"" ORIDEPAGESEB - ORIDEPAGESEB"" é menor que hoje"
E clico no botão "Prosseguir"
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Excluir dependências
Dado que excluo o pedido "PEDIDOAGESEB01"
Dado que excluo o pedido "PEDIDOAGESEB02"
Dado que excluo o pedido "PEDIDOAGESEB03"
Dado que excluo o pedido "PEDIDOAGESEB13"
Dado que excluo o pedido "PEDIDOAGESEB14"
Dado que excluo o pedido "PEDIDOAGESEB17"
Dado que excluo o pedido "PEDIDOAGESEB19"
Dado que excluo o pedido "PEDIDOAGESEB20"
Dado que excluo o produto "PRODDEPAGESEB"
Dado que excluo o produto "PRODDEPAGESEB02"
Dado que excluo o invólucro "INVDEPAGESEB"
Dado que excluo o embarcador "EMBDEPAGESB"
Dado que excluo a categoria de produto "CATPRODDEPAGESEB"
Dado que excluo a localidade "ORIDEPAGESEB"
Dado que excluo a localidade "ORIDEPAGESEB2"
Dado que excluo a localidade "DESTDEPAGESEB"
Dado que excluo a localidade "DESTDEPAGESEB2"
Dado que excluo a localidade "HUBDESDEPAGESEB"
Dado que excluo a restrição de localidade "RESLOCDEPAGESEB"
Dado que excluo o tipo de item de pedido "TIPITEDEPAGESEB"
Dado que excluo o tipo de pedido "TIPOPEDDEPAGESEB"