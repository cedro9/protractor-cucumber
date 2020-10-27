#language:pt

@Programacao
@Pedido

Funcionalidade: Cadastro de Pedido

Cenario: Cadastrar Dependências
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPPED"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPPED"
Dado que cadastro a restrição de localidade "RESLOCDEPPED"
Dado que cadastro a origem "ORIGDEPPED" com a restrição de localidade "RESLOCDEPPED" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPPED" com a restrição de localidade "RESLOCDEPPED" e Cep "76820-408"
Dado que cadastro o hub de passagem "HUBPASSDEPPED" com a restrição de localidade "RESLOCDEPPED" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESTDEPPED" com a restrição de localidade "RESLOCDEPPED" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODEPPED"
Dado que cadastro o embarcador "EMBDEPPED01"
Dado que cadastro o produto "PRODEPPED01" com a categoria "CATPRODEPPED" e embarcador "EMBDEPPED01"
Dado que cadastro o produto "PRODEPPED02" com a categoria "CATPRODEPPED" e embarcador "EMBDEPPED01"
Dado que cadastro o invólucro "INVDEPPED01" com politicas definidas no produto
Dado que cadastro o invólucro "INVDEPPED02" com politicas definidas no item
Dado que altero o tipo de pedido padrão para o primeiro da lista

Cenario: Criar pedido com sucesso - um item - invólucro obtém dimensões/valor/peso do produto
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste01"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste01"

Cenario: Criar pedido com sucesso - um item - invólucro obtém dimensões/valor/peso do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste02"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,12", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste02"

Cenario: Criar pedido com sucesso - um item - entrega exclusiva
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste03"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando clico no checkbox Entrega exclusiva
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste03"

Cenario: Criar pedido com sucesso - um item - hubs de passagem e destino opcionais - nenhum hub selecionado
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste04"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando clico no checkbox Entrega exclusiva
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste04"

Cenario: Criar pedido com sucesso - um item - hubs de passagem e destino opcionais - selecionar hubs
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste05"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste05"

Cenario: Criar pedido com sucesso - um item - hubs de passagem e destino obrigatórios - selecionar hubs
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste06"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Obrigatório"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Obrigatório"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste06"

Cenario: Criar pedido com sucesso - um item - hubs de passagem e destino obrigatórios - nenhum hub selecionado
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste07"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Obrigatório"
Quando preencho o Tipo de utilização do hub de destino "Obrigatório"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste07"

Cenario: Criar pedido com sucesso - dois itens
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste08"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
Quando adiciono segundo item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "20"
Quando preencho a Quantidade de UEs "20"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste08"

Cenario: Criar pedido com sucesso - data de fim de embarque não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste09"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste09"

Cenario: Criar pedido com sucesso - data de início de entrega não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste10"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste10"

Cenario: Criar pedido com sucesso - datas de fim de embarque e início de entrega não preenchidas
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste11"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste11"

Cenario: Criar pedido com sucesso - incoterm não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste12"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste12"

Cenario: Criar pedido com sucesso - tipo de pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "PedidoTeste13"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "PedidoTeste13"

Cenario: Criar pedido com sucesso - tipo de utilização do hub de passagem não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste14"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Obrigatório"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste14"

Cenario: Criar pedido com sucesso - tipo de utilização do hub de destino não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste15"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Obrigatório"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste15"

Cenario: Criar pedido com sucesso - tipo de item de pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste16"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste16"


Cenario: Criar pedido com sucesso - orientações permitidas não selecionadas - invólucro obtém orientações do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste17"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando seleciono o Invólucro "INVDEPPED01"
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste17"


Cenario: Criar pedido sem sucesso - código já existente
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste18"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste18"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando preencho o campo Codigo do item de pedido "Teste18/02 "
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Código: Teste18 já existe"
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste18"

Cenario: Criar pedido sem sucesso - código de pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo " "
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Código nulo ou vazio."


Cenario: Criar pedido sem sucesso - localidade destino não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste20"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Localidade de destino é nula."


Cenario: Criar pedido sem sucesso - data de início de embarque maior que data final de embarque
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste21"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho a janela de embarque entre "10/02/2019" e "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de coleta 10/02/19 00:00 posterior ao final 01/02/19 23:59."


