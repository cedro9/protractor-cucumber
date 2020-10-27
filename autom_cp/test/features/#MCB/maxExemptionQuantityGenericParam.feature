#language:pt

@MCB
@maxExemptionQuantityGenericParam

Funcionalidade: Parâmetro genério Incompatibilidade de produtos perigosos considerando regras de isenção
# https://neolog.atlassian.net/browse/MCA-24

Cenário: Cadastro de dependências
Dado que cadastro o embarcador "EMBDEPQMI"
Dado que cadastro a categoria de produto "CATPRODEPQMI"
Dado que cadastro o produto "PRODEPQMI01" com a categoria "CATPRODEPQMI" e embarcador "EMBDEPQMI"
Dado que cadastro o produto "PRODEPQMI02" com a categoria "CATPRODEPQMI" e embarcador "EMBDEPQMI"

Cenário: Preencher parametro sem sucesso -  Quantidade de isenção (kg) não preenchida - MCA-306
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E adiciono uma nova linha
E preencho o parâmetro com o produto "PRODEPQMI01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "Valor inválido para o componente Quantidade de isenção (kg): . Deveria ser um ponto flutuante maior que zero."

Cenário: Preencher parametro sem sucesso -  Produto não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E adiciono uma nova linha
E preencho o parâmetro com a quantidade de isenção "5"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O campo Produto é inválido (o campo é obrigatório)."

Cenário: Preencher parametro com sucesso - inserir um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E adiciono uma nova linha
E preencho o parâmetro com o produto "PRODEPQMI01"
E preencho o parâmetro com a quantidade de isenção "5"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxExemptionQuantity foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

# Cenário: Inserir registro com chave duplicada
# Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
# Quando adiciono duas linhas no parâmetro com o mesmo produto e quantidades diferentes
# E clico no botão salvar no modal de edição do parâmetro
# E é exibido a mensagem "Existe(m) chave(s) duplicada(s) na linha:"

Cenário: Editar um registro alterando o campo Produto
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E adiciono uma nova linha
E preencho o parâmetro com o produto "PRODEPQMI01"
E preencho o parâmetro com a quantidade de isenção "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o produto "PRODEPQMI02"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxExemptionQuantity foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar um registro alterando o campo Quantidade de isenção (kg)
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E adiciono uma nova linha
E preencho o parâmetro com o produto "PRODEPQMI01"
E preencho o parâmetro com a quantidade de isenção "5"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
Quando pesquiso no parâmetro Quantidade máxima de isenção pelo produto "PRODEPQMI01" e quantidade "5"
E preencho o parâmetro com a quantidade de isenção "8"
E clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem "O registro do parâmetro genérico MaxExemptionQuantity foi salvo com sucesso."
E clico no botão OK
Quando pesquiso no parâmetro Quantidade máxima de isenção pelo produto "PRODEPQMI01" e quantidade "8"
E excluo o registro do parâmetro

# Cenário: Validar a exportação do parâmetro
# Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
# Quando eu clicar no botão Editar dados do parâmetro genérico na aba Geral
# E pesquiso os registros existentes
# E clico no botão Exportar
# Então efetuo o download de um arquivo com a extensão .xls
# E verifico na planilha que traz os parâmetros com os registros apresentados em tela

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E importo a planilha "MaxExemptionQuantityCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Quantidade máxima de isenção"
E verifico se o parâmetro Quantidade máxima de isenção está preenchido
E importo a planilha "MaxExemptionQuantityDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo o produto "PRODEPQMI01"
Dado que excluo o produto "PRODEPQMI02"
Dado que excluo a categoria de produto "CATPRODEPQMI"
Dado que excluo o embarcador "EMBDEPQMI"