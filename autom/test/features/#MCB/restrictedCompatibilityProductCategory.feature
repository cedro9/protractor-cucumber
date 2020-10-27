#language:pt

@MCB
@restrictedCompatibilityProductCategory

Funcionalidade: Categoria de produto com compatibilidade restrita
# https://neolog.atlassian.net/browse/MCA-255

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPRCPC"
Dado que cadastro a categoria de produto "CATPRODDEPRCPC01"
Dado que cadastro a categoria de produto "CATPRODDEPRCPC02"
Dado que preencho o parâmetro genérico categoria de produto com compatibilidade restrita, restringindo as categorias "CATPRODDEPRCPC01" e "CATPRODDEPRCPC02"
Dado que cadastro o produto "PRODEPRCPC01" com a categoria "CATPRODDEPRCPC01" e embarcador "EMBDEPRCPC"
Dado que cadastro o produto "PRODEPRCPC02" com a categoria "CATPRODDEPRCPC02" e embarcador "EMBDEPRCPC"
Dado que cadastro o tipo de pedido "TIPOPEDDEPRCPC"
Dado que cadastro o tipo de item de pedido "ITEMPEDDEPRCPC"
Dado que cadastro o invólucro "INVDEPRCPC" com politicas definidas no produto
Dado que cadastro a restrição de localidade "RESLOCDEPRCPC"
Dado que cadastro a origem "ORIDEPRCPC" com a restrição de localidade "RESLOCDEPRCPC" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPRCPC01" com a restrição de localidade "RESLOCDEPRCPC" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPRCPC02" com a restrição de localidade "RESLOCDEPRCPC" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESTDEPRCPC" com a restrição de localidade "RESLOCDEPRCPC" e Cep "76820-408"
Dado que cadastro o pedido "PEDIDODEPRCPC01" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC01" origem "ORIDEPRCPC" produto "PRODEPRCPC01" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPRCPC02" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC02" origem "ORIDEPRCPC" produto "PRODEPRCPC02" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPRCPC03" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC01" origem "ORIDEPRCPC" produto "PRODEPRCPC01" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino "HUBDESTDEPRCPC"
Dado que cadastro o pedido "PEDIDODEPRCPC04" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC02" origem "ORIDEPRCPC" produto "PRODEPRCPC02" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino "HUBDESTDEPRCPC"
Dado que cadastro o pedido "PEDIDODEPRCPC05" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC01" origem "ORIDEPRCPC" produto "PRODEPRCPC01" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino " "
Dado que cadastro o pedido "PEDIDODEPRCPC06" do embarcador "EMBDEPRCPC" tipo de pedido "TIPOPEDDEPRCPC" destino "DESTDEPRCPC01" origem "ORIDEPRCPC" produto "PRODEPRCPC02" item de pedido "ITEMPEDDEPRCPC" e invólucro "INVDEPRCPC" e Hub de destino " "
Dado que adiciono ao contexto de otimização "MCB_DEF" o pré-validador de otimização "MCBAllowedRestrictedCompatibilityProductCategoriesValidatorFactory" com a ordem "100"

Cenário: Operação manual com pedidos de destinos diferentes e que os respectivos produtos sejão de categorias restritas entre si - Violação deve ser apresentada
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPRCPC01,PEDIDODEPRCPC02"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRCPC01,PEDIDODEPRCPC02"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "As categorias de produto CATPRODDEPRCPC01, CATPRODDEPRCPC02 são restritamente compatíveis, portanto devem possuir o mesmo local de descarregamento."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedidos que vão para hub de destinos e que os respectivos produtos sejão de categorias restritas entre si - Violação não deve ser apresentada
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPRCPC03,PEDIDODEPRCPC04"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRCPC03,PEDIDODEPRCPC04"
E altero a estratégia de seleção de destino para Hub de destino mais proximo possíveis do pedido
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Operação manual com pedidos que vão para hub de destinos e que os respectivos produtos sejão de categorias restritas entre si - Violação não deve ser apresentada
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPRCPC05,PEDIDODEPRCPC06"
E clico no botão Mover todas as páginas para a cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPRCPC05,PEDIDODEPRCPC06"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Excluir dependências
Dado que excluo o pedido "PEDIDODEPRCPC01"
Dado que excluo o pedido "PEDIDODEPRCPC02"
Dado que excluo o pedido "PEDIDODEPRCPC03"
Dado que excluo o pedido "PEDIDODEPRCPC04"
Dado que excluo o pedido "PEDIDODEPRCPC05"
Dado que excluo o pedido "PEDIDODEPRCPC06"
Dado que excluo a localidade "HUBDESTDEPRCPC"
Dado que excluo a localidade "DESTDEPRCPC01"
Dado que excluo a localidade "DESTDEPRCPC02"
Dado que excluo a localidade "ORIDEPRCPC"
Dado que excluo a restrição de localidade "RESLOCDEPRCPC"
Dado que excluo o invólucro "INVDEPRCPC"
Dado que excluo o tipo de item de pedido "ITEMPEDDEPRCPC"
Dado que excluo o tipo de pedido "TIPOPEDDEPRCPC"
Dado que excluo o produto "PRODEPRCPC01"
Dado que excluo o produto "PRODEPRCPC02"
Dado que excluo a categoria de produto "CATPRODDEPRCPC01"
Dado que excluo a categoria de produto "CATPRODDEPRCPC02"
Dado que excluo o embarcador "EMBDEPRCPC"