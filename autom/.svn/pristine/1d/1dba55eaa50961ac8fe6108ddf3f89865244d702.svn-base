#language:pt

@WAV
@ruleToDestroyTripGenericParam

Funcionalidade: Parâmetro genérico Regras de destruição de viagens
# https://neolog.atlassian.net/browse/WAV-6

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLASSDEPWAV6" do tipo "Geração da viagem"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Regra para destruição de viagens"
E altero para edição por tabela
Quando adiciono uma nova linha
E preencho tipo de classificação com o valor "Geração da viagem"
E preencho classificação do parametro o valor "CLASSDEPWAV6"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico RuleToDestroyTrip foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Classificação não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Regra para destruição de viagens"
E altero para edição por tabela
Quando adiciono uma nova linha
E preencho tipo de classificação com o valor "Geração da viagem"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O campo Classificação é inválido (o campo é obrigatório)."
E clico no botão OK

Cenário: Nenhuma linha preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Regra para destruição de viagens"
E altero para edição por tabela
Quando adiciono uma nova linha
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Tipo de classificação é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Classificação é inválido (o campo é obrigatório)."
E clico no botão OK