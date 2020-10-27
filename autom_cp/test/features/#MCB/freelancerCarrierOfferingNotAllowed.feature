#language:pt

@MCB
@freelancerCarrierOfferingNotAllowed

Funcionalidade: Validador que proíbe oferta de transportador autônomo
# https://neolog.atlassian.net/browse/MCA-31

Cenário: Cadastro de dependências
Dado que libero todas as tarefas de geolocalização
Dado que removo as configurações de entidade padrão "Transportadora"
Dado que cadastro o agrupador de zt "AGRZONTRADEPFCONA"
Dado que cadastro o calculador de frete viagem "CALFREVIADEPFCONA"
Dado que cadastro o calculador de tipo de serviço "CALTIPSERDEPFCONA" com o agrupador de zona de transporte "AGRZONTRADEPFCONA"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPFCONA"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPFCONA"
Dado que cadastro a restrição de localidade "RESTLOCDEPFCONA"
Dado que cadastro a zona de transporte "ZONTRADEPFCONA" do tipo região do agrupador do agrupador "AGRZONTRADEPFCONA" com a restrição de localidade "RESTLOCDEPFCONA" e prioridade "1"
Dado que cadastro a origem "LOCORIGEMDEPFCONA" com a restrição de localidade "RESTLOCDEPFCONA" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPFCONA" com a restrição de localidade "RESTLOCDEPFCONA" e Cep "08061-020"
Dado que cadastro a categoria de produto "CATPRODDEPFCONA"
Dado que cadastro o embarcador "EMBDEPFCONA"
Dado que cadastro o produto "PRODDEPFCONA" com a categoria "CATPRODDEPFCONA" e embarcador "EMBDEPFCONA"
Dado que cadastro o invólucro "INVDEPFCONA" com politicas definidas no produto
Dado que cadastro a transportadora "TRADEPFCONA" para o calculador de tipo de serviço "CALTIPSERDEPFCONA", agrupador zona de transporte "AGRZONTRADEPFCONA", grupo logístico "AGRZONTRADEPFCONA" e calculador de frete viagem "CALFREVIADEPFCONA"
Dado que altero a classificação autônomo da transportadora "TRADEPFCONA" para "Sim"
Dado que cadastro o pedido "PEDIDODEPFCONA" do embarcador "EMBDEPFCONA" tipo de pedido "TIPOPEDIDODEPFCONA" destino "LOCDESTDEPFCONA" origem "LOCORIGEMDEPFCONA" produto "PRODDEPFCONA" item de pedido "TIPOITEMDEPFCONA" e invólucro "INVDEPFCONA" e classificação "Não exige agendamento"
Dado que cadastro a viagem para o pedido "PEDIDODEPFCONA" com a transportadora "TRADEPFCONA" e veículo " "

Cenario: Proibir oferta de viagem com transportador autônomo
E que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "PEDIDODEPFCONA"
Então verifico se a viagem está com o status "Distribuída"
Quando expando o header da viagem
Então verifico a transportadora da viagem "TRADEPFCONA"
Quando seleciono a viagem
E oferto a viagem
Então é exibido uma mensagem informando que a viagem não foi ofertada

Cenário: Exclusão de cadastros de dependências
Dado que seja cancelada a viagem com o pedido "PEDIDODEPFCONA"
Dado que excluo o pedido "PEDIDODEPFCONA"
Dado que excluo o produto "PRODDEPFCONA"
Dado que excluo o invólucro "INVDEPFCONA"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPFCONA"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPFCONA"
Dado que excluo a categoria de produto "CATPRODDEPFCONA"
Dado que excluo o embarcador "EMBDEPFCONA"
Dado que excluo a zona de transporte "ZONTRADEPFCONA"
Dado que excluo a transportadora "TRADEPFCONA"
Dado que excluo o calculador de frete viagem "CALFREVIADEPFCONA"
Dado que excluo o calculador de tipo de serviço "CALTIPSERDEPFCONA"
Dado que excluo o agrupador de zt "AGRZONTRADEPFCONA"
Dado que excluo a localidade "LOCDESTDEPFCONA"
Dado que excluo a localidade "LOCORIGEMDEPFCONA"
Dado que excluo a restrição de localidade "RESTLOCDEPFCONA"