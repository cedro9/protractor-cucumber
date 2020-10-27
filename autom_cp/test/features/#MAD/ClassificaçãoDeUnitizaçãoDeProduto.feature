#language:pt

@MAD

Funcionalidade: Classificação de Unitização de produto
# https://neolog.atlassian.net/browse/MAD-91

Cenario: Cadastrar de dependências
Dado que cadastro a categoria de produto "CATPRODCLASSUNITPRODMAD"
Dado que cadastro o embarcador "EMBCLASSUNITPRODMAD"
Dado que cadastro o produto "PRODCLASSUNITPRODMAD" com a categoria "CATPRODCLASSUNITPRODMAD" e embarcador "EMBCLASSUNITPRODMAD"

Cenário:Verificar que a classificação de unitização default é Sim
Dado que acesso a tela "Cadastro", "Produtos"
Quando realizo o filtro produto com o codigo "PRODCLASSUNITPRODMAD"
E clico no botão editar
Então verifico se o campo de classificação de unitização de produto está preenchido com "Sim"

Cenário:Alterar a classificação de compartimento
Dado que acesso a tela "Cadastro", "Produtos"
Quando realizo o filtro produto com o codigo "PRODCLASSUNITPRODMAD"
E clico no botão editar
Quando altero o campo de classificação de unitização de produto para "Não"

Cenario: Excluir dependências
Dado que excluo o produto "PRODCLASSUNITPRODMAD"
Dado que excluo o embarcador "EMBCLASSUNITPRODMAD"
Dado que excluo a categoria de produto "CATPRODCLASSUNITPRODMAD"