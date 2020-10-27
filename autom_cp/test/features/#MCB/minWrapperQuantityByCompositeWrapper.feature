#language:pt

@MCB
@minWrapperQuantityByCompositeWrapper

Funcionalidade: Quantidade mínima de invólucros por invólucro composto
# https://neolog.atlassian.net/browse/MCA-108

Cenário: Cadastro de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPMWQBCW"
Dado que cadastro o tipo de item de pedido "TIPITEDEPMWQBCW"
Dado que cadastro o agrupador de zt "AZTDEPMWQBCW"
Dado que cadastro a restrição de localidade "RESLOCDEPMWQBCW"
Dado que cadastro a zona de transporte "ZTDEPMWQBCW" do tipo região do agrupador do agrupador "AZTDEPMWQBCW" com a restrição de localidade "RESLOCDEPMWQBCW" e prioridade "1"
Dado que cadastro a origem "ORIDEPMWQBCW" com a restrição de localidade "RESLOCDEPMWQBCW" e Cep "90010-191"
Dado que cadastro o destino "DESTDEPMWQBCW" com a restrição de localidade "RESLOCDEPMWQBCW" e Cep "90010-191"
Dado que cadastro a categoria de produto "CATPRODDEPMWQBCW"
Dado que altero a classificação paletização para "CATPRODDEPMWQBCW" da categoria de produto "Paletizado"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERDEPMWQBCW" com o agrupador de zona de transporte "AZTDEPMWQBCW"
Dado que cadastro o calculador de frete viagem "CALFREVIAGEMDEPMWQBCW"
Dado que cadastro a transportadora "TRANDEPMWQBCW" para o calculador de tipo de serviço "CALCTIPOSERDEPMWQBCW", agrupador zona de transporte "AZTDEPMWQBCW", grupo logístico "AZTDEPMWQBCW" e calculador de frete viagem "CALFREVIAGEMDEPMWQBCW"
Dado que cadastro a transportadora "TRANDEPMWQBCW02" para o calculador de tipo de serviço "CALCTIPOSERDEPMWQBCW", agrupador zona de transporte "AZTDEPMWQBCW", grupo logístico "AZTDEPMWQBCW" e calculador de frete viagem "CALFREVIAGEMDEPMWQBCW"
Dado que cadastro o embarcador "EMBDEPMWQBCW"
Dado que cadastro o veículo "VEIDEPMWQBCW", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPMWQBCW02", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o invólucro "INVSIMPDEPMWQBCW01" com politicas definidas no produto
Dado que cadastro o invólucro "INVSIMPDEPMWQBCW02" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPMWQBCW" com a categoria "CATPRODDEPMWQBCW" e embarcador "EMBDEPMWQBCW"
Dado que adiciono a origem "ORIDEPMWQBCW" no parametro Parâmetros da política de reagendamento baseada na data de visibilidade dos pedidos
Dado que cadastro o pedido "PEDIDODEPMWQBCW01" do embarcador "EMBDEPMWQBCW" tipo de pedido "TIPOPEDDEPMWQBCW" destino "DESTDEPMWQBCW" origem "ORIDEPMWQBCW" produto "PRODDEPMWQBCW" item de pedido "TIPITEDEPMWQBCW" e invólucro "INVSIMPDEPMWQBCW01" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPMWQBCW02" do embarcador "EMBDEPMWQBCW" tipo de pedido "TIPOPEDDEPMWQBCW" destino "DESTDEPMWQBCW" origem "ORIDEPMWQBCW" produto "PRODDEPMWQBCW" item de pedido "TIPITEDEPMWQBCW" e invólucro "INVSIMPDEPMWQBCW02" e Hub de destino " "
Dado que preencho o parâmetro genérico Quantidade mínima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPMWQBCW01", Invólucro Composto "PALETE" e Quantidade "5"
Dado que preencho o parâmetro genérico Quantidade mínima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPMWQBCW01", Invólucro Composto "PALETE TAMBOR" e Quantidade "5"
Dado que preencho o parâmetro genérico Quantidade mínima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPMWQBCW02", Invólucro Composto "PALETE TAMBOR" e Quantidade "11"
Dado que preencho o parâmetro genérico Quantidade mínima de invólucros por invólucro composto com o Invólucro Simples "INVSIMPDEPMWQBCW02", Invólucro Composto "PALETE" e Quantidade "11"
Dado que cadastro a viagem manual com restrição e unitização para o pedido "PEDIDODEPMWQBCW01" com a transportadora "TRANDEPMWQBCW" e veículo "VEIDEPMWQBCW"
Dado que cadastro a viagem manual com restrição e unitização para o pedido "PEDIDODEPMWQBCW02" com a transportadora "TRANDEPMWQBCW" e veículo "VEIDEPMWQBCW"

Cenario: quantidades de UEs inferiores ao cadastrado no parâmetro genérico
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDODEPMWQBCW02"
Entao clico em Expandir todos os níveis da viagem
E verifico se a UT composta não esta presente

Cenario: quantidades de UEs superiores ao cadastrado no parâmetro genérico
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "PEDIDODEPMWQBCW01"
Entao clico em Expandir todos os níveis da viagem
E verifico se a UT composta esta presente e a sua quantidade é igual a "1"

Cenario: Excluir dependências
Dado que excluo a viagem "PEDIDODEPMWQBCW01"
Dado que excluo a viagem "PEDIDODEPMWQBCW02"
Dado que excluo o pedido "PEDIDODEPMWQBCW01"
Dado que excluo o pedido "PEDIDODEPMWQBCW02"
Dado que excluo o produto "PRODDEPMWQBCW"
Dado que excluo o invólucro "INVSIMPDEPMWQBCW01"
Dado que excluo o invólucro "INVSIMPDEPMWQBCW02"
Dado que excluo o tipo de pedido "TIPOPEDDEPMWQBCW"
Dado que excluo o tipo de item de pedido "TIPITEDEPMWQBCW"
Dado que excluo a zona de transporte "ZTDEPMWQBCW"
Dado que excluo o embarcador "EMBDEPMWQBCW"
Dado que excluo a transportadora "TRANDEPMWQBCW"
Dado que excluo a transportadora "TRANDEPMWQBCW02"
Dado que excluo o veículo "VEIDEPMWQBCW"
Dado que excluo o veículo "VEIDEPMWQBCW02"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERDEPMWQBCW"
Dado que excluo o calculador de frete viagem "CALFREVIAGEMDEPMWQBCW"
Dado que excluo o agrupador de zt "AZTDEPMWQBCW"
Dado que excluo a localidade "ORIDEPMWQBCW"
Dado que excluo a localidade "DESTDEPMWQBCW"
Dado que excluo a restrição de localidade "RESLOCDEPMWQBCW"
Dado que excluo a categoria de produto "CATPRODDEPMWQBCW"