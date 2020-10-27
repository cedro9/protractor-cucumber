#language:pt

@MCB
@mandatoryPassingHubGenericParam

Funcionalidade: Parâmentro Hubs de passagem obrigatórios
# https://neolog.atlassian.net/browse/MCA-426

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RLDEPMPHGP"
Dado que cadastro o agrupador de zt "AGRZTDEPMPHGP01"
Dado que cadastro o agrupador de zt "AGRZTDEPMPHGP02"
Dado que cadastro o agrupador de zt "AGRZTDEPMPHGP03"
Dado que cadastro a zona de transporte "ZTDEPMPHGP01" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP01" com a restrição de localidade "RLDEPMPHGP" e prioridade "1"
Dado que cadastro a zona de transporte "ZTDEPMPHGP02" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP01" com a restrição de localidade "RLDEPMPHGP" e prioridade "2"
Dado que cadastro a zona de transporte "ZTDEPMPHGP03" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP02" com a restrição de localidade "RLDEPMPHGP" e prioridade "3"
Dado que cadastro a zona de transporte "ZTDEPMPHGP04" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP03" com a restrição de localidade "RLDEPMPHGP" e prioridade "4"
Dado que cadastro a zona de transporte "ZTDEPMPHGP05" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP03" com a restrição de localidade "RLDEPMPHGP" e prioridade "5"
Dado que cadastro a zona de transporte "ZTDEPMPHGP06" do tipo região do agrupador do agrupador "AGRZTDEPMPHGP03" com a restrição de localidade "RLDEPMPHGP" e prioridade "6"
Dado que cadastro o hub de passagem "HPDEPMPHGP" com a restrição de localidade "RLDEPMPHGP" e Cep "07115-375"

Cenário: Preencher parâmetro sem sucesso - Agrupador de origem não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de destino com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de destino com "ZTDEPMPHGP01"
E preencho o parâmetro com o hub de passagem com "HPDEPMPHGP"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "O campo Agrupador de zona de transporte de origem é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Zona de transporte de origem não informada
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de origem com "AGRZTDEPMPHGP01"
E preencho o parâmetro com o agrupador de zona de transporte de destino com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de destino com "ZTDEPMPHGP01"
E preencho o parâmetro com o hub de passagem com "HPDEPMPHGP"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Zona de transporte de origem é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Agrupador de destino não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de origem com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de origem com "ZTDEPMPHGP01"
E preencho o parâmetro com o hub de passagem com "HPDEPMPHGP"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "O campo Agrupador de zona de transporte de destino é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Zona de transporte de destino não informada
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de origem com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de origem com "ZTDEPMPHGP01"
E preencho o parâmetro com o agrupador de zona de transporte de destino com "AGRZTDEPMPHGP01"
E preencho o parâmetro com o hub de passagem com "HPDEPMPHGP"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Zona de transporte de destino é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso - Hub de Passagem não informado
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de origem com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de origem com "ZTDEPMPHGP01"
E preencho o parâmetro com o agrupador de zona de transporte de destino com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de destino com "ZTDEPMPHGP02"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Hub de Passagem é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador de zona de transporte de origem com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de origem com "ZTDEPMPHGP01"
E preencho o parâmetro com o agrupador de zona de transporte de destino com "AGRZTDEPMPHGP01"
E preencho o parâmetro com a zona de transporte de destino com "ZTDEPMPHGP02"
E preencho o parâmetro com o hub de passagem com "HPDEPMPHGP"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico MandatoryPassingHub foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E importo a planilha "MandatoryPassingHubCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Hubs de passagem obrigatórios"
E verifico se o parâmetro Hubs de passagem obrigatórios está preenchido
E importo a planilha "MandatoryPassingHubDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo a localidade "HPDEPMPHGP"
Dado que excluo a zona de transporte "ZTDEPMPHGP01"
Dado que excluo a zona de transporte "ZTDEPMPHGP02"
Dado que excluo a zona de transporte "ZTDEPMPHGP03"
Dado que excluo a zona de transporte "ZTDEPMPHGP04"
Dado que excluo a zona de transporte "ZTDEPMPHGP05"
Dado que excluo a zona de transporte "ZTDEPMPHGP06"
Dado que excluo o agrupador de zt "AGRZTDEPMPHGP01"
Dado que excluo o agrupador de zt "AGRZTDEPMPHGP02"
Dado que excluo o agrupador de zt "AGRZTDEPMPHGP03"
Dado que excluo a restrição de localidade "RLDEPMPHGP"