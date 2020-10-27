#language:pt

@MCB
@carrierTenderingResponseLimit

Funcionalidade: Configuração de tempo para resposta da transportadora no PC
# https://neolog.atlassian.net/browse/MCA-92

Cenário: Cadastro de dependências
Dado que cadastro a justificativa de rejeite "Automação teste de rejeite de oferta"
Dado que cadastro o agrupador de zt "AGRZONTRADEPCTRL"
Dado que cadastro o calculador de frete viagem "CALFREVIADEPCTRL"
Dado que cadastro o calculador de tipo de serviço "CALTIPSERDEPCTRL" com o agrupador de zona de transporte "AGRZONTRADEPCTRL"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPCTRL"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPCTRL"
Dado que cadastro a restrição de localidade "RESTLOCDEPCTRL"
Dado que cadastro a zona de transporte "ZONTRADEPCTRL" do tipo região do agrupador do agrupador "AGRZONTRADEPCTRL" com a restrição de localidade "RESTLOCDEPCTRL" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPCTRL" com a restrição de localidade "RESTLOCDEPCTRL" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPCTRL" com a restrição de localidade "RESTLOCDEPCTRL" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPCTRL"
Dado que cadastro o embarcador "EMBDEPCTRL"
Dado que cadastro o produto "PRODDEPCTRL" com a categoria "CATPRODDEPCTRL" e embarcador "EMBDEPCTRL"
Dado que cadastro o invólucro "INVDEPCTRL" com politicas definidas no produto
Dado que cadastro a transportadora "TRADEPCTRL01" para o calculador de tipo de serviço "CALTIPSERDEPCTRL", agrupador zona de transporte "AGRZONTRADEPCTRL", grupo logístico "AGRZONTRADEPCTRL" e calculador de frete viagem "CALFREVIADEPCTRL"
Dado que cadastro a transportadora "TRADEPCTRL02" para o calculador de tipo de serviço "CALTIPSERDEPCTRL", agrupador zona de transporte "AGRZONTRADEPCTRL", grupo logístico "AGRZONTRADEPCTRL" e calculador de frete viagem "CALFREVIADEPCTRL"
Dado que cadastro o pedido "PEDIDODEPCTRL01" do embarcador "EMBDEPCTRL" tipo de pedido "TIPOPEDIDODEPCTRL" destino "LOCDESTDEPCTRL" origem "LOCORIGEMDEPCTRL" produto "PRODDEPCTRL" item de pedido "TIPOITEMDEPCTRL" e invólucro "INVDEPCTRL" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPCTRL02" do embarcador "EMBDEPCTRL" tipo de pedido "TIPOPEDIDODEPCTRL" destino "LOCDESTDEPCTRL" origem "LOCORIGEMDEPCTRL" produto "PRODDEPCTRL" item de pedido "TIPOITEMDEPCTRL" e invólucro "INVDEPCTRL" e classificação "Não exige agendamento"
Dado que cadastro a viagem para o pedido "PEDIDODEPCTRL01" com a transportadora "TRADEPCTRL01" e veículo " "
Dado que cadastro a viagem para o pedido "PEDIDODEPCTRL02" com a transportadora "TRADEPCTRL02" e veículo " "

Cenario: Validação de viagem com status Ofertada (Aguardando) - Ação aceitar
Dado que efetuo a oferta da viagem com o pedido "PEDIDODEPCTRL01"
Quando que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPCTRL01"
Então verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que habilito e configuro a ação após expirar prazo para resposta de transportadoras para "Auto aceite" e justificativa "Automação teste de rejeite de oferta"
E que executo a tarefa de background "TripOfferFinalizerTask"
Quando que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPCTRL01"
Então verifico se a viagem está com o status "Ofertada (Aceita)"
E que desabilito a resposta de transportadoras

Cenario: Cenário | Validação de viagem com status Ofertada (Aguardando) - Ação recusar
Dado que efetuo a oferta da viagem com o pedido "PEDIDODEPCTRL02"
Quando que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPCTRL02"
Então verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que habilito e configuro a ação após expirar prazo para resposta de transportadoras para "Auto recusa" e justificativa "Automação teste de rejeite de oferta"
E que executo a tarefa de background "TripOfferFinalizerTask"
Quando que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPCTRL02"
Então verifico se a viagem está com o status "Ofertada (Recusada)"
E que desabilito a resposta de transportadoras

Cenário: Exclusão de cadastros de dependências
Dado que seja cancelada a oferta da viagem com o pedido "PEDIDODEPCTRL01"
Dado que seja cancelada a oferta da viagem com o pedido "PEDIDODEPCTRL02"
Dado que seja cancelada a viagem com o pedido "PEDIDODEPCTRL01"
Dado que seja cancelada a viagem com o pedido "PEDIDODEPCTRL02"
Dado que excluo o pedido "PEDIDODEPCTRL01"
Dado que excluo o pedido "PEDIDODEPCTRL02"
Dado que excluo o produto "PRODDEPCTRL"
Dado que excluo o invólucro "INVDEPCTRL"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPCTRL"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPCTRL"
Dado que excluo a categoria de produto "CATPRODDEPCTRL"
Dado que excluo o embarcador "EMBDEPCTRL"
Dado que excluo a zona de transporte "ZONTRADEPCTRL"
Dado que excluo a transportadora "TRADEPCTRL01"
Dado que excluo a transportadora "TRADEPCTRL02"
Dado que excluo o calculador de frete viagem "CALFREVIADEPCTRL"
Dado que excluo o calculador de tipo de serviço "CALTIPSERDEPCTRL"
Dado que excluo o agrupador de zt "AGRZONTRADEPCTRL"
Dado que excluo a localidade "LOCDESTDEPCTRL"
Dado que excluo a localidade "LOCORIGEMDEPCTRL"
Dado que excluo a restrição de localidade "RESTLOCDEPCTRL"