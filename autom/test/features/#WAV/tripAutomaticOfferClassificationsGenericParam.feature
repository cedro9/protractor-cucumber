#language:pt

@WAV
@tripAutomaticOfferClassificationsGenericParam

Funcionalidade: Parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente
# https://neolog.atlassian.net/browse/WAV-11

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPWAV11" do tipo "Qualidade"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Classificações de viagens que devem ser ofertadas automaticamente"
E altero para edição por tabela
Quando adiciono uma nova linha
E preencho o tipo de classificação com o valor "Qualidade"
E preencho a classificação do parametro o valor "CLADEPWAV11"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripAutomaticOfferClassifications foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Classificação não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Classificações de viagens que devem ser ofertadas automaticamente"
E altero para edição por tabela
Quando adiciono uma nova linha
E preencho o tipo de classificação com o valor "Qualidade"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O campo Classificação é inválido (o campo é obrigatório)."
E clico no botão OK