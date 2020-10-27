#language:pt

@WAV
@destinationHubsAllowedByCarrierZoneGenericParam

Funcionalidade: Parâmetro genérico Hubs de destino permitidos por zona de transporte
# https://neolog.atlassian.net/browse/WAV-67

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPWAV67"
Dado que cadastro o hub de destino "HUBDESTDEPWAV67_1" com a restrição de localidade "RESLOCDEPWAV67" e Cep "04571-011"
Dado que cadastro o hub de destino "HUBDESTDEPWAV67_2" com a restrição de localidade "RESLOCDEPWAV67" e Cep "78500-000"
Dado que cadastro o agrupador de zt "AGRZONTRADEPWAV67"
Dado que cadastro a zona de transporte "ZONTRADEPWAV67" do tipo região do agrupador do agrupador "AGRZONTRADEPWAV67" com a restrição de localidade "RESLOCDEPWAV67" e prioridade "1"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de destino permitidos por zona de transporte"
Quando adiciono uma nova linha
E preencho o hub de destino "HUBDESTDEPWAV67_1"
E preencho o agrupador de zt "AGRZONTRADEPWAV67"
E preencho a zt de destino "ZONTRADEPWAV67"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico DestinationHubsAllowedByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Validar unicidade de hub por zt
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de destino permitidos por zona de transporte"
Quando adiciono uma nova linha
E preencho o hub de destino "HUBDESTDEPWAV67_1"
E preencho o agrupador de zt "AGRZONTRADEPWAV67"
E preencho a zt de destino "ZONTRADEPWAV67"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico DestinationHubsAllowedByCarrierZone foi salvo com sucesso."
E clico no botão OK
E clico em Cancelar
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de destino permitidos por zona de transporte"
Quando adiciono uma nova linha
E preencho o hub de destino "HUBDESTDEPWAV67_2"
E preencho o agrupador de zt "AGRZONTRADEPWAV67"
E preencho a zt de destino "ZONTRADEPWAV67"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido uma mensagem de erro que contem "Existe(m) chave(s) duplicada(s) na linha:"
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Nenhuma linha preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de destino permitidos por zona de transporte"
Quando adiciono uma nova linha
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Hub de destino é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Zona de transporte de destino é inválido (o campo é obrigatório)."
E clico no botão OK

Cenário: Exclusão de cadastros de dependências
Dado que excluo a zona de transporte "ZONTRADEPWAV67"
Dado que excluo o agrupador de zt "AGRZONTRADEPWAV67"
Dado que excluo a localidade "HUBDESTDEPWAV67_1"
Dado que excluo a localidade "HUBDESTDEPWAV67_2"
Dado que excluo a restrição de localidade "RESLOCDEPWAV67"