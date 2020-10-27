#language:pt

@MAD

Funcionalidade: Classificação de pedido
# https://neolog.atlassian.net/browse/MAD-78

Cenario: Cadastrar de dependências
Dado que cadastro o tipo de pedido "TIPOPEDDEPCLASSPEDMAD"
Dado que cadastro o tipo de item de pedido "TIPITEDEPCLASSPEDMAD"
Dado que cadastro a restrição de localidade "RESLOCDEPCLASSPEDMAD"
Dado que cadastro a origem "ORIDEPCLASSPEDMAD" com a restrição de localidade "RESLOCDEPCLASSPEDMAD" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPCLASSPEDMAD" com a restrição de localidade "RESLOCDEPCLASSPEDMAD" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESDEPCLASSPEDMAD" com a restrição de localidade "RESLOCDEPCLASSPEDMAD" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPCLASSPEDMAD"
Dado que cadastro o embarcador "EMBDEPCLASSPEDMAD"
Dado que cadastro o invólucro "INVDEPCLASSPEDMAD" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPCLASSPEDMAD" com a categoria "CATPRODDEPCLASSPEDMAD" e embarcador "EMBDEPCLASSPEDMAD"
Dado que cadastro o pedido "PEDIDODEPCLASSPEDMAD01" do embarcador "EMBDEPCLASSPEDMAD" tipo de pedido "TIPOPEDDEPCLASSPEDMAD" destino "DESTDEPCLASSPEDMAD" origem "ORIDEPCLASSPEDMAD" produto "PRODDEPCLASSPEDMAD" item de pedido "TIPITEDEPCLASSPEDMAD" e invólucro "INVDEPCLASSPEDMAD" e Hub de destino "HUBDESDEPCLASSPEDMAD"

Cenário:Verificar que a classificação de pedido default é Principal
Dado que acesso a tela "Programação", "Pedido"
E filtro pedido com o codigo "PEDIDODEPCLASSPEDMAD01"
E clico no botão editar
Então verifico se o campo de classificação de tipo de pedido está preenchido com "Principal"

Cenário:Alterar a classificação de compartimento
Dado que acesso a tela "Programação", "Pedido"
E filtro pedido com o codigo "PEDIDODEPCLASSPEDMAD01"
E clico no botão editar
Quando altero o campo de classificação de tipo de pedido para "Inauguração"

Cenário: Não é permitida a alteração de classificação de pedido enviado através de importação de planilha
Dado que acesso a tela "Programação", "Pedido"
E importo a planilha "ClassificaçãoDePedido"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que acesso a tela "Programação", "Pedido"
E filtro pedido com o codigo "PEDIDODEPCLASSPEDMAD02"
E clico no botão editar
E verifico que não é possível editar a classificação de tipo de pedido
Dado que acesso a tela "Programação", "Pedido"
E importo a planilha "ClassificaçãoDePedidoDelete"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que acesso a tela "Programação", "Pedido"
E filtro pedido com o codigo "PEDIDODEPCLASSPEDMAD02"
E verifico que o pedido "PEDIDODEPCLASSPEDMAD02" não está presente

Cenario: Excluir dependências
Dado que excluo o pedido "PEDIDODEPCLASSPEDMAD01"
Dado que excluo o produto "PRODDEPCLASSPEDMAD"
Dado que excluo o invólucro "INVDEPCLASSPEDMAD"
Dado que excluo o embarcador "EMBDEPCLASSPEDMAD"
Dado que excluo a categoria de produto "CATPRODDEPCLASSPEDMAD"
Dado que excluo a localidade "ORIDEPCLASSPEDMAD"
Dado que excluo a localidade "DESTDEPCLASSPEDMAD"
Dado que excluo a localidade "HUBDESDEPCLASSPEDMAD"
Dado que excluo a restrição de localidade "RESLOCDEPCLASSPEDMAD"
Dado que excluo o tipo de item de pedido "TIPITEDEPCLASSPEDMAD"
Dado que excluo o tipo de pedido "TIPOPEDDEPCLASSPEDMAD"