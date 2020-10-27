#language:pt

@FluxosPartnerCollaborantionKRN

Funcionalidade: Fluxos Basicos Viagem Manual

Cenario: Cadastros de dependências
Dado que cadastro um contexto de unitização
Dado que atualizo o contexto de otimização
Dado que cadastro o tipo de pedido "TIPOPEDDEPFBVM"
Dado que cadastro o tipo de item de pedido "TIPITEDEPFBVM"
Dado que cadastro o calculador de frete viagem "CALCFRETEVIAGEMDEPFBVM"
Dado que cadastro a origem "ORIDEPFBVM" com a restrição de localidade "Padrao" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPFBVM" com a restrição de localidade "Padrao" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESDEPFBVM" com a restrição de localidade "Padrao" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPFBVM"
Dado que cadastro o embarcador "EMBDEPFBVM"
Dado que cadastro o invólucro "INVDEPFBVM" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPFBVM" com a categoria "CATPRODDEPFBVM" e embarcador "EMBDEPFBVM"
Dado que cadastro o veículo "VEICDEPFBVM", com "2,5" de largura, "12" de comprimento e "2,85" de altura
Dado que cadastro o agrupador de zt "AZTDEPFBVM"
Dado que cadastro a zona de transporte "ZTDEPFBVM" para o agrupador "AZTDEPFBVM" com a restrição de localidade "Padrao" e prioridade "15"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERDEPFBVM" com o agrupador de zona de transporte "AZTDEPFBVM"
Dado que cadastro a transportadora "TRANSDEPFBVM" para o calculador de tipo de serviço "CALCTIPOSERDEPFBVM", agrupador zona de transporte "AZTDEPFBVM", grupo logístico "AZTDEPFBVM" e calculador de frete viagem "CALCFRETEVIAGEMDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM01" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM02" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM04" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM13" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM14" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM15" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM16" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM18" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM19" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM20" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM21" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM24" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que cadastro o pedido "PEDIDOFBVM25" do embarcador "EMBDEPFBVM" tipo de pedido "TIPOPEDDEPFBVM" destino "DESTDEPFBVM" origem "ORIDEPFBVM" produto "PRODDEPFBVM" item de pedido "TIPITEDEPFBVM" e invólucro "INVDEPFBVM" e Hub de destino "HUBDESDEPFBVM"
Dado que preencho o parâmetro genérico Transportadoras permitidas por origem e localidade ou zt com a origem "ORIDEPFBVM" e transportadora "TRANSDEPFBVM"
Dado que preencho o parâmetro genérico Veículos proibidos por transportadora deixando apenas o veículo "VEICDEPFBVM" liberado para a transportadora "TRANSDEPFBVM"
Dado que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro "INVDEPFBVM" e o contexto "MCB_GRANEL"

Cenario: Viagens geradas sem quebra
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM01"
Quando seleciono o pedido "PEDIDOFBVM01" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM01"
Quando seleciono o pedido "PEDIDOFBVM01" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM01"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM01" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM01"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM01"
Quando seleciono o pedido "PEDIDOFBVM01" na cesta do usuário
E clico no botão "Mover todas as páginas para a geral"

Cenario: Selecionando os dados especificadamente (com restrições)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM13"
Quando seleciono o pedido "PEDIDOFBVM13" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM13"
Quando seleciono o pedido "PEDIDOFBVM13" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico na aba "Restrições"
Quando seleciono o Tipo de serviço "1"
Quando seleciono o Veículo "VEICDEPFBVM"
Quando seleciono a Transportadora "TRANSDEPFBVM"
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM13"
Quando expando o header da viagem
Entao verifico o veículo da viagem "VEICDEPFBVM"
Entao verifico a transportadora da viagem "TRANSDEPFBVM"
Entao verifico o tipo de serviço da carga "FTL - Lotação Carga fechada"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM13"
Quando seleciono a viagem
Entao cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM13"
E clico no botão "Mover todas as páginas para a geral"

