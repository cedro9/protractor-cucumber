#language:pt

@MCB
@minWrapperQuantityByCompositeWrapperGenericParam

Funcionalidade: Parâmetro Genérico Quantidade mínima de invólucros por invólucro composto
# https://neolog.atlassian.net/browse/MCA-108

Cenário: Cadastro de dependências
Dado que cadastro o invólucro "INVSIMPDEPMWQBCWGP01" com politicas definidas no produto
Dado que cadastro o invólucro "INVSIMPDEPMWQBCWGP02" com politicas definidas no produto
Dado que cadastro o invólucro composto "INVCOMPDEPMWQBCWGP01"
Dado que cadastro o invólucro composto "INVCOMPDEPMWQBCWGP02"

Cenário: Preencher parametro sem sucesso - Com invólucro simples não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Invólucro Simples é inválido (o campo é obrigatório)."

Cenário: Preencher parametro sem sucesso - Com invólucro composto não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Invólucro composto é inválido (o campo é obrigatório)."

Cenário: Preencher parametro sem sucesso - Com quantidade não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Quantidade Mínima é inválido (o campo é obrigatório)."

Cenário: Preencher parametro com sucesso - inserir um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Invólucro Simples
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP01", invólucro Composto "INVCOMPDEPMWQBCWGP01" e Quantidade "5"
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP02"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP02", invólucro Composto "INVCOMPDEPMWQBCWGP01" e Quantidade "5"
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Invólucro Composto
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP01", invólucro Composto "INVCOMPDEPMWQBCWGP01" e Quantidade "5"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP02"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP01", invólucro Composto "INVCOMPDEPMWQBCWGP02" e Quantidade "5"
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Quantidade
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E adiciono uma nova linha
E preencho o campo invólucro simples "INVSIMPDEPMWQBCWGP01"
E preencho o campo invólucro composto "INVCOMPDEPMWQBCWGP01"
E preencho o campo quantidade "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP01", invólucro Composto "INVCOMPDEPMWQBCWGP01" e Quantidade "5"
E preencho o campo quantidade "10"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Invólucro Simples "INVSIMPDEPMWQBCWGP01", invólucro Composto "INVCOMPDEPMWQBCWGP01" e Quantidade "10"
E excluo o registro do parâmetro

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E importo a planilha "MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapper" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E verifico se o parâmetro Quantidade mínima de invólucros por invólucro composto está preenchido
E importo a planilha "MinQuantityOfShipmentUnitWrappersByCompositeShipmentUnitWrapperDelete" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade mínima de invólucros por invólucro composto"
E verifico se o parâmetro Quantidade mínima de invólucros por invólucro composto não está preenchido

Cenário: Excluir dependências
Dado que excluo o invólucro "INVSIMPDEPMWQBCWGP01"
Dado que excluo o invólucro "INVSIMPDEPMWQBCWGP02"
Dado que excluo o invólucro "INVCOMPDEPMWQBCWGP01"
Dado que excluo o invólucro "INVCOMPDEPMWQBCWGP02"