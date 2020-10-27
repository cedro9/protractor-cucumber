#language:pt

@MCB
@hazardousToNonHazardousProductCompatibility

Funcionalidade: Restrição de compatibilidade de produto perigoso com não perigoso
# https://neolog.atlassian.net/browse/MCA-46

Cenário: Cadastro de dependências
Dado que libero todas as tarefas de geolocalização
Dado que cadastro a classificação "CLADEPCEOPPCQEA" do tipo "Classe de risco"
Dado que cadastro o tipo de pedido "TIPOPEDIDODEPHTNHPC"
Dado que cadastro o tipo de item de pedido "TIPOITEMDEPHTNHPC"
Dado que cadastro a restrição de localidade "RESTLOCDEPHTNHPC"
Dado que cadastro a origem "LOCORIGEMDEPHTNHPC" com a restrição de localidade "RESTLOCDEPHTNHPC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPHTNHPC01" com a restrição de localidade "RESTLOCDEPHTNHPC" e Cep "08061-020"
Dado que cadastro o destino "LOCDESTDEPHTNHPC02" com a restrição de localidade "RESTLOCDEPHTNHPC" e Cep "05132-090"
Dado que cadastro a categoria de produto "CATPRODDEPHTNHPC01" com classificação compatibilidade de produto perigoso com não perigoso "Sem restrição"
Dado que cadastro a categoria de produto "CATPRODDEPHTNHPC02" com classificação compatibilidade de produto perigoso com não perigoso "Mesmo cliente"
Dado que cadastro a categoria de produto "CATPRODDEPHTNHPC03" com classificação compatibilidade de produto perigoso com não perigoso "Não mistura"
Dado que cadastro o embarcador "EMBDEPHTNHPC"
Dado que cadastro o produto "PRODDEPHTNHPC01" com a categoria "CATPRODDEPHTNHPC01" e embarcador "EMBDEPHTNHPC" e classificação classe de risco "CLADEPCEOPPCQEA"
Dado que cadastro o produto "PRODDEPHTNHPC02" com a categoria "CATPRODDEPHTNHPC02" e embarcador "EMBDEPHTNHPC" e classificação classe de risco "CLADEPCEOPPCQEA"
Dado que cadastro o produto "PRODDEPHTNHPC03" com a categoria "CATPRODDEPHTNHPC03" e embarcador "EMBDEPHTNHPC" e classificação classe de risco "CLADEPCEOPPCQEA"
Dado que cadastro o produto "PRODDEPHTNHPC04" com a categoria "CATPRODDEPHTNHPC01" e embarcador "EMBDEPHTNHPC" e classificação classe de risco "N/A"
Dado que cadastro o invólucro "INVDEPHTNHPC" com politicas definidas no produto
Dado que cadastro o pedido "PEDIDODEPHTNHPC01" do embarcador "EMBDEPHTNHPC" tipo de pedido "TIPOPEDIDODEPHTNHPC" destino "LOCDESTDEPHTNHPC01" origem "LOCORIGEMDEPHTNHPC" produto "PRODDEPHTNHPC01" item de pedido "TIPOITEMDEPHTNHPC" e invólucro "INVDEPHTNHPC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPHTNHPC02" do embarcador "EMBDEPHTNHPC" tipo de pedido "TIPOPEDIDODEPHTNHPC" destino "LOCDESTDEPHTNHPC01" origem "LOCORIGEMDEPHTNHPC" produto "PRODDEPHTNHPC02" item de pedido "TIPOITEMDEPHTNHPC" e invólucro "INVDEPHTNHPC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPHTNHPC03" do embarcador "EMBDEPHTNHPC" tipo de pedido "TIPOPEDIDODEPHTNHPC" destino "LOCDESTDEPHTNHPC02" origem "LOCORIGEMDEPHTNHPC" produto "PRODDEPHTNHPC03" item de pedido "TIPOITEMDEPHTNHPC" e invólucro "INVDEPHTNHPC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPHTNHPC04" do embarcador "EMBDEPHTNHPC" tipo de pedido "TIPOPEDIDODEPHTNHPC" destino "LOCDESTDEPHTNHPC01" origem "LOCORIGEMDEPHTNHPC" produto "PRODDEPHTNHPC04" item de pedido "TIPOITEMDEPHTNHPC" e invólucro "INVDEPHTNHPC" e classificação "Não exige agendamento"
Dado que cadastro o pedido "PEDIDODEPHTNHPC05" do embarcador "EMBDEPHTNHPC" tipo de pedido "TIPOPEDIDODEPHTNHPC" destino "LOCDESTDEPHTNHPC02" origem "LOCORIGEMDEPHTNHPC" produto "PRODDEPHTNHPC04" item de pedido "TIPOITEMDEPHTNHPC" e invólucro "INVDEPHTNHPC" e classificação "Não exige agendamento"
Dado que adiciono ao contexto de otimização "MCB_DEF" o pré-validador de otimização "Compatibilidade de produto perigoso com não perigoso" com a ordem "100"
Dado que configuro o validador de pré-restrição "Compatibilidade de produto perigoso com não perigoso" no contexto de unitização "Unitização Palete"
Dado que adiciono ao contexto de otimização "MCB_DEF" o validador de seleção "Validador de tipo de serviço - Mcassab"

Cenario: Restrição de carregamento com sucesso: Pode misturar produto perigoso com não perigoso sem restrição de quantidade de clientes - Mesma localidade - Categorias de produto: 103, 104, 115A, 116M, 123M
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC04"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC04"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento com sucesso: Pode misturar produto perigoso com não perigoso sem restrição de quantidade de clientes - Localidades distintas - Categorias de produto: 103, 104, 115A, 116M, 123M
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC05"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC05"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento com sucesso: Pode misturar produto perigoso com não perigoso contanto que seja para um cliente apenas - Mesma localidade - Categorias de produto: 118, 119, 120, 1021, 113M
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC04"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC04"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento sem sucesso: Pode misturar produto perigoso com não perigoso contanto que seja para um cliente apenas - Localidades distintas - Categorias de produto: 118, 119, 120, 1021, 113M
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC05"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC05"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O produto PRODDEPHTNHPC02 pode somente ser misturado entre produtos perigosos com não perigosos caso seja 1 cliente apenas."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento sem sucesso: Não mistura produto perigoso com não perigoso de mesma localidade - Categorias de produto: 1022, 101P, 113P, 115P, 117P, 121P, 122P
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC03,PEDIDODEPHTNHPC05"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC03,PEDIDODEPHTNHPC05"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem de violação que contem "O produto PRODDEPHTNHPC03 não é compatível para se misturar entre produtos perigosos com não perigosos."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento com sucesso: Mistura produto perigoso com perigoso de mesma localidade - Categorias de produto: 1022, 101P, 113P, 115P, 117P, 121P, 122P
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC02"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC01,PEDIDODEPHTNHPC02"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenario: Restrição de carregamento com sucesso: Mistura produto perigoso com perigoso de outra localidade - Categorias de produto: 1022, 101P, 113P, 115P, 117P, 121P, 122P
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC03"
E clico no botão "Mover todas as páginas para a cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDODEPHTNHPC02,PEDIDODEPHTNHPC03"
E realizo operação manual em todas as páginas com o contexto "MCB_DEF"
E clico no botão OK
Então é exibido uma mensagem que contem "Não foram geradas violações."
E clico em Cancelar
E clico no botão Mover Todas as paginas para Geral

Cenário: Exclusão de cadastros de dependências
Dado que excluo o pedido "PEDIDODEPHTNHPC01"
Dado que excluo o pedido "PEDIDODEPHTNHPC02"
Dado que excluo o pedido "PEDIDODEPHTNHPC03"
Dado que excluo o pedido "PEDIDODEPHTNHPC04"
Dado que excluo o pedido "PEDIDODEPHTNHPC05"
Dado que excluo o produto "PRODDEPHTNHPC01"
Dado que excluo o produto "PRODDEPHTNHPC02"
Dado que excluo o produto "PRODDEPHTNHPC03"
Dado que excluo o produto "PRODDEPHTNHPC04"
Dado que excluo o invólucro "INVDEPHTNHPC"
Dado que excluo o tipo de pedido "TIPOPEDIDODEPHTNHPC"
Dado que excluo o tipo de item de pedido "TIPOITEMDEPHTNHPC"
Dado que excluo a categoria de produto "CATPRODDEPHTNHPC01"
Dado que excluo a categoria de produto "CATPRODDEPHTNHPC02"
Dado que excluo a categoria de produto "CATPRODDEPHTNHPC03"
Dado que excluo o embarcador "EMBDEPHTNHPC"
Dado que excluo a localidade "LOCORIGEMDEPHTNHPC"
Dado que excluo a localidade "LOCDESTDEPHTNHPC01"
Dado que excluo a localidade "LOCDESTDEPHTNHPC02"
Dado que excluo a restrição de localidade "RESTLOCDEPHTNHPC"