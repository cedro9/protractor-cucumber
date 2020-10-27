#language:pt

@MCB
@restrictedDeliveryTimeByCarrierZoneGenericParam

Funcionalidade: Parâmentro Restrição de horário de entrega de produtos perigosos por zona de transporte
# https://neolog.atlassian.net/browse/MCA-383

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RLDEPRDTBCGP"
Dado que cadastro o agrupador de zt "AGRZTDEPRDTBCGP01"
Dado que cadastro o agrupador de zt "AGRZTDEPRDTBCGP02"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP01" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "1"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP02" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "2"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP03" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "3"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP04" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "4"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP05" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "5"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP06" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP01" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "6"
Dado que cadastro a zona de transporte "ZTDEPRDTBCGP07" do tipo região do agrupador do agrupador "AGRZTDEPRDTBCGP02" com a restrição de localidade "RLDEPRDTBCGP" e prioridade "1"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP01"
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "14:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico RestrictedDeliveryTimeByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Preencher parâmetro sem sucesso - Agrupador não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "14:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Zona de transporte não informada
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "14:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Zona de transporte é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Início não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP01"
E preencho o horário de fim da restrição com "14:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Início é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Fim não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP01"
E preencho o horário de inicio da restrição com "10:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Fim é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP01"
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "04:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "Horário de início deve anteceder horário final"

Cenário: Preencher parâmetro sem sucesso - 
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP01"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP01"
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "14:00"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte com "AGRZTDEPRDTBCGP02"
E preencho o parâmetro com a zona de transporte com "ZTDEPRDTBCGP07"
E preencho o horário de inicio da restrição com "10:00"
E preencho o horário de fim da restrição com "14:00"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "Não é possível cadastrar agrupadores de zona de transporte distintos neste parâmetro."
E clico no botão OK

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E importo a planilha "RestrictedDeliveryTimeByCarrierZoneCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Restrição de horário de entrega de produtos perigosos por zona de transporte"
E importo a planilha "RestrictedDeliveryTimeByCarrierZoneDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo a zona de transporte "ZTDEPRDTBCGP01"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP02"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP03"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP04"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP05"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP06"
Dado que excluo a zona de transporte "ZTDEPRDTBCGP07"
Dado que excluo o agrupador de zt "AGRZTDEPRDTBCGP01"
Dado que excluo o agrupador de zt "AGRZTDEPRDTBCGP02"
Dado que excluo a restrição de localidade "RLDEPRDTBCGP"