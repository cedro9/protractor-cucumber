#language:pt

@WHP
@FluxosPCWHP

Funcionalidade: Fluxos Partner Collaborantion

Cenario: Cadastrar de dependências
Dado que cadastro o caminhão "DEP-1234" do veículo "CBX" da transportadora "Cruzado (RCL)-Produção"
Dado que cadastro o caminhão "DEP-1235" do veículo "CBX 14,7" da transportadora "Cruzado (RCL)-Produção"
Dado que cadastro a viagem para o pedido "AUTOMTESTE170" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE173" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE176" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE179" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE182" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE185" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE188" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE191" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que cadastro a viagem para o pedido "AUTOMTESTE194" com a transportadora "Cruzado (RCL)-Produção" e veículo "CBX"
Dado que o pool de oferta está desligado

Cenario: Ofertar Cargas para o PC
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE170"
Entao verifico se a viagem está com o status "Distribuída"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
E seleciono a viagem
E cancelo a oferta da viagem

Cenario: Cancelar ofertas de Cargas para o PC
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE173"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
E seleciono a viagem
E cancelo a oferta da viagem
Entao verifico se a viagem está com o status "Oferta cancelada"

Cenario: Atribuir transportadora à viagem Rejeitada
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE176"
E seleciono a viagem
E oferto a viagem
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE176"
E seleciono a viagem
E clico no botão "Rejeitar"
E preencho a justificativa de rejeite "Auto recusa devido a obrigatoriedade da placa do caminhao"
E clico no botão OK
E é exibido a mensagem "Viagem rejeitada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE176"
Entao verifico se a viagem está com o status "Ofertada (Recusada)"
E seleciono a viagem
E atribuo a viagem para a transportadora "Cruzado (RCL)-Produção"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E clico no botão "OK"
Entao verifico se a viagem está com o status "Ofertada (Atribuída)"
Entao verifico a transportadora da viagem "Cruzado (RCL)-Produção"

Cenario: Aceitar oferta de cargas
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE179"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE179"
E seleciono a viagem
E clico no botão "Aceitar"
E clico no botão "Salvar"
E na mensagem "Atenção" clico no botão "Aceitar"
E clico no botão "OK"
E é exibido a mensagem "Operação realizada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE179"
Entao verifico se a viagem está com o status "Ofertada (Aceita)"
E seleciono a viagem
E cancelo a oferta da viagem

Cenario: Rejeitar oferta de cargas
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE182"
E seleciono a viagem
E oferto a viagem
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE182"
E seleciono a viagem
E clico no botão "Rejeitar"
E preencho a justificativa de rejeite "Auto recusa devido a obrigatoriedade da placa do caminhao"
E clico no botão OK
E é exibido a mensagem "Viagem rejeitada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE182"
Entao verifico se a viagem está com o status "Ofertada (Recusada)"
E seleciono a viagem
E cancelo a oferta da viagem

Cenario: Placa Nova
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE185"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE185"
E seleciono a viagem
E clico no botão "Aceitar"
E clico no botão "Cadastrar caminhão"
E preencho o campo placa "ABC-1234"
E preencho o campo país do caminhão "Brasil"
E preencho o campo estado do caminhão "São Paulo"
E preencho o campo cidade do caminhão "Guarulhos"
E preencho o campo situação do caminhão "Agregado"
E na mensagem "Cadastro de caminhão" clico no botão "Salvar"
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E preencho o campo caminhão "ABC-1234"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E é exibido a mensagem "Edição feita com sucesso"
E clico no botão "OK"
E é exibido a mensagem "Operação realizada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE185"
Entao verifico se a viagem está com o status "Ofertada (Aceita)"
E seleciono a viagem
E cancelo a oferta da viagem

Cenario: Placa existente
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE188"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE188"
E seleciono a viagem
E clico no botão "Aceitar"
E preencho o campo caminhão "DEP-1234"
E clico no botão "Salvar"
E na mensagem "Violações" clico no botão "Salvar"
E é exibido a mensagem "Edição feita com sucesso"
E clico no botão "OK"
E é exibido a mensagem "Operação realizada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE188"
Entao verifico se a viagem está com o status "Ofertada (Aceita)"
E seleciono a viagem
E cancelo a oferta da viagem
E que excluo o caminhão "ABC-1234"

