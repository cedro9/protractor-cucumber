#language:pt

@MCB
@orderWithoutScheduleUserWarning

Funcionalidade: Aviso ao usuário quando a agenda não for realizada
# https://neolog.atlassian.net/browse/MCA-41

Cenário: Cadastro de dependências
Dado que cadastro o agrupador de zt "AGRZTDEPVMAGE"
Dado que cadastro o calculador de frete viagem "CALCFRETVIAGEMVMAGE"
Dado que cadastro o calculador de tipo de serviço "CALCTIPODESERVVMAGE" com o agrupador de zona de transporte "AGRZTDEPVMAGE"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPVMAGE"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPVMAGE"
Dado que cadastro a restrição de localidade "RESTLOCDEPVMAGE"
Dado que cadastro a zona de transporte "ZONATRANSPVMAGE" do tipo região do agrupador do agrupador "AGRZTDEPVMAGE" com a restrição de localidade "RESTLOCDEPVMAGE" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPVMAGE" com a restrição de localidade "RESTLOCDEPVMAGE" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPVMAGE" com a restrição de localidade "RESTLOCDEPVMAGE" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPVMAGE"
Dado que cadastro o embarcador "EMBDEPVMAGE"
Dado que cadastro o produto "PRODDEPVMAGE" com a categoria "CATPRODDEPVMAGE" e embarcador "EMBDEPVMAGE" e classificação classe de risco "4.1"
Dado que cadastro o invólucro "INVDEPVMAGE" com politicas definidas no produto
Dado que cadastro o veículo "VEICULODEPVMAGE", com "2,5" de largura, "14,00" de comprimento e "2,80" de altura
Dado que cadastro a transportadora "TRANSDEPVMAGE" para o calculador de tipo de serviço "CALCTIPODESERVVMAGE", agrupador zona de transporte "AGRZTDEPVMAGE", grupo logístico "AGRZTDEPVMAGE" e calculador de frete viagem "CALCFRETVIAGEMVMAGE"
Dado que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora "TRANSDEPVMAGE" e tipo de produto "Itens Normais"
Dado que cadastro o pedido "PEDIDOVMAGE01" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Exige agendamento"
Dado que cadastro o pedido "PEDIDOVMAGE02" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Exige agendamento"
Dado que cadastro o pedido "PEDIDOVMAGE03" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Exige agendamento"
Dado que cadastro o pedido "PEDIDOVMAGE04" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Exige agendamento"
Dado que cadastro o pedido "PEDIDOVMAGE05" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDOVMAGE06" do embarcador "EMBDEPVMAGE" tipo de pedido "TIPOPEDIDODEPVMAGE" destino "LOCDESTDEPVMAGE" origem "LOCORIGEMDEPVMAGE" produto "PRODDEPVMAGE" item de pedido "TIPOITEMDEPVMAGE" e invólucro "INVDEPVMAGE" e classificação "Não exige agendamento"
Dado que adiciono ao contexto de otimização o pré-validador de otimização "Carga exclusiva por classificação da localidade de descarregamento e classificação de agendamento do pedido"

Cenário: Apresenta violação quando realizamos operação manual com pedido que exige agendamento que não tem agenda
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE01"
E seleciono o pedido "PEDIDOVMAGE01" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE01"
E seleciono o pedido "PEDIDOVMAGE01" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
# E clico no botão OK
Então é exibido a violação não impeditiva que contem "O pedido PEDIDOVMAGE01 exige agendamento."
Quando seleciono o pedido "PEDIDOVMAGE01" na cesta do usuário
E clico no botão Mover Todas as paginas para Geral

Cenário: Apresenta violação quando otimizamos pedido que exige agendamento que não tem agenda
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE02"
E seleciono o pedido "PEDIDOVMAGE02" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE02"
E seleciono o pedido "PEDIDOVMAGE02" na cesta do usuário
E clico no botão Otimizar
Então é exibido a violação não impeditiva que contem "O pedido PEDIDOVMAGE02 exige agendamento."
Quando seleciono o pedido "PEDIDOVMAGE02" na cesta do usuário
E clico no botão Mover Todas as paginas para Geral

Cenário: Não apresenta violação quando realizamos operação manual com pedido que exige agendamento que contém agenda
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE03"
E seleciono o pedido "PEDIDOVMAGE03" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE03"
E seleciono o pedido "PEDIDOVMAGE03" na cesta do usuário
Dado que gero uma agenda para o pedido "PEDIDOVMAGE03" com destino "LOCDESTDEPVMAGE" e contexto "MCB_DEF"
E seleciono o pedido "PEDIDOVMAGE03" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico na aba "Restrições"
E seleciono a Transportadora "TRANSDEPVMAGE"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Não apresenta violação quando otimizamos pedido que exige agendamento que contém agenda
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE04"
E seleciono o pedido "PEDIDOVMAGE04" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE04"
E seleciono o pedido "PEDIDOVMAGE04" na cesta do usuário
Dado que gero uma agenda para o pedido "PEDIDOVMAGE04" com destino "LOCDESTDEPVMAGE" e contexto "MCB_DEF"
E seleciono o pedido "PEDIDOVMAGE04" na cesta do usuário
E clico no botão Otimizar
Então é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Entao cancelo a viagem do pedido "PEDIDOVMAGE04"
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE04"
E clico no botão Mover Todas as paginas para Geral

Cenário: Não apresenta violação quando realizamos operação manual com pedido que não exige agendamento
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE05"
E seleciono o pedido "PEDIDOVMAGE05" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE05"
E seleciono o pedido "PEDIDOVMAGE05" na cesta do usuário
Dado que gero uma agenda para o pedido "PEDIDOVMAGE05" com destino "LOCDESTDEPVMAGE" e contexto "MCB_DEF"
E seleciono o pedido "PEDIDOVMAGE05" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
# E clico no botão OK
E clico no checkbox Usar restrições
E clico na aba "Restrições"
E seleciono a Transportadora "TRANSDEPVMAGE"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Não apresenta violação quando otimizamos pedido que não exige agendamento
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta geral pelo pedido "PEDIDOVMAGE06"
E seleciono o pedido "PEDIDOVMAGE06" na cesta geral
E clico em Mover seleção aqui na cesta do usuário
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE06"
E seleciono o pedido "PEDIDOVMAGE06" na cesta do usuário
Dado que gero uma agenda para o pedido "PEDIDOVMAGE06" com destino "LOCDESTDEPVMAGE" e contexto "MCB_DEF"
E seleciono o pedido "PEDIDOVMAGE06" na cesta do usuário
E clico no botão Otimizar
Então é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Entao cancelo a viagem do pedido "PEDIDOVMAGE06"
Dado filtro a cesta do usuário pelo pedido "PEDIDOVMAGE06"
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDOVMAGE01"
Dado que excluo o pedido "PEDIDOVMAGE02"
Dado que excluo o pedido "PEDIDOVMAGE03"
Dado que excluo o pedido "PEDIDOVMAGE04"
Dado que excluo o pedido "PEDIDOVMAGE05"
Dado que excluo o pedido "PEDIDOVMAGE06"
Dado que excluo o produto "PRODDEPVMAGE"
Dado que excluo o invólucro "INVDEPVMAGE"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPVMAGE"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPVMAGE"
Dado que excluo a categoria de produto "CATPRODDEPVMAGE"
Dado que excluo o embarcador "EMBDEPVMAGE"
Dado que excluo o veículo "VEICULODEPVMAGE"
Dado que excluo a zona de transporte "ZONATRANSPVMAGE"
Dado que excluo a transportadora "TRANSDEPVMAGE"
Dado que excluo o calculador de frete viagem "CALCFRETVIAGEMVMAGE"
Dado que excluo o calculador de tipo de serviço "CALCTIPODESERVVMAGE"
Dado que excluo o agrupador de zt "AGRZTDEPVMAGE"
Dado que excluo a localidade "LOCORIGEMDEPVMAGE"
Dado que excluo a localidade "LOCDESTDEPVMAGE"
Dado que excluo a restrição de localidade "RESLOCDEPFBVM"