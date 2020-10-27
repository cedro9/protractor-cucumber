#language:pt

@MCB
@restrictedCompatibilityProductCategoryGenericParam

Funcionalidade: Parâmentro Categoria de produto com compatibilidade restrita
# https://neolog.atlassian.net/browse/MCA-255

Cenário: Cadastro de dependências
Dado que cadastro a categoria de produto "CATPRODDEPCPCR01"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR02"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR03"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR04"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR05"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR06"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR07"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR08"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR09"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR10"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR11"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR12"
Dado que cadastro a categoria de produto "CATPRODDEPCPCR13"

Cenário: Preencher parâmetro sem sucesso -  Categoria de produto 2
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Categoria de produto 2 é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso -  Categoria de produto 1
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 2 "CATPRODDEPCPCR02"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Categoria de produto 1 é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR03"
E preencho o parâmetro com a categoria 2 "CATPRODDEPCPCR04"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico Categoria de produto com compatibilidade restrita foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR05"
E preencho o parâmetro com a categoria 2 "CATPRODDEPCPCR06"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR07"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico Categoria de produto com compatibilidade restrita foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Categoria 1 não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR08"
E preencho o parâmetro com a categoria 2 "CATPRODDEPCPCR09"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a categoria 1 " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Categoria de produto 1 é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Categoria 2 não prrenchia
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para o modo de edição por tabela
E adiciono uma nova linha
E preencho o parâmetro com a categoria 1 "CATPRODDEPCPCR10"
E preencho o parâmetro com a categoria 2 "CATPRODDEPCPCR11"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a categoria 2 " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Categoria de produto 2 é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Cadastrar parâmetro sem sucesso - Prencher ambas as colunas com a mesma categoria
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para edição por tabela
E adiciono uma nova linha
Quando preencho ambas colunas do parâmetro Categoria de produto com compatibilidade restrita com a categoria "CATPRODDEPCPCR01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "Categorias de produto iguais."
E clico no botão OK

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E altero para edição por tabela
E importo a planilha "RestrictedCompatibilityProductCategoryCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Categoria de produto com compatibilidade restrita"
E verifico se o parâmetro Categoria de produto com compatibilidade restrita está preenchido
E importo a planilha "RestrictedCompatibilityProductCategoryDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo a categoria de produto "CATPRODDEPCPCR01"
Dado que excluo a categoria de produto "CATPRODDEPCPCR02"
Dado que excluo a categoria de produto "CATPRODDEPCPCR03"
Dado que excluo a categoria de produto "CATPRODDEPCPCR04"
Dado que excluo a categoria de produto "CATPRODDEPCPCR05"
Dado que excluo a categoria de produto "CATPRODDEPCPCR06"
Dado que excluo a categoria de produto "CATPRODDEPCPCR07"
Dado que excluo a categoria de produto "CATPRODDEPCPCR08"
Dado que excluo a categoria de produto "CATPRODDEPCPCR09"
Dado que excluo a categoria de produto "CATPRODDEPCPCR10"
Dado que excluo a categoria de produto "CATPRODDEPCPCR11"
Dado que excluo a categoria de produto "CATPRODDEPCPCR12"
Dado que excluo a categoria de produto "CATPRODDEPCPCR13"