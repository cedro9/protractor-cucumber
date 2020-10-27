#language:pt

@MCB
@poolOfferingOnlyToAllowedCarriers

Funcionalidade: Oferta no pool apenas para transportadora permitidas (Observação: é necessário frete)
# https://neolog.atlassian.net/browse/MCA-33

Cenário: Cadastro de dependências
Dado que o pool de oferta está ligado
Dado que cadastro o usuário "USERDEPPOOTAC"
Dado que cadastro a justificativa de rejeite "Automação teste de rejeite de oferta"
Dado que removo as configurações de entidade padrão "Transportadora"
Dado que cadastro o agrupador de zt "AGRZONTRADEPPOOTAC"
Dado que cadastro o calculador de frete viagem "CALFREVIADEPPOOTAC"
Dado que cadastro o calculador de tipo de serviço "CALTIPSERDEPPOOTAC" com o agrupador de zona de transporte "AGRZONTRADEPPOOTAC"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPPOOTAC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPPOOTAC"
Dado que cadastro a restrição de localidade "RESTLOCDEPPOOTAC"
Dado que cadastro a zona de transporte "ZONTRADEPPOOTAC" do tipo região do agrupador do agrupador "AGRZONTRADEPPOOTAC" com a restrição de localidade "RESTLOCDEPPOOTAC" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPPOOTAC" com a restrição de localidade "RESTLOCDEPPOOTAC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPPOOTAC" com a restrição de localidade "RESTLOCDEPPOOTAC" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPPOOTAC"
Dado que cadastro o embarcador "EMBDEPPOOTAC"
Dado que cadastro o produto "PRODDEPPOOTAC" com a categoria "CATPRODDEPPOOTAC" e embarcador "EMBDEPPOOTAC"
Dado que cadastro o invólucro "INVDEPPOOTAC" com politicas definidas no produto
Dado que cadastro a transportadora "TRADEPPOOTAC01" para o calculador de tipo de serviço "CALTIPSERDEPPOOTAC", agrupador zona de transporte "AGRZONTRADEPPOOTAC", grupo logístico "AGRZONTRADEPPOOTAC" e calculador de frete viagem "CALFREVIADEPPOOTAC"
Dado que cadastro a transportadora "TRADEPPOOTAC02" para o calculador de tipo de serviço "CALTIPSERDEPPOOTAC", agrupador zona de transporte "AGRZONTRADEPPOOTAC", grupo logístico "AGRZONTRADEPPOOTAC" e calculador de frete viagem "CALFREVIADEPPOOTAC"
Dado que cadastro a transportadora "TRADEPPOOTAC03" para o calculador de tipo de serviço "CALTIPSERDEPPOOTAC", agrupador zona de transporte "AGRZONTRADEPPOOTAC", grupo logístico "AGRZONTRADEPPOOTAC" e calculador de frete viagem "CALFREVIADEPPOOTAC"
Dado que cadastro o veículo "VEIDEPPOOTAC", com "2,5" de largura, "14,00" de comprimento e "2,80" de altura
Dado que cadastro o pedido "PEDIDODEPPOOTAC01" do embarcador "EMBDEPPOOTAC" tipo de pedido "TIPOPEDIDODEPPOOTAC" destino "LOCDESTDEPPOOTAC" origem "LOCORIGEMDEPPOOTAC" produto "PRODDEPPOOTAC" item de pedido "TIPOITEMDEPPOOTAC" e invólucro "INVDEPPOOTAC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPPOOTAC02" do embarcador "EMBDEPPOOTAC" tipo de pedido "TIPOPEDIDODEPPOOTAC" destino "LOCDESTDEPPOOTAC" origem "LOCORIGEMDEPPOOTAC" produto "PRODDEPPOOTAC" item de pedido "TIPOITEMDEPPOOTAC" e invólucro "INVDEPPOOTAC" e classificação "Não exige agendamento"
Dado que somente a transportadora "TRADEPPOOTAC03" seja permitida para o usuário "USERDEPPOOTAC"
Dado que cadastro a viagem para o pedido "PEDIDODEPPOOTAC01" com a transportadora "TRADEPPOOTAC01" e veículo "VEIDEPPOOTAC"
Dado que cadastro a viagem para o pedido "PEDIDODEPPOOTAC02" com a transportadora "TRADEPPOOTAC02" e veículo "VEIDEPPOOTAC"

Cenario: Validação de oferta de viagem para o pool com uma transportadora permitida
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPPOOTAC01"
E seleciono a viagem
Quando oferto para o pool para todas as transportadora
Dado que acesso a tela "Programação", "Partner collaboration"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPPOOTAC01"
E seleciono a viagem
E clico no botão "Aceitar"
E preencho a transportadora do pool com "TRADEPPOOTAC02"
E clico no botão Salvar
E clico no botão OK
Então verifico se a viagem está com o status "Ofertada (Aceita do pool)"

Cenario: Validação de não oferta de viagem para o pool com uma transportadora não permitida
Dado que acesso a tela "Programação", "Análise"
E filtro a cesta de viagem pelo pedido "PEDIDODEPPOOTAC02"
E seleciono a viagem
Quando oferto para o pool apenas para a transportadora "TRADEPPOOTAC02"
Dado que logue com o usuário "USERDEPPOOTAC"
E que ligo a restrição de transportadoras para o usuário "USERDEPPOOTAC"
E que acesso a tela "Programação", "Partner collaboration"
Quando verifico que a viagem não é exibida após filtrar pelo pedido "PEDIDODEPPOOTAC02"

Cenário: Exclusão de cadastros de dependências
Dado que seja cancelada a oferta da viagem com o pedido "PEDIDODEPPOOTAC01"
Dado que seja cancelada a oferta da viagem com o pedido "PEDIDODEPPOOTAC02"
Dado que seja cancelada a viagem com o pedido "PEDIDODEPPOOTAC01"
Dado que seja cancelada a viagem com o pedido "PEDIDODEPPOOTAC02"
Dado que excluo o pedido "PEDIDODEPPOOTAC01"
Dado que excluo o pedido "PEDIDODEPPOOTAC02"
Dado que excluo o produto "PRODDEPPOOTAC"
Dado que excluo o invólucro "INVDEPPOOTAC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPPOOTAC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPPOOTAC"
Dado que excluo a categoria de produto "CATPRODDEPPOOTAC"
Dado que excluo o embarcador "EMBDEPPOOTAC"
Dado que excluo a zona de transporte "ZONTRADEPPOOTAC"
Dado que excluo a transportadora "TRADEPPOOTAC01"
Dado que excluo a transportadora "TRADEPPOOTAC02"
Dado que excluo a transportadora "TRADEPPOOTAC03"
Dado que excluo o calculador de frete viagem "CALFREVIADEPPOOTAC"
Dado que excluo o calculador de tipo de serviço "CALTIPSERDEPPOOTAC"
Dado que excluo o agrupador de zt "AGRZONTRADEPPOOTAC"
Dado que excluo a localidade "LOCDESTDEPPOOTAC"
Dado que excluo a localidade "LOCORIGEMDEPPOOTAC"
Dado que excluo a restrição de localidade "RESTLOCDEPPOOTAC"
Dado que excluo o veículo "VEIDEPPOOTAC"