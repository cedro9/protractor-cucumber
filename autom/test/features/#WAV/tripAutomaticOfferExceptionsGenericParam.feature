#language:pt

@WAV
@tripAutomaticOfferExceptionsGenericParam

Funcionalidade: Parâmetro genérico Exceções do fluxo de oferta automática de viagens
# https://neolog.atlassian.net/browse/WAV-7

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV7_2"
Dado que cadastro a origem "ORIGINDEPWAV7" com a restrição de localidade "RESLOCDEPWAV7_2" e Cep "04571-011"
Dado que cadastro a classificação "CLADEPWAV7" do tipo "Qualidade"

Cenário: Preencher parâmetro com sucesso - Origem preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Exceções do fluxo de oferta automática de viagens"
Quando adiciono uma nova linha
E preencho a origem o valor "ORIGINDEPWAV7"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripAutomaticOfferExceptions foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Exceções do fluxo de oferta automática de viagens"
Quando adiciono uma nova linha
E preencho a origem o valor "ORIGINDEPWAV7"
E preencho o agrupador de zona de transporte o valor "Estados"
E preencho a zona de transporte o valor "SP - São Paulo"
E preencho o tipo de classificação o valor "Qualidade"
E preencho a classificação do parametro com o valor "CLADEPWAV7"
E preencho a data limite inicial "01/02/2020"
E preencho a data limite final "01/12/2020"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripAutomaticOfferExceptions foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: ZT não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Exceções do fluxo de oferta automática de viagens"
Quando adiciono uma nova linha
E preencho o agrupador de zona de transporte o valor "Estados"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "A zona de transporte ou agrupador necessitam ser preenchidos"
E clico no botão OK

Cenário: Classificação não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Exceções do fluxo de oferta automática de viagens"
Quando adiciono uma nova linha
E preencho o tipo de classificação o valor "Qualidade"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "A classificação ou o tipo necessitam ser preenchidos."
E clico no botão OK

Cenário: Data final inferior a data inicial
Dado que eu esteja na tela de edição do parâmetro genérico "Exceções do fluxo de oferta automática de viagens"
Quando adiciono uma nova linha
E preencho a data limite inicial "01/06/2020"
E preencho a data limite final inferior a data inicial
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O limite final deve ser depois do limite inicial."
E clico no botão OK

Cenario: Excluir dependências
Dado que excluo a localidade "ORIGINDEPWAV7"
Dado que excluo a restrição de localidade "RESLOCDEPWAV7_2"