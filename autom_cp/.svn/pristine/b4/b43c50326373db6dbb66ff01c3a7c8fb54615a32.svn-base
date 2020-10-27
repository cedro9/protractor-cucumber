#language:pt

@MCB
@allowedShipmentUnitWrapperCategoryByContext

Funcionalidade: Categorias de invólucro permitidas por contexto de unitização

Cenário: Cadastro de dependências
Dado que cadastro um contexto de unitização "DEF"
Dado que cadastro um contexto de unitização "DEF2"

Cenário: Preencher parametro sem sucesso - Com contexto de unitização não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o campo categoria de invólucro "Palete"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Contexto de unitização é inválido (o campo é obrigatório)."

Cenário: Preencher parametro sem sucesso - Com categoria de invólucro não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o campo contexto de unitização "DEF"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Categoria de invólucro é inválido (o campo é obrigatório)."

Cenário: Preencher parametro com sucesso - inserir um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o campo contexto de unitização "DEF"
E preencho o campo categoria de invólucro "Palete"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico AllowedShipmentUnitWrapperCategoryByContext foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo contexto de unitização
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o campo contexto de unitização "DEF"
E preencho o campo categoria de invólucro "Palete"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Contexto de unitização "DEF" e Categoria de invólucro "Palete"
E preencho o campo contexto de unitização "DEF2"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico AllowedShipmentUnitWrapperCategoryByContext foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Contexto de unitização "DEF2" e Categoria de invólucro "Palete"
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo categoria de invólucro
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o campo contexto de unitização "DEF"
E preencho o campo categoria de invólucro "Palete"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E filtro o parâmetro por Contexto de unitização "DEF" e Categoria de invólucro "Palete"
E preencho o campo categoria de invólucro "Granel Unit"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico AllowedShipmentUnitWrapperCategoryByContext foi salvo com sucesso."
E clico no botão OK
E filtro o parâmetro por Contexto de unitização "DEF" e Categoria de invólucro "Granel Unit"
E excluo o registro do parâmetro

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E importo a planilha "AllowedShipmentUnitWrapperCategoryByContext" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E verifico se o parâmetro Categorias de invólucro permitidas por contexto de unitização está preenchido
E importo a planilha "AllowedShipmentUnitWrapperCategoryByContextDelete" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Categorias de invólucro permitidas por contexto de unitização"
E altero para o modo de edição por tabela
E verifico se o parâmetro Categorias de invólucro permitidas por contexto de unitização não está preenchido

Cenário: Excluir dependências
Dado que excluo o contexto de unitização "DEF"
Dado que excluo o contexto de unitização "DEF2"