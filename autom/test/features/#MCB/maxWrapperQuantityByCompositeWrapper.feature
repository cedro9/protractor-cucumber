#language:pt

@MCB
@maxWrapperQuantityByCompositeWrapper

Funcionalidade: Quantidade máxima de invólucros por invólucro composto
# https://neolog.atlassian.net/browse/MCA-120

Cenário: Cadastro de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPQMDIPIC"
Dado que cadastro o tipo de item de pedido "TIPITEDEPQMDIPIC"
Dado que cadastro o agrupador de zt "AZTDEPQMDIPIC"
Dado que cadastro a restrição de localidade "RESLOCDEPQMDIPIC"
Dado que cadastro a zona de transporte "ZTDEPQMDIPIC" do tipo região do agrupador do agrupador "AZTDEPQMDIPIC" com a restrição de localidade "RESLOCDEPQMDIPIC" e prioridade "1"
Dado que cadastro a origem "ORIDEPQMDIPIC" com a restrição de localidade "RESLOCDEPQMDIPIC" e Cep "90010-191"
Dado que cadastro o destino "DESTDEPQMDIPIC" com a restrição de localidade "RESLOCDEPQMDIPIC" e Cep "90010-191"
Dado que cadastro a categoria de produto "CATPRODDEPQMDIPIC"
Dado que altero a classificação paletização para "Paletizado" da categoria de produto "CATPRODDEPQMDIPIC"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERDEPQMDIPIC" com o agrupador de zona de transporte "AZTDEPQMDIPIC"
Dado que cadastro o calculador de frete viagem "CALFREVIAGEMDEPQMDIPIC"
Dado que cadastro a transportadora "TRANDEPQMDIPIC" para o calculador de tipo de serviço "CALCTIPOSERDEPQMDIPIC", agrupador zona de transporte "AZTDEPQMDIPIC", grupo logístico "AZTDEPQMDIPIC" e calculador de frete viagem "CALFREVIAGEMDEPQMDIPIC"
Dado que cadastro o embarcador "EMBDEPQMDIPIC"
Dado que cadastro o veículo "VEIDEPQMDIPIC", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o invólucro "INVSIMPDEPQMIPICGP01" com politicas definidas no produto
Dado que cadastro o invólucro "INVSIMPDEPQMIPICGP02" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPQMDIPIC" com a categoria "CATPRODDEPQMDIPIC" e embarcador "EMBDEPQMDIPIC"
Dado que adiciono a origem "ORIDEPQMDIPIC" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro o pedido "PEDIDOQMDIPIC01" do embarcador "EMBDEPQMDIPIC" tipo de pedido "TIPOPEDDEPQMDIPIC" destino "DESTDEPQMDIPIC" origem "ORIDEPQMDIPIC" produto "PRODDEPQMDIPIC" item de pedido "TIPITEDEPQMDIPIC" e invólucro "INVSIMPDEPQMIPICGP01" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOQMDIPIC02" do embarcador "EMBDEPQMDIPIC" tipo de pedido "TIPOPEDDEPQMDIPIC" destino "DESTDEPQMDIPIC" origem "ORIDEPQMDIPIC" produto "PRODDEPQMDIPIC" item de pedido "TIPITEDEPQMDIPIC" e invólucro "INVSIMPDEPQMIPICGP02" e Hub de destino " "
Dado que preencho o parâmetro genérico Quantidade máxima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPQMIPICGP01", Invólucro Composto "PALETE" e Quantidade "5"
Dado que preencho o parâmetro genérico Quantidade máxima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPQMIPICGP01", Invólucro Composto "PALETE TAMBOR" e Quantidade "1"
Dado que preencho o parâmetro genérico Quantidade máxima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPQMIPICGP02", Invólucro Composto "PALETE TAMBOR" e Quantidade "9"
Dado que preencho o parâmetro genérico Quantidade máxima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPQMIPICGP02", Invólucro Composto "PALETE" e Quantidade "11"
Dado que cadastro a viagem manual com restrição e unitização para o pedido "PEDIDOQMDIPIC01" com a transportadora "TRANDEPQMDIPIC" e veículo "VEIDEPQMDIPIC"
Dado que cadastro a viagem manual com restrição e unitização para o pedido "PEDIDOQMDIPIC02" com a transportadora "TRANDEPQMDIPIC" e veículo "VEIDEPQMDIPIC"

Cenario: quantidades de UEs inferiores ao cadastrado no parâmetro genérico
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDOQMDIPIC02"
Entao clico em Expandir todos os níveis da viagem
E verifico se a UT composta esta presente e a sua quantidade é igual a "1"

Cenario: quantidades de UEs superiores ao cadastrado no parâmetro genérico
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDOQMDIPIC01"
Entao clico em Expandir todos os níveis da viagem
E verifico se a UT composta esta presente e a sua quantidade é igual a "2"

Cenario: Excluir dependências
Dado que excluo a viagem "PEDIDOQMDIPIC01"
Dado que excluo a viagem "PEDIDOQMDIPIC02"
Dado que excluo o pedido "PEDIDOQMDIPIC01"
Dado que excluo o pedido "PEDIDOQMDIPIC02"
Dado que excluo o produto "PRODDEPQMDIPIC"
Dado que excluo o invólucro "INVSIMPDEPQMIPICGP01"
Dado que excluo o invólucro "INVSIMPDEPQMIPICGP02"
Dado que excluo o tipo de pedido "TIPOPEDDEPQMDIPIC"
Dado que excluo o tipo de item de pedido "TIPITEDEPQMDIPIC"
Dado que excluo a zona de transporte "ZTDEPQMDIPIC"
Dado que excluo o embarcador "EMBDEPQMDIPIC"
Dado que excluo a transportadora "TRANDEPQMDIPIC"
Dado que excluo o veículo "VEIDEPQMDIPIC"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERDEPQMDIPIC"
Dado que excluo o calculador de frete viagem "CALFREVIAGEMDEPQMDIPIC"
Dado que excluo o agrupador de zt "AZTDEPQMDIPIC"
Dado que excluo a localidade "ORIDEPQMDIPIC"
Dado que excluo a localidade "DESTDEPQMDIPIC"
Dado que excluo a restrição de localidade "RESLOCDEPQMDIPIC"
Dado que excluo a categoria de produto "CATPRODDEPQMDIPIC"