Cenario: Criar pedido sem sucesso - data de início de entrega maior que data final de entrega
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste22"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho a janela de entrega entre "20/02/2019" e "11/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de entrega 20/02/19 00:00 posterior ao final 11/02/19 23:59."


Cenario: Criar pedido sem sucesso - data de início de embarque maior que data final de entrega
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste23"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "20/02/2019"
Quando preencho o fim da janela de entrega "01/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de coleta 20/02/19 00:00 posterior ao final 01/02/19 23:59."


Cenario: Criar pedido sem sucesso - data de início de embarque não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste24"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Início da janela de coleta é nulo."


Cenario: Criar pedido sem sucesso - data de fim da entrega não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste25"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Final da janela de entrega é nulo."


Cenario: Criar pedido sem sucesso - sem item de pedido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste26"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico no botão "Salvar"
Entao é exibido a mensagem "O pedido Teste26 não contém itens."


Cenario: Criar pedido sem sucesso - código de item já existente
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste27"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste28"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando preencho o campo Codigo do item de pedido "Teste27/1"
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "O id do item de pedido já existe no banco: Teste27/1."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste27"


Cenario: Criar pedido sem sucesso - código de item não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste29"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando preencho o campo Codigo do item de pedido " "
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "O identificador de item de pedido é nulo ."


Cenario: Criar pedido sem sucesso - invólucro do item de pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste30"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "O código do invólucro de unidade de embarque não pode ser nulo ou vazio."

Cenario: Criar pedido sem sucesso - localidade origem não preenchida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste31"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Identificador da localidade de origem nulo no item de pedido Teste31/1 (do pedido [Teste31], produto [PRODEPPED01] e embarcador [EMBDEPPED01])."

Cenario: Criar pedido sem sucesso - produto não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste32"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Identificador do produto é nulo no item de pedido Teste32/1 (do pedido [Teste32], produto [] e embarcador [EMBDEPPED01])."


Cenario: Criar pedido sem sucesso - comprimento do item não preenchido - invólucro obtém dimensões do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste33"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento " ", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Comprimento inválido: 0."


Cenario: Criar pedido sem sucesso - largura do item não preenchida - invólucro obtém dimensões do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste34"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,5", Largura " ", Altura "0,3", Peso "1000,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Largura inválida: 0."

Cenario: Criar pedido sem sucesso - altura do item não preenchida - invólucro obtém dimensões do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste35"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,5", Largura "0,3", Altura " ", Peso "1000,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Altura inválida: 0."


Cenario: Criar pedido sem sucesso - peso do item não preenchido - invólucro obtém peso do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste36"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,5", Largura "0,3", Altura "0,3", Peso " "
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Peso inválido: 0."

Cenario: Criar pedido sem sucesso - quantidade de produtos inválida
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste37"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED02"
Quando seleciono todas Orientações Permitidas
Quando Preencho as dimensões do item de pedido Comprimento "0,49", Largura "0,35", Altura "0,35", Peso "12"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Quantidade de produtos na unidade de embarque é inválida: 0.01."

Cenario: Criar pedido com sucesso - tipo de logistica direta
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste38"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando clico no botão Tipo de logística direta
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste38"


Cenario: Criar pedido com sucesso - tipo de logistica reversa
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste39"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando clico no botão Tipo de logística "Reversa"
Quando seleciono a localidade de Origem do pedido "ORIGDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Destino do item "DESTDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste39"

Cenario: Editar pedido com sucesso
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste40"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste40"
E clico no botão editar
Quando preencho a Prioridade "2"
Quando preencho o Inconterm "FOBT"
Quando preencho a Referência " "
Quando preencho a Observação " "
Quando removo o Hub de passagem
Quando preencho o Tipo de utilização do hub de passagem "Inválido"
Quando removo o Hub de destino
Quando preencho o Tipo de utilização do hub de destino "Inválido"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,49", Largura "0,35", Altura "0,35", Peso "12"
Quando preencho a Quantidade total de produtos "100"
Quando preencho a Quantidade de UEs "100"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste40"

Cenario: Editar pedido com sucesso - adiciona um item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste41"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste41"
E clico no botão editar
E clico na aba "Itens de pedidos"
Quando adiciono segundo item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "20"
Quando preencho a Quantidade de UEs "20"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste41"


