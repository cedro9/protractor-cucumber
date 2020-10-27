#language:pt

@WAV
@carrierZoneOVRemessaDelayTimeGenericParam

Funcionalidade: Parâmetro genérico Tempo de atraso por zona de transporte e data de OV ou data de remessa
# https://neolog.atlassian.net/browse/WAV-4

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Tempo de atraso por zona de transporte e data de OV ou data de remessa"
Quando adiciono uma nova linha
E preencho o agrupador de zona de transporte "Estados"
E preencho a zona de transporte de destino "SP - São Paulo"
E preencho o tempo de atraso ov
E preencho o tempo de atraso remessa
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico CarrierZoneOVRemessaDelayTime foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Obrigatoriedade dos campos
Dado que eu esteja na tela de edição do parâmetro genérico "Tempo de atraso por zona de transporte e data de OV ou data de remessa"
Quando adiciono uma nova linha
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Zona de transporte de destino é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Tempo de atraso (OV) é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Tempo de atraso (Remessa) é inválido (o campo é obrigatório)."
E clico no botão OK