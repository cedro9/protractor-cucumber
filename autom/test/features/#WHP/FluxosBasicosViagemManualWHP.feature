#language:pt

@WHP
@FluxosBasicosViagemManualWHP

Funcionalidade: Fluxos Basicos Viagem Manual

Cenario: Viagens geradas sem quebra
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE32"
Quando seleciono o pedido "AUTOMTESTE32" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE32"
Quando seleciono o pedido "AUTOMTESTE32" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE32"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE32" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE32"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE32"
Quando seleciono o pedido "AUTOMTESTE32" na cesta do usuário
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagens geradas com quebra
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE41"
Quando seleciono o pedido "AUTOMTESTE41" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE41"
Quando seleciono o pedido "AUTOMTESTE41" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E preencho a quantidade de UE "8"
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE41"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE41" está presente na viagem
Quando clico no botão detalhe do pedido "AUTOMTESTE41"
Entao verifico se quantidade do produto presente na viagem é de "8"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE41"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE41"
Quando seleciono o pedido "AUTOMTESTE41" na cesta do usuário
E clico no botão "Mover todas as páginas para a geral"

Cenario: Selecionando os dados especificadamente (com restrições)
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE44"
Quando seleciono o pedido "AUTOMTESTE44" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE44"
Quando seleciono o pedido "AUTOMTESTE44" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico na aba "Restrições"
Quando seleciono o Tipo de serviço "Completa"
Quando seleciono o Veículo "Padrao"
Quando seleciono a Transportadora "Default"
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE44"
Quando expando o header da viagem
Entao verifico o veículo da viagem "Padrao"
Entao verifico a transportadora da viagem "Default"
Entao verifico o tipo de serviço da carga "Completa"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE44"
E clico no botão "Mover todas as páginas para a geral"

Cenario: De/Para Cesta>Viagem Existente
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE47"
Quando seleciono o pedido "AUTOMTESTE47" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE47"
Quando seleciono o pedido "AUTOMTESTE47" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE35"
Quando seleciono o pedido "AUTOMTESTE35" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE35"
Quando seleciono o pedido "AUTOMTESTE35" na cesta do usuário
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE47"
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE47"
Quando seleciono a viagem
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE35" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE47"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta : Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE50,AUTOMTESTE53"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE50,AUTOMTESTE53"
Quando seleciono o pedido "AUTOMTESTE50" na cesta do usuário
Quando seleciono o pedido "AUTOMTESTE53" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "AUTOMTESTE50" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE53" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE53"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta : Mover parte UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE56"
Quando seleciono o pedido "AUTOMTESTE56" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE56"
Quando seleciono o pedido "AUTOMTESTE56" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE56"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE56" está presente na viagem
Quando seleciono o pedido "AUTOMTESTE56" na carga
E clico em Mover seleção aqui na cesta do usuário
E preencho a quantidade de UE "5"
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Quando clico no botão detalhe do pedido "AUTOMTESTE56"
Entao verifico se quantidade do produto presente na viagem é de "5"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE56"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão OK
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE59"
Quando seleciono o pedido "AUTOMTESTE59" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE59"
Quando seleciono o pedido "AUTOMTESTE59" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE59"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE59" está presente na viagem
Quando seleciono o pedido "AUTOMTESTE59" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE62,AUTOMTESTE65,AUTOMTESTE68"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE62,AUTOMTESTE65,AUTOMTESTE68"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "AUTOMTESTE62" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "AUTOMTESTE65" na cesta do usuário
Quando seleciono o pedido "AUTOMTESTE68" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE68"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE68" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE"
E clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "AUTOMTESTE68" na carga
E clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE68"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE68" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE"
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão OK
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover parte UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE71,AUTOMTESTE74"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE71,AUTOMTESTE74"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "AUTOMTESTE71" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "AUTOMTESTE74" na cesta do usuário
E clico no botão Minha cesta
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "AUTOMTESTE74" na carga
Quando clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E preencho a quantidade de UE "5"
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE74" está presente na viagem
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão OK
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE77,AUTOMTESTE80"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE77,AUTOMTESTE80"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "AUTOMTESTE77" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "AUTOMTESTE80" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE80" está presente na viagem
Quando seleciono o pedido "AUTOMTESTE80" na carga
Quando clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "AUTOMTESTE80" está presente na viagem
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão OK
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Otimização manual: Otimização simples com uma unica UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "AUTOMTESTE38"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE38"
Quando seleciono o pedido "AUTOMTESTE38" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão OK
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta de viagem pelo pedido "AUTOMTESTE38"
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão OK
Quando filtro a cesta do usuário pelo pedido "AUTOMTESTE38"
E clico no botão "Mover todas as páginas para a geral"