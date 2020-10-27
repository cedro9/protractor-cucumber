#language:pt

@MCB
@tripTenderingNotAllowedForFob

Funcionalidade: Fluxos Partner Collaborantion - Validador que proíbe oferta para FOB
# https://neolog.atlassian.net/browse/MCA-30

Cenario: Cadastrar de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPLS"
Dado que cadastro o tipo de item de pedido "TIPITEDEPLS"
Dado que cadastro o agrupador de zt "AZTDEPLS"
Dado que cadastro a restrição de localidade "RESLOCDEPLS"
Dado que cadastro a zona de transporte "ZTDEPLS" do tipo região do agrupador do agrupador "AZTDEPLS" com a restrição de localidade "RESLOCDEPLS" e prioridade "1"
Dado que cadastro a origem "ORIDEPLS" com a restrição de localidade "RESLOCDEPLS" e Cep "90010-191"
Dado que cadastro o destino "DESTDEPLS" com a restrição de localidade "RESLOCDEPLS" e Cep "90010-191"
Dado que cadastro a categoria de produto "CATPRODDEPLS"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERDEPLS" com o agrupador de zona de transporte "AZTDEPLS"
Dado que cadastro o calculador de frete viagem "CALFREVIAGEMDEPLS"
Dado que cadastro a transportadora "TRANDEPLS" para o calculador de tipo de serviço "CALCTIPOSERDEPLS", agrupador zona de transporte "AZTDEPLS", grupo logístico "AZTDEPLS" e calculador de frete viagem "CALFREVIAGEMDEPLS"
Dado que cadastro a transportadora "TRANDEPLS02" para o calculador de tipo de serviço "CALCTIPOSERDEPLS", agrupador zona de transporte "AZTDEPLS", grupo logístico "AZTDEPLS" e calculador de frete viagem "CALFREVIAGEMDEPLS"
Dado que cadastro o embarcador "EMBDEPLS"
Dado que cadastro o veículo "VEIDEPLS", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPLS02", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o invólucro "INVDEPLS" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPLS" com a categoria "CATPRODDEPLS" e embarcador "EMBDEPLS"
Dado que adiciono a origem "ORIDEPLS" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado dado que importo a planilha de frete
Dado que cadastro o pedido FOB "PEDIDOLS01" do embarcador "EMBDEPLS" tipo de pedido "TIPOPEDDEPLS" destino "DESTDEPLS" origem "ORIDEPLS" produto "PRODDEPLS" item de pedido "TIPITEDEPLS" e invólucro "INVDEPLS" e classificação " "
Dado que cadastro o pedido FOBT "PEDIDOLS02" do embarcador "EMBDEPLS" tipo de pedido "TIPOPEDDEPLS" destino "DESTDEPLS" origem "ORIDEPLS" produto "PRODDEPLS" item de pedido "TIPITEDEPLS" e invólucro "INVDEPLS" e classificação " "
Dado que cadastro o pedido "PEDIDOLS03" do embarcador "EMBDEPLS" tipo de pedido "TIPOPEDDEPLS" destino "DESTDEPLS" origem "ORIDEPLS" produto "PRODDEPLS" item de pedido "TIPITEDEPLS" e invólucro "INVDEPLS" e Hub de destino " "
Dado que cadastro o pedido FOB "PEDIDOLS04" do embarcador "EMBDEPLS" tipo de pedido "TIPOPEDDEPLS" destino "DESTDEPLS" origem "ORIDEPLS" produto "PRODDEPLS" item de pedido "TIPITEDEPLS" e invólucro "INVDEPLS" e classificação " "
Dado que cadastro o pedido FOBT "PEDIDOLS05" do embarcador "EMBDEPLS" tipo de pedido "TIPOPEDDEPLS" destino "DESTDEPLS" origem "ORIDEPLS" produto "PRODDEPLS" item de pedido "TIPITEDEPLS" e invólucro "INVDEPLS" e classificação " "
Dado que cadastro a viagem para o pedido "PEDIDOLS01" com a transportadora "TRANDEPLS" e veículo "VEIDEPLS"
Dado que cadastro a viagem para o pedido "PEDIDOLS02" com a transportadora "TRANDEPLS" e veículo "VEIDEPLS"
Dado que cadastro a viagem para o pedido "PEDIDOLS03, PEDIDOLS04, PEDIDOLS05" com a transportadora "TRANDEPLS" e veículo "VEIDEPLS"

Cenario: Ofertar Cargas FOB para o PC
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDOLS01"
Entao verifico se a viagem está com o status "Distribuída"
E seleciono a viagem
E oferto a viagem
Entao o sistema exibe mensagem informando que a viagem não foi ofertada
E clico no botão OK

Cenario: Ofertar Cargas FOBT para o PC
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDOLS02"
Entao verifico se a viagem está com o status "Distribuída"
E seleciono a viagem
E oferto a viagem
Entao o sistema exibe mensagem informando que a viagem não foi ofertada
E clico no botão OK

Cenario: Ofertar Cargas CIF/FOB/FOBT (com mistura de incoterms) para o PC
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDOLS03"
Quando seleciono a viagem
E oferto a viagem
Entao o sistema exibe mensagem informando que a viagem não foi ofertada
E clico no botão OK

Cenario: Excluir dependências
Dado que excluo a viagem "PEDIDOLS01"
Dado que excluo a viagem "PEDIDOLS02"
Dado que excluo a viagem "PEDIDOLS03"
Dado que excluo o pedido "PEDIDOLS01"
Dado que excluo o pedido "PEDIDOLS02"
Dado que excluo o pedido "PEDIDOLS03"
Dado que excluo o pedido "PEDIDOLS04"
Dado que excluo o pedido "PEDIDOLS05"
Dado que excluo o produto "PRODDEPLS"
Dado que excluo o invólucro "INVDEPLS"
Dado que excluo o tipo de pedido "TIPOPEDDEPLS"
Dado que excluo o tipo de item de pedido "TIPITEDEPLS"
Dado que excluo a zona de transporte "ZTDEPLS"
Dado que excluo o embarcador "EMBDEPLS"
Dado que excluo a transportadora "TRANDEPLS"
Dado que excluo a transportadora "TRANDEPLS02"
Dado que excluo o veículo "VEIDEPLS"
Dado que excluo o veículo "VEIDEPLS02"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERDEPLS"
Dado que excluo o calculador de frete viagem "CALFREVIAGEMDEPLS"
Dado que excluo o agrupador de zt "AZTDEPLS"
Dado que excluo a localidade "ORIDEPLS"
Dado que excluo a localidade "DESTDEPLS"
Dado que excluo a restrição de localidade "RESLOCDEPLS"
Dado que excluo a categoria de produto "CATPRODDEPLS"