Cenario: Editar pedido com sucesso - exclui um item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste42"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
Quando adiciono segundo item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "20"
Quando preencho a Quantidade de UEs "20"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste42"
E clico no botão editar
E clico na aba "Itens de pedidos"
Quando removo segundo item de pedido
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste42"

Cenario: Editar pedido sem sucesso - alterar embarcador
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste43"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste43"
E clico no botão editar
E verifico se o campo Embarcador é editável
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste43"

Cenario: Editar pedido sem sucesso - alterar origem
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste43"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste43"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E verifico se o campo Origem é editável
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste43"


Cenario: Editar pedido sem sucesso - alterar o produto
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste43"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste43"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E verifico se o campo Produto é editável
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste43"

Cenario: Editar pedido sem sucesso - exclui único item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste44"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste44"
E clico no botão editar
E clico na aba "Itens de pedidos"
Quando removo item de pedido
E clico no botão "Salvar"
Então é exibido a mensagem "Todos os itens de pedido foram deletados."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste44"

Cenario: Editar pedido sem sucesso - exclui destino
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste45"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste45"
E clico no botão editar
Quando removo a localidade de Destino do pedido "DESTDEPPED"
E clico no botão "Salvar"
Então é exibido a mensagem "Localidade de destino é nula."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste45"

Cenario: Editar pedido sem sucesso - data de início de embarque maior que data final de embarque
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste46"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste46"
E clico no botão editar
Quando preencho o início da janela de embarque "01/03/2019"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de coleta 01/03/19 00:00 posterior ao final 10/02/19 23:59."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste46"


Cenario: Editar pedido sem sucesso - data de início da entrega maior que data final de entrega
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste47"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste47"
E clico no botão editar
Quando preencho o fim da janela de entrega "01/02/2019"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de entrega 11/02/19 00:00 posterior ao final 01/02/19 23:59."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste47"

Cenario: Editar pedido sem sucesso - excluir invólucro
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste48"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando preencho a Referência "Referencia pedido"
Quando preencho a Observação "Observacoes pedido"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o Tipo de utilização do hub de passagem "Opcional"
Quando preencho o Hub de passagem "HUBPASSDEPPED"
Quando preencho o Tipo de utilização do hub de destino "Opcional"
Quando preencho o Hub de destino "HUBDESTDEPPED"
Quando preencho a janela de embarque entre "01/02/2019" e "10/02/2019"
Quando preencho a janela de entrega entre "11/02/2019" e "20/02/2019"
Quando preencho a data Limite de faturamento "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando preencho a Referência de item de pedido "Referência item de pedido"
Quando preencho o DSM, MIT e Chave de Proporcionalidade
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste48"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando removo o invólucro do item de pedido
Quando clico no botão Aplicar
E clico no botão "Salvar"
Então é exibido a mensagem "O código do invólucro de unidade de embarque não pode ser nulo ou vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste48"


Cenario: Editar pedido sem sucesso - apagar comprimento do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste49"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste49"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando Preencho as dimensões do item de pedido Comprimento " ", Largura "0,3", Altura "0,3", Peso "1000,00"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Comprimento inválido: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste49"

Cenario: Editar pedido sem sucesso - apagar largura do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste50"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,012 ", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste50"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura " ", Altura "0,3", Peso "1000,00"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Largura inválida: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste50"

Cenario: Editar pedido sem sucesso - apagar altura do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste51"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste51"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura " ", Peso "1000,00"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Altura inválida: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste51"

Cenario: Editar pedido sem sucesso - apagar peso do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste52"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste52"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso " "
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Peso inválido: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste52"

Cenario: Editar pedido sem sucesso - apagar orientações do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste53"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste53"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando desseleciono todas Orientações Permitidas
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Todas as orientações do item estão proibidas no item de pedido Teste53/1."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste53"

Cenario: Editar pedido sem sucesso - apagar quantidade total de produtos
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste54"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho a Prioridade "1"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "5,00", Largura "0,3", Altura "0,3", Peso "1000,00"
Quando preencho o valor "100,00"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste54"
E clico no botão editar
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho a Quantidade total de produtos " "
E clico no botão "Aplicar"
E clico no botão "Salvar"
Entao é exibido a mensagem "Quantidade de produtos na unidade de embarque é inválida: 0.01."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste54"