Cenario: Ao Associar a Placa de veículo diferente o veículo original
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE191"
E seleciono a viagem
E oferto a viagem
Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
Dado que acesso a tela "Programação", "Partner collaboration"
E filtro a cesta de viagem pelo pedido "AUTOMTESTE191"
E seleciono a viagem
E clico no botão "Aceitar"
E preencho o campo caminhão "DEP-1235"
E clico no botão "Salvar"
E é exibido a mensagem O veículo é diferente do esperado veículo da viagem
E na mensagem "Atenção" clico no botão "Aceitar"
E na mensagem "Violações" clico no botão "Salvar"
E é exibido a mensagem "Edição feita com sucesso"
E clico no botão "OK"
E é exibido a mensagem "Operação realizada com sucesso."
E clico no botão "OK"
Dado que acesso a tela "Programação", "Análise"
E clico no botão Cesta geral
E clico no botão Minha cesta
E filtro a cesta de viagem pelo pedido "AUTOMTESTE191"
Entao verifico se a viagem está com o status "Ofertada (Aceita)"
E seleciono a viagem
E cancelo a oferta da viagem

#Pendências:

# Cenario: Envio de email para Oferta de Viagem
# Dado que acesso a tela "Programação", "Análise"
# E clico no botão Cesta geral
# E clico no botão Minha cesta
# E filtro a cesta de viagem pelo pedido "AUTOMTESTE194"
# E seleciono a viagem
# E oferto a viagem
# Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
# E verifico se o email de oferta foi enviado
# E limpo a caixa de email

# Cenario: Envio de email para Cancelamento de Oferta de Viagem
# Dado que acesso a tela "Programação", "Análise"
# E clico no botão Cesta geral
# E clico no botão Minha cesta
# E filtro a cesta de viagem pelo pedido "AUTOMTESTE194"
# E seleciono a viagem
# E cancelo a oferta da viagem
# Entao verifico se a viagem está com o status "Oferta cancelada"
# E verifico se o email de cancelamento de oferta foi enviado
# E limpo a caixa de email

# Cenario: Envio de email para Atribuição de Transportadora no fluxo de Oferta seguido de Rejeite de Oferta de Viagem
# Dado que acesso a tela "Programação", "Análise"
# E clico no botão Cesta geral
# E clico no botão Minha cesta
# E filtro a cesta de viagem pelo pedido "AUTOMTESTE194"
# E seleciono a viagem
# E oferto a viagem
# Entao verifico se a viagem está com o status "Ofertada (Aguardando)"
# Dado que acesso a tela "Programação", "Partner collaboration"
# E filtro a cesta de viagem pelo pedido "AUTOMTESTE194"
# E seleciono a viagem
# E clico no botão "Rejeitar"
# E preencho a justificativa de rejeite "Auto recusa devido a obrigatoriedade da placa do caminhao"
# E clico no botão OK
# Entao é exibido a mensagem "Viagem rejeitada com sucesso."
# E clico no botão OK
# E limpo a caixa de email

# Cenario: Envio de email para Atribuição de Transportadora no fluxo de Oferta seguido de Rejeite de Oferta de Viagem
# Dado que acesso a tela "Programação", "Análise"
# E clico no botão Cesta geral
# E clico no botão Minha cesta
# E filtro a cesta de viagem pelo pedido "AUTOMTESTE194"
# Entao verifico se a viagem está com o status "Ofertada (Recusada)"
# E atribuo a viagem para a transportadora "Cruzado (RCL)-Produção"
# E clico no botão "Salvar"
# E na mensagem "Violações" clico no botão "Salvar"
# Entao é exibido a mensagem "Atribuição feita com sucesso"
# E verifico se a viagem está com o status "Ofertada (Atribuída)"
# E clico no botão "OK"
# E seleciono a viagem
# E cancelo a oferta da viagem
# E verifico se o email de atribuição de oferta foi enviado

# Cenario: Validar recebimento de e-mails
# Entao verifico se o email de oferta foi enviado
# E verifico se o email de cancelamento de oferta foi enviado
# E verifico se o email de atribuição de oferta foi enviado

Cenario: Excluir dependências
Dado que excluo a viagem "AUTOMTESTE170"
Dado que excluo a viagem "AUTOMTESTE173"
Dado que excluo a viagem "AUTOMTESTE176"
Dado que excluo a viagem "AUTOMTESTE179"
Dado que excluo a viagem "AUTOMTESTE182"
Dado que excluo a viagem "AUTOMTESTE185"
Dado que excluo a viagem "AUTOMTESTE188"
Dado que excluo a viagem "AUTOMTESTE191"
Dado que excluo a viagem "AUTOMTESTE194"
Dado que excluo o caminhão "DEP-1234"
Dado que excluo o caminhão "DEP-1235"