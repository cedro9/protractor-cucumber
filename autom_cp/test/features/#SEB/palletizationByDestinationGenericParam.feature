#language:pt

@SEB
@palletizationByDestinationGenericParam

Funcionalidade: Parâmetro genérico Paletização por Cliente

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCPBDSEB01"
Dado que cadastro a localidade "DESTPBDSEB01" com papel logistico destino com a restrição de localidade "RESLOCPBDSEB01" e Cep "04571-011"
Dado que cadastro a categoria de produto "CATPRODPBDSEB01"
Dado que cadastro o produto "PRODPBDSEB01" com a categoria "CATPRODPBDSEB01" e embarcador "SEB"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Paletização por Cliente"
Quando adiciono uma nova linha
E preencho o destino "DESTPBDSEB01"
E preencho o produto "PRODPBDSEB01"
E preencho a quantidade de produtos empilhados "4"
E preencho a quantidade de produtos da base "4"
E preencho o invólucro "Paletização_Interna"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico PalletizationByDestination foi salvo com sucesso."
E clico no botão OK

Cenário: Duplicidade no cadastro de localidade e direção do serviço
Dado que eu esteja na tela de edição do parâmetro genérico "Paletização por Cliente"
Quando adiciono uma nova linha
E preencho o destino "DESTPBDSEB01"
E preencho o produto "PRODPBDSEB01"
E preencho a quantidade de produtos empilhados "4"
E preencho a quantidade de produtos da base "4"
E preencho o invólucro "Paletização_Interna"
E clico no botão salvar no modal de edição do parâmetro
Então clico no botão OK
E clico em Cancelar
Dado que eu esteja na tela de edição do parâmetro genérico "Paletização por Cliente"
Quando adiciono uma nova linha
E preencho o destino "DESTPBDSEB01"
E preencho o produto "PRODPBDSEB01"
E preencho a quantidade de produtos empilhados "4"
E preencho a quantidade de produtos da base "8"
E preencho o invólucro "Paletização_Interna"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "Existe(m) chave(s) duplicada(s) na linha:"
E clico no botão OK

Cenário: Obrigatoriedade dos campos
Dado que eu esteja na tela de edição do parâmetro genérico "Paletização por Cliente"
Quando adiciono uma nova linha
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Destino é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Produto é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Quantidade de produtos empilhados é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Quantidade de produtos da base é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Invólucro é inválido (o campo é obrigatório)."
E clico no botão OK

Cenário: Exclusão de cadastros de dependências
Dado que excluo a localidade "DESTPBDSEB01"
Dado que excluo a restrição de localidade "RESLOCPBDSEB01"
Dado que excluo o produto "PRODPBDSEB01"
Dado que excluo a categoria de produto "CATPRODPBDSEB01"