Cenario: Copiar pedido com sucesso
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste55"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste55"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste55"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste55/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste55"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste55"


Cenario: Copiar pedido com sucesso - mudar tipo logistico para reversa
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste56"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste56"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste56"
Quando clico no botão Tipo de logística "Reversa"
Quando seleciono a localidade de Origem do pedido "ORIGDEPPED"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste56/1"
Quando seleciono a localidade de Destino do item "DESTDEPPED"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste56"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste56"


Cenario: Copiar pedido com sucesso - adiciona um item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste57"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste57"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste57"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste57/1"
E clico no botão "Aplicar"
Quando adiciono segundo item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste57"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste57"

Cenario: Copiar pedido com sucesso - exclui um item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste58"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
Quando adiciono segundo item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste58"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste58"
E clico na aba "Itens de pedidos"
E removo segundo item de pedido
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste58/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste58"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste58"


Cenario: Copiar pedido com sucesso - alterar origem
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste59"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste59"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste59"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste59/1"
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste59"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste59"

Cenario: Copiar pedido com sucesso - alterar produto
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste60"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste60"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste60"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
E preencho o campo Codigo do item de pedido "Copy-Teste60/1"
Quando seleciono o Produto "PRODEPPED02" para o item de pedido
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste60"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste60"

Cenario: Copiar pedido com sucesso - alterar invólucro
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste61"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste61"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste61"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste61/1"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,60", Altura "0,60", Peso "0,9"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste61"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste61"


Cenario: Copiar pedido com sucesso - alterar destino
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste62"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste62"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste62"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste62/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Copy-Teste62"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste62"


Cenario: Copiar pedido sem sucesso - código do pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste63"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste63"
E clico no botão copiar
Quando preencho o campo Codigo " "
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste63/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Código nulo ou vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste63"

Cenario: Copiar pedido sem sucesso - código do item de pedido não preenchido
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste64"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste64"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste64"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido " "
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "O identificador de item de pedido é nulo ."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste64"


Cenario: Copiar pedido sem sucesso - exclui único item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste65"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste65"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste65"
E clico na aba "Itens de pedidos"
Quando removo item de pedido
E clico no botão "Salvar"
Então é exibido a mensagem "O pedido Copy-Teste65 não contém itens."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste65"

Cenario: Copiar pedido sem sucesso - exclui destino
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste66"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste66"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste66"
Quando removo a localidade de Destino do pedido "DESTDEPPED"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste66/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Localidade de destino é nula."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste66"


Cenario: Copiar pedido sem sucesso - data de início de embarque maior que data final de embarque
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste67"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste67"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste67" 
Quando preencho a janela de embarque entre "10/02/2019" e "01/02/2019"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste67/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de coleta 10/02/19 00:00 posterior ao final 01/02/19 23:59."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste67"


Cenario: Copiar pedido sem sucesso - data de início da entrega maior que data final de entrega
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste68"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste68"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste68" 
Quando preencho a janela de entrega entre "20/02/2019" e "11/02/2019"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste68/1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Início da janela de entrega 20/02/19 00:00 posterior ao final 11/02/19 23:59."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste68"


Cenario: Copiar pedido sem sucesso - exclui origem
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste69"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste69"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste69"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste69/1"
Quando removo a localidade de Origem do item de pedido "ORIGDEPPED"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Identificador da localidade de origem nulo no item de pedido Copy-Teste69/1 (do pedido [Copy-Teste69], produto [PRODEPPED01] e embarcador [EMBDEPPED01])."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste69"

Cenario: Copiar pedido sem sucesso - exlcuir produto
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste70"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste70"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste70"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste70/1"
Quando removo o produto do item de pedido
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Identificador do produto é nulo no item de pedido Copy-Teste70/1 (do pedido [Copy-Teste70], produto [] e embarcador [EMBDEPPED01])."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste70"

Cenario: Copiar pedido sem sucesso - exclui invólucro
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste71"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste71"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste71"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste71/1"
Quando removo o invólucro do item de pedido
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "O código do invólucro de unidade de embarque não pode ser nulo ou vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste71"

