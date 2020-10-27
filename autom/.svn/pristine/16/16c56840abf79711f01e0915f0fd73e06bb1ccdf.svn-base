#language:pt

@MCB
@maxWrapperQuantityByCompositeWrapperGenericParam

Funcionalidade: Parâmetro Quantidade máxima de invólucros por invólucro composto
# https://neolog.atlassian.net/browse/MCA-120

Cenário: Cadastro de dependências
Dado que cadastro o invólucro "INVSIMPDEPQMIPIC01" com politicas definidas no produto
Dado que cadastro o invólucro "INVSIMPDEPQMIPIC02" com politicas definidas no produto
Dado que cadastro o invólucro composto "INVCOMPDEPQMIPIC01"
Dado que cadastro o invólucro composto "INVCOMPDEPQMIPIC02"

Cenário: Preencher parâmetro sem sucesso - Com invólucro simples não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Invólucro Simples é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Com invólucro composto não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Invólucro composto é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Com quantidade não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Quantidade Máxima é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro com sucesso - inserir um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Invólucro Simples
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC01", invólucro Composto "INVCOMPDEPQMIPIC01" e Quantidade Máxima "5"
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC02"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC02", invólucro Composto "INVCOMPDEPQMIPIC01" e Quantidade Máxima "5"
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Invólucro Composto
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC01", invólucro Composto "INVCOMPDEPQMIPIC01" e Quantidade Máxima "5"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC02"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC01", invólucro Composto "INVCOMPDEPQMIPIC02" e Quantidade Máxima "5"
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Quantidade
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPQMIPIC01"
E preencho o campo invólucro composto "INVCOMPDEPQMIPIC01"
E preencho o campo quantidade máxima "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC01", invólucro Composto "INVCOMPDEPQMIPIC01" e Quantidade Máxima "5"
E preencho o campo quantidade máxima "10"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPQMIPIC01", invólucro Composto "INVCOMPDEPQMIPIC01" e Quantidade Máxima "10"
E excluo o registro do parâmetro

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E importo a planilha "MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de invólucros por invólucro composto"
E verifico se o parâmetro Quantidade máxima de invólucros por invólucro composto está preenchido
E importo a planilha "MaxQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapperDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo o invólucro "INVSIMPDEPQMIPIC01"
Dado que excluo o invólucro "INVSIMPDEPQMIPIC02"
Dado que excluo o invólucro "INVCOMPDEPQMIPIC01"
Dado que excluo o invólucro "INVCOMPDEPQMIPIC02"