Cenario: De/Para Cesta>Viagem Existente
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM14"
Quando seleciono o pedido "PEDIDOFBVM14" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM14"
Quando seleciono o pedido "PEDIDOFBVM14" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM02"
Quando seleciono o pedido "PEDIDOFBVM02" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM02"
Quando seleciono o pedido "PEDIDOFBVM02" na cesta do usuário
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM14"
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM14"
Quando seleciono a viagem
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM02" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM14"
Quando seleciono a viagem
Entao cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM02,PEDIDOFBVM14"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta : Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM15,PEDIDOFBVM16"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM15,PEDIDOFBVM16"
Quando seleciono o pedido "PEDIDOFBVM15" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVM16" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM15,PEDIDOFBVM16"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "PEDIDOFBVM15" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM16" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM16"
Quando seleciono a viagem
Entao cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM15,PEDIDOFBVM16"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM18"
Quando seleciono o pedido "PEDIDOFBVM18" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM18"
Quando seleciono o pedido "PEDIDOFBVM18" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM18"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM18" está presente na viagem
Quando seleciono o pedido "PEDIDOFBVM18" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM19,PEDIDOFBVM20,PEDIDOFBVM21"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM19,PEDIDOFBVM20,PEDIDOFBVM21"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVM19" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOFBVM20" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVM21" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM21"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM21" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM19,PEDIDOFBVM20,PEDIDOFBVM21"
E clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "PEDIDOFBVM21" na carga
E clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM21"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM21" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM19,PEDIDOFBVM20,PEDIDOFBVM21"
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM24,PEDIDOFBVM25"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM24,PEDIDOFBVM25"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVM24" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOFBVM25" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVM24,PEDIDOFBVM25"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM25" está presente na viagem
Quando seleciono o pedido "PEDIDOFBVM25" na carga
Quando clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVM25" está presente na viagem
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM24,PEDIDOFBVM25"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Otimização manual: Otimização simples com uma unica UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVM04"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM04"
E clico no botão Otimizar todas as páginas
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Entao cancelo a viagem do pedido "PEDIDOFBVM04"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVM04"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Excluir dependências
Dado que excluo o pedido "PEDIDOFBVM01"
Dado que excluo o pedido "PEDIDOFBVM02"
Dado que excluo o pedido "PEDIDOFBVM04"
Dado que excluo o pedido "PEDIDOFBVM13"
Dado que excluo o pedido "PEDIDOFBVM14"
Dado que excluo o pedido "PEDIDOFBVM15"
Dado que excluo o pedido "PEDIDOFBVM16"
Dado que excluo o pedido "PEDIDOFBVM18"
Dado que excluo o pedido "PEDIDOFBVM19"
Dado que excluo o pedido "PEDIDOFBVM20"
Dado que excluo o pedido "PEDIDOFBVM21"
Dado que excluo o pedido "PEDIDOFBVM24"
Dado que excluo o pedido "PEDIDOFBVM25"
Dado que excluo o produto "PRODDEPFBVM"
Dado que excluo o invólucro "INVDEPFBVM"
Dado que excluo o tipo de pedido "TIPOPEDDEPFBVM"
Dado que excluo o tipo de item de pedido "TIPITEDEPFBVM"
Dado que excluo a categoria de produto "CATPRODDEPFBVM"
Dado que excluo o embarcador "EMBDEPFBVM"
Dado que excluo o veículo "VEICDEPFBVM"
Dado que excluo a zona de transporte "ZTDEPFBVM"
Dado que excluo a transportadora "TRANSDEPFBVM"
Dado que excluo o calculador de frete viagem "CALCFRETEVIAGEMDEPFBVM"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERDEPFBVM"
Dado que excluo o agrupador de zt "AZTDEPFBVM"
Dado que excluo a localidade "ORIDEPFBVM"
Dado que excluo a localidade "DESTDEPFBVM"
Dado que excluo a localidade "HUBDESDEPFBVM"
Dado que excluo a restrição de localidade "RESLOCDEPFBVM"