Cenario: Copiar pedido sem sucesso - apagar comprimento do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste71"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,87", Altura "0,87", Peso "0,365"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste71"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste71"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste71/1"
Quando Preencho as dimensões do item de pedido Comprimento " ", Largura "0,87", Altura "0,87", Peso "0,365"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Comprimento inválido: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste71"

Cenario: Copiar pedido sem sucesso - apagar largura do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste72"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,87", Altura "0,87", Peso "0,365"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste72"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste72"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste72/1"
Quando Preencho as dimensões do item de pedido Comprimento "0,87 ", Largura " ", Altura "0,87", Peso "0,365"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Largura inválida: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste72"

Cenario: Copiar pedido sem sucesso - apagar altura do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste73"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,87", Altura "0,87", Peso "0,365"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste73"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste73"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste73/1"
Quando Preencho as dimensões do item de pedido Comprimento "0,87 ", Largura "0,87", Altura " ", Peso "0,365"
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Altura inválida: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste73"

Cenario: Copiar pedido sem sucesso - apagar peso do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste74"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,87", Altura "0,87", Peso "0,365"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste74"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste74"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste74/1"
Quando Preencho as dimensões do item de pedido Comprimento "0,87 ", Largura "0,87 ", Altura "0,87", Peso " "
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Peso inválido: 0."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste74"

Cenario: Copiar pedido sem sucesso - apagar orientações do item
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste75"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED02"
Quando Preencho as dimensões do item de pedido Comprimento "0,50", Largura "0,87", Altura "0,87", Peso "0,365"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste75"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste75"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste75/1"
Quando desseleciono todas Orientações Permitidas
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Todas as orientações do item estão proibidas no item de pedido Copy-Teste75/1."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste75"

Cenario: Copiar pedido sem sucesso - apagar quantidade total de produtos
Dado que acesso a tela "Programação", "Pedido"
Quando clico no botão Cadastro
Quando preencho o campo Codigo "Teste76"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPED01"
Quando preencho o Inconterm "CIF"
Quando preencho o Tipo de pedido "TIPOPEDIDODEPPED"
Quando seleciono a localidade de Destino do pedido "DESTDEPPED"
Quando preencho o início da janela de embarque "01/02/2019"
Quando preencho o fim da janela de entrega "20/02/2019"
E clico na aba "Itens de pedidos"
Quando adiciono item de pedido
Quando seleciono a localidade de Origem do item "ORIGDEPPED"
Quando seleciono o Produto "PRODEPPED01" para o item de pedido
Quando preencho o Tipo de item de pedido "TIPOITEMDEPPED"
Quando seleciono o Invólucro "INVDEPPED01"
Quando seleciono todas Orientações Permitidas
Quando preencho a Quantidade total de produtos "10"
Quando preencho a Quantidade de UEs "10"
Quando preencho a Quantidade de produtos por UE completa "1"
E clico no botão "Aplicar"
E clico no botão "Salvar"
E clico no botão "OK"
E clico no botão "Voltar"
E filtro pedido com o codigo "Teste76"
E clico no botão copiar
Quando preencho o campo Codigo "Copy-Teste76"
E clico na aba "Itens de pedidos"
E clico no botão editar item de pedido
Quando preencho o campo Codigo do item de pedido "Copy-Teste76/1"
Quando preencho a Quantidade total de produtos " "
E clico no botão "Aplicar"
E clico no botão "Salvar"
Então é exibido a mensagem "Quantidade de produtos na unidade de embarque é inválida: 0.01."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro do Pedido gerado no teste com o codigo "Teste76"

Cenario: Deletar dependências
E que excluo o produto "PRODEPPED01"
E que excluo o produto "PRODEPPED02"
E que excluo o embarcador "EMBDEPPED01"
E que excluo a categoria de produto "CATPRODEPPED"
E que excluo o tipo de pedido "TIPOPEDIDODEPPED"
E que excluo o tipo de item de pedido "TIPOITEMDEPPED"
E que excluo a localidade "ORIGDEPPED"
E que excluo a localidade "DESTDEPPED"
E que excluo a localidade "HUBPASSDEPPED"
E que excluo a localidade "HUBDESTDEPPED"
E que excluo o invólucro "INVDEPPED01"
E que excluo o invólucro "INVDEPPED02"
E que excluo a restrição de localidade "RESLOCDEPPED"