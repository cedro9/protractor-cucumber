#language:pt

@SEB
@FluxosBasicosViagemManualSEB

Funcionalidade: Fluxos Basicos Viagem Manual SEB

# https://neolog.atlassian.net/browse/SEBUPG-266

Cenario: Cadastrar de dependências
Dado que cadastro a restrição de localidade "RESLOCFBVSEB01"
Dado que cadastro o pedido "PEDIDOFBVMSEB01" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB02" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB03" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB04" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB05" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB06" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB07" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB08" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB09" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB10" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB11" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB12" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB13" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB14" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
Dado que cadastro o pedido "PEDIDOFBVMSEB15" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "SEB-UP São Bernardo" origem "SEB-UP Mooca" produto "AS-4467 CABLE" item de pedido "Padrão" e invólucro "Granel" e Hub de destino "HUB - ALIANCA NAVEGACAO E LOGISTICA LTDA"
# Pedido paletização interna
Dado que cadastro a localidade "DESTPFBVSEB02" com papel logistico destino com a restrição de localidade "RESLOCFBVSEB01" e Cep "04571-011"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB02" produto "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Interna"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB02" produto "PJ1509B1 NDG GENIO TIT 127V DGG9" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Interna"
Dado que cadastro o pedido "PEDIDOFBVMSEB16" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB17" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB18" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB19" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB26" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB28" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB02" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "PJ1509B1 NDG GENIO TIT 127V DGG9" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
# Pedido paletização externa
Dado que cadastro a localidade "DESTPFBVSEB03" com papel logistico destino com a restrição de localidade "RESLOCFBVSEB01" e Cep "04571-011"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB03" produto "ML701012 LAVADORA DUPPLA 220V BR PROM" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Externa"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB03" produto "KIT ARNO DOLCE GUSTO VERM 220V" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Externa"
Dado que cadastro o pedido "PEDIDOFBVMSEB20" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB21" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB22" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB23" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB27" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB29" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB03" origem "D931D902" produtos "ML701012 LAVADORA DUPPLA 220V BR PROM" e "KIT ARNO DOLCE GUSTO VERM 220V" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
# Pedido paletização Interna e externa
Dado que cadastro a localidade "DESTPFBVSEB04" com papel logistico destino com a restrição de localidade "RESLOCFBVSEB01" e Cep "04571-011"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB04" produto "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Interna"
Dado que preencho o parâmetro genérico Paletização por Cliente com a localidade "DESTPFBVSEB04" produto "ML701012 LAVADORA DUPPLA 220V BR PROM" quantidade de produtos empilhados "4" quantidade de produtos da base "4" e invólucro "Paletização_Externa"
Dado que cadastro o pedido "PEDIDOFBVMSEB24" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB04" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "ML701012 LAVADORA DUPPLA 220V BR PROM" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "
Dado que cadastro o pedido "PEDIDOFBVMSEB25" do embarcador "SEB" tipo de pedido "Lojas SEB" destino "DESTPFBVSEB04" origem "D931D902" produtos "VE505027 VENT. LAVEO 40CM 220V ME40 EXP" e "ML701012 LAVADORA DUPPLA 220V BR PROM" item de pedido "Padrão" e invólucro "Granel" e Hub de destino " "

Cenario: Viagens geradas sem quebra
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB01"
Quando seleciono o pedido "PEDIDOFBVMSEB01" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB01"
Quando seleciono o pedido "PEDIDOFBVMSEB01" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB01"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB01" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB01"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB01"
Quando seleciono o pedido "PEDIDOFBVMSEB01" na cesta do usuário
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagens geradas com quebra
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB02"
Quando seleciono o pedido "PEDIDOFBVMSEB02" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB02"
Quando seleciono o pedido "PEDIDOFBVMSEB02" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E preencho a quantidade de UE "8"
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB02"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB02" está presente na viagem
Quando clico no botão detalhe do pedido "PEDIDOFBVMSEB02"
Entao verifico se quantidade do produto presente na viagem é de "8"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB02"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB02"
Quando seleciono o pedido "PEDIDOFBVMSEB02" na cesta do usuário
E clico no botão "Mover todas as páginas para a geral"

Cenario: De/Para Cesta>Viagem Existente
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB03"
Quando seleciono o pedido "PEDIDOFBVMSEB03" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB03"
Quando seleciono o pedido "PEDIDOFBVMSEB03" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB04"
Quando seleciono o pedido "PEDIDOFBVMSEB04" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB04"
Quando seleciono o pedido "PEDIDOFBVMSEB04" na cesta do usuário
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB03"
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB03"
Quando seleciono a viagem
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB04" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB03"
Quando seleciono a viagem
Entao cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta : Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB05,PEDIDOFBVMSEB06"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB05,PEDIDOFBVMSEB06"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVMSEB05" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB06" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB05,PEDIDOFBVMSEB06"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando seleciono o pedido "PEDIDOFBVMSEB05" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB06" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB06"
Quando seleciono a viagem
Entao cancelo a viagem
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta : Mover parte UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB07"
Quando seleciono o pedido "PEDIDOFBVMSEB07" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB07"
Quando seleciono o pedido "PEDIDOFBVMSEB07" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB07"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB07" está presente na viagem
Quando seleciono o pedido "PEDIDOFBVMSEB07" na carga
E clico em Mover seleção aqui na cesta do usuário
E preencho a quantidade de UE "5"
E clico no botão OK
E clico no botão "Salvar"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Quando clico no botão detalhe do pedido "PEDIDOFBVMSEB07"
Entao verifico se quantidade do produto presente na viagem é de "5"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB07"
Quando seleciono a viagem
Entao cancelo a viagem
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Cesta: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB08"
Quando seleciono o pedido "PEDIDOFBVMSEB08" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB08"
Quando seleciono o pedido "PEDIDOFBVMSEB08" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB08"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB08" está presente na viagem
Quando seleciono o pedido "PEDIDOFBVMSEB08" na carga
E clico em Mover seleção aqui na cesta do usuário
E clico no botão OK
E clico no botão "Salvar"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover sem cancelar Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB09,PEDIDOFBVMSEB10,PEDIDOFBVMSEB11"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB09,PEDIDOFBVMSEB10,PEDIDOFBVMSEB11"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVMSEB09" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOFBVMSEB10" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB11" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB11"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB11" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB"
E clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "PEDIDOFBVMSEB11" na carga
E clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB09"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB11" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB"
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover parte UT
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB12,PEDIDOFBVMSEB13"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB12,PEDIDOFBVMSEB13"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVMSEB12" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOFBVMSEB13" na cesta do usuário
E clico no botão Minha cesta
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "PEDIDOFBVMSEB13" na carga
Quando clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E preencho a quantidade de UE "5"
E clico no botão OK
E clico no botão "Salvar"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB13" está presente na viagem
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Viagem>Viagem: Mover Cancelando Viagem
Dado que acesso a tela "Programação", "Análise"
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB14,PEDIDOFBVMSEB15"
E clico no botão "Mover todas as páginas para a cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB14,PEDIDOFBVMSEB15"
Quando clico para ser exibido 50 registros
Quando seleciono o pedido "PEDIDOFBVMSEB14" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
Quando seleciono o pedido "PEDIDOFBVMSEB15" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB"
Quando clico em Expandir todos os níveis da viagem
Entao verifico se o pedido "PEDIDOFBVMSEB15" está presente na viagem
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB"
Quando clico em Expandir todos os níveis da viagem
Quando seleciono o pedido "PEDIDOFBVMSEB15" na carga
Quando clico em Contrair todos os níveis da viagem
Quando expando o header da viagem
E clico em Mover seleção aqui da carga
E clico no botão OK
E clico no botão "Salvar"
Quando expando o header da viagem
Quando expando o header da carga
Quando expando o header do destino
Entao verifico se o pedido "PEDIDOFBVMSEB15" está presente na viagem
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 1 - Consolidar automaticamente cargas do invólucro Paletização_Interna 
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB16"
Quando seleciono o pedido "PEDIDOFBVMSEB16" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB16"
Quando seleciono o pedido "PEDIDOFBVMSEB16" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB16"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB16/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB16/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB16"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 2 - Consolidar manualmente cargas do invólucro Paletização_Interna 
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB17"
Quando seleciono o pedido "PEDIDOFBVMSEB17" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB17"
Quando seleciono o pedido "PEDIDOFBVMSEB17" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico no checkbox Unitização automática
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB17"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB17/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB17/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB17"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 3 - Consolidar automaticamente cargas do invólucro Paletização_Interna - Pedidos distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB18,PEDIDOFBVMSEB19"
Quando seleciono o pedido "PEDIDOFBVMSEB18" na cesta geral
Quando seleciono o pedido "PEDIDOFBVMSEB19" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB18,PEDIDOFBVMSEB19"
Quando seleciono o pedido "PEDIDOFBVMSEB18" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB19" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB18,PEDIDOFBVMSEB19"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB18/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB18/2" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB19/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB19/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB18,PEDIDOFBVMSEB19"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 4 - Consolidar automaticamente cargas do invólucro Paletização_Externa
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB20"
Quando seleciono o pedido "PEDIDOFBVMSEB20" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB20"
Quando seleciono o pedido "PEDIDOFBVMSEB20" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB20"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB20/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB20/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB20"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 5 - Consolidar manualmente cargas do invólucro Paletização_Externa
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB21"
Quando seleciono o pedido "PEDIDOFBVMSEB21" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB21"
Quando seleciono o pedido "PEDIDOFBVMSEB21" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico no checkbox Unitização automática
E clico no botão OK
E clico no botão "Salvar"
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB21"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB21/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB21/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB21"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 6 - Consolidar automaticamente cargas do invólucro Paletização_Externa - Pedidos distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB22,PEDIDOFBVMSEB23"
Quando seleciono o pedido "PEDIDOFBVMSEB22" na cesta geral
Quando seleciono o pedido "PEDIDOFBVMSEB23" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB22,PEDIDOFBVMSEB23"
Quando seleciono o pedido "PEDIDOFBVMSEB22" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB23" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB22,PEDIDOFBVMSEB23"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB22/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB22/2" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB23/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB23/2" deve ser exibido na viagem
E verifico que existem UTs composta
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB22,PEDIDOFBVMSEB23"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 7 - Não consolidar automaticamente cargas de invólucros distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB24"
Quando seleciono o pedido "PEDIDOFBVMSEB24" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB24"
Quando seleciono o pedido "PEDIDOFBVMSEB24" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
E verifico que existe o número "2" na coluna Rejeite
Quando eu clicar no botão para exibir a violação
Então o sistema exibe o modal de Violações com as duas mensages "Cargas mistas (palete e granel ou paletização interna e externa) não são permitidas."
E clico no botão "Fechar"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Viagens
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB24"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 8 - Não consolidar automaticamente cargas de invólucros e pedidos distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB26,PEDIDOFBVMSEB27"
Quando seleciono o pedido "PEDIDOFBVMSEB26" na cesta geral
Quando seleciono o pedido "PEDIDOFBVMSEB27" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB26,PEDIDOFBVMSEB27"
Quando seleciono o pedido "PEDIDOFBVMSEB26" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB27" na cesta do usuário
E clico no botão Otimizar
E é exibido a mensagem "Otimização submetida com sucesso"
E clico no botão "OK"
Dado que acesso a tela "Programação", "Otimização"
E clico no botão "Pesquisar"
E verifico se o job está com o status "Concluído"
E verifico que existe o número "2" na coluna Viagens
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB26"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB26/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB26/2" deve ser exibido na viagem
E verifico que existem UTs composta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB27"
Quando clico em Expandir todos os níveis da viagem
Entao o iten de pedido "PEDIDOFBVMSEB27/1" deve ser exibido na viagem
Entao o iten de pedido "PEDIDOFBVMSEB27/2" deve ser exibido na viagem
E verifico que existem UTs composta
Quando filtro a cesta de viagem pelo pedido "PEDIDOFBVMSEB26,PEDIDOFBVMSEB27"
E clico em Selecionar viagens
Entao cancelo a viagem
E clico no botão Minha cesta
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB26,PEDIDOFBVMSEB27"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 9 - Não consolidar manualmente cargas de invólucros distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB25"
Quando seleciono o pedido "PEDIDOFBVMSEB25" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB25"
Quando seleciono o pedido "PEDIDOFBVMSEB25" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico no checkbox Unitização automática
E clico no botão OK
Então o sistema exibe o modal de Violações com a mensagem "Cargas mistas (palete e granel ou paletização interna e externa) não são permitidas."
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenario:SEBUPG-266 10 - Não consolidar manualmente cargas de invólucros e pedidos distintos
Dado que acesso a tela "Programação", "Análise"
Quando altero a visão para Unidades de transporte por Destino
Quando filtro a cesta geral pelo pedido "PEDIDOFBVMSEB28,PEDIDOFBVMSEB29"
Quando seleciono o pedido "PEDIDOFBVMSEB28" na cesta geral
Quando seleciono o pedido "PEDIDOFBVMSEB29" na cesta geral
E clico no botão "Mover pedidos para minha cesta"
E clico no botão Cesta geral
Quando filtro a cesta do usuário pelo pedido "PEDIDOFBVMSEB28,PEDIDOFBVMSEB29"
Quando seleciono o pedido "PEDIDOFBVMSEB28" na cesta do usuário
Quando seleciono o pedido "PEDIDOFBVMSEB29" na cesta do usuário
E clico em Mover seleção aqui na cesta de viagem
E clico no checkbox Usar restrições
E clico no checkbox Unitização automática
E clico no botão OK
Então o sistema exibe o modal de Violações com a mensagem "Cargas mistas (palete e granel ou paletização interna e externa) não são permitidas."
E clico no botão "Fechar"
E clico no botão "Mover todas as páginas para a geral"

Cenario: Excluir dependências
Dado que excluo o pedido "PEDIDOFBVMSEB01"
Dado que excluo o pedido "PEDIDOFBVMSEB02"
Dado que excluo o pedido "PEDIDOFBVMSEB03"
Dado que excluo o pedido "PEDIDOFBVMSEB04"
Dado que excluo o pedido "PEDIDOFBVMSEB05"
Dado que excluo o pedido "PEDIDOFBVMSEB06"
Dado que excluo o pedido "PEDIDOFBVMSEB07"
Dado que excluo o pedido "PEDIDOFBVMSEB08"
Dado que excluo o pedido "PEDIDOFBVMSEB09"
Dado que excluo o pedido "PEDIDOFBVMSEB10"
Dado que excluo o pedido "PEDIDOFBVMSEB11"
Dado que excluo o pedido "PEDIDOFBVMSEB12"
Dado que excluo o pedido "PEDIDOFBVMSEB13"
Dado que excluo o pedido "PEDIDOFBVMSEB14"
Dado que excluo o pedido "PEDIDOFBVMSEB15"
Dado que excluo o pedido "PEDIDOFBVMSEB16"
Dado que excluo o pedido "PEDIDOFBVMSEB17"
Dado que excluo o pedido "PEDIDOFBVMSEB18"
Dado que excluo o pedido "PEDIDOFBVMSEB19"
Dado que excluo o pedido "PEDIDOFBVMSEB20"
Dado que excluo o pedido "PEDIDOFBVMSEB21"
Dado que excluo o pedido "PEDIDOFBVMSEB22"
Dado que excluo o pedido "PEDIDOFBVMSEB23"
Dado que excluo o pedido "PEDIDOFBVMSEB24"
Dado que excluo o pedido "PEDIDOFBVMSEB25"
Dado que excluo o pedido "PEDIDOFBVMSEB26"
Dado que excluo o pedido "PEDIDOFBVMSEB27"
Dado que excluo o pedido "PEDIDOFBVMSEB28"
Dado que excluo o pedido "PEDIDOFBVMSEB29"
Dado que excluo a localidade "DESTPFBVSEB02"
Dado que excluo a localidade "DESTPFBVSEB03"
Dado que excluo a localidade "DESTPFBVSEB04"
Dado que excluo a restrição de localidade "RESLOCFBVSEB01"