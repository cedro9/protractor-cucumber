#language:pt

@MAD

Funcionalidade: Classificação de Compartimento de produto
# https://neolog.atlassian.net/browse/MAD-59

Cenario: Cadastrar de dependências
Dado que cadastro a categoria de produto "CATPRODCLASSPRODMAD"
Dado que cadastro o embarcador "EMBCLASSPRODMAD"
Dado que cadastro o produto "PRODCLASSPRODMAD" com a categoria "CATPRODCLASSPRODMAD" e embarcador "EMBCLASSPRODMAD"

Cenário:Verificar que a classificação de compartimento default é N/A
Dado que acesso a tela "Cadastro", "Produtos"
Quando realizo o filtro produto com o codigo "PRODCLASSPRODMAD"
E clico no botão editar
Então verifico se o campo de classificação compartimento de produto está preenchido com "N/A"

Cenário:Alterar a classificação de compartimento
Dado que acesso a tela "Cadastro", "Produtos"
Quando realizo o filtro produto com o codigo "PRODCLASSPRODMAD"
E clico no botão editar
Quando altero o campo de classificação compartimento de produto para "Resfriados"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK

Cenario: Excluir dependências
Dado que excluo o produto "PRODCLASSPRODMAD"
Dado que excluo o embarcador "EMBCLASSPRODMAD"
Dado que excluo a categoria de produto "CATPRODCLASSPRODMAD"