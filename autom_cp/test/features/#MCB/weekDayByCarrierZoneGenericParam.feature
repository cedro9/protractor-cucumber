#language:pt

@MCB
@weekDayByCarrierZoneGenericParam

Funcionalidade: Parâmentro Dia da semana por zona de transporte
# https://neolog.atlassian.net/browse/MCA-265

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RLDEPWDBCZP"
Dado que cadastro o agrupador de zt "AZTDEPWDBCZP01"
Dado que cadastro a zona de transporte "ZTDEPWDBCZP01" do tipo região do agrupador do agrupador "AZTDEPWDBCZP01" com a restrição de localidade "RLDEPWDBCZP" e prioridade "100"
Dado que cadastro o agrupador de zt "AZTDEPWDBCZP02"
Dado que cadastro a zona de transporte "ZTDEPWDBCZP02" do tipo região do agrupador do agrupador "AZTDEPWDBCZP02" com a restrição de localidade "RLDEPWDBCZP" e prioridade "100"
Dado que cadastro a zona de transporte "ZTDEPWDBCZP03" do tipo região do agrupador do agrupador "AZTDEPWDBCZP02" com a restrição de localidade "RLDEPWDBCZP" e prioridade "101"
Dado que cadastro o calculador de tipo de serviço "CTSDEPWDBCZP" com o agrupador de zona de transporte "AZTDEPWDBCZP01"
Dado que cadastro o calculador de frete viagem "CFVDEPWDBCZP"
Dado que cadastro a transportadora "TRANSDEPWDBCZP01" para o calculador de tipo de serviço "CTSDEPWDBCZP", agrupador zona de transporte "AZTDEPWDBCZP01", grupo logístico "AZTDEPWDBCZP01" e calculador de frete viagem "CFVDEPWDBCZP"
Dado que cadastro a transportadora "TRANSDEPWDBCZP02" para o calculador de tipo de serviço "CTSDEPWDBCZP", agrupador zona de transporte "AZTDEPWDBCZP01", grupo logístico "AZTDEPWDBCZP01" e calculador de frete viagem "CFVDEPWDBCZP"
Dado que cadastro a transportadora "TRANSDEPWDBCZP03" para o calculador de tipo de serviço "CTSDEPWDBCZP", agrupador zona de transporte "AZTDEPWDBCZP01", grupo logístico "AZTDEPWDBCZP01" e calculador de frete viagem "CFVDEPWDBCZP"
Dado que cadastro a transportadora "TRANSDEPWDBCZP04" para o calculador de tipo de serviço "CTSDEPWDBCZP", agrupador zona de transporte "AZTDEPWDBCZP01", grupo logístico "AZTDEPWDBCZP01" e calculador de frete viagem "CFVDEPWDBCZP"

Cenário: Cadastrar parâmetro sem sucesso -  Transportadora não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Transportadora é inválido (o campo é obrigatório)."

Cenário: Cadastrar parâmetro sem sucesso - Agrupador não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."

Cenário: Cadastrar parâmetro sem sucesso - Zona de transporte não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Zona de transporte é inválido (o campo é obrigatório)."

Cenário: Cadastrar parâmetro sem sucesso - Dia da semana não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Dia da semana é inválido (o campo é obrigatório)."

Cenário: Cadastrar parâmetro com sucesso - um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

# @weekDayByCarrierZoneGenericParam
# Cenário: Cadastrar parâmetro com sucesso - Mesma transportadora com duas zonas de tranportes
# Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
# E adiciono uma nova linha
# E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
# E preencho o parâmetro com o agrupador "AZTDEPWDBCZP02"
# E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP02"
# E preencho o parâmetro com o dia da semana "Sexta-Feira"
# E adiciono uma nova linha
# E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
# E preencho o parâmetro com o agrupador "AZTDEPWDBCZP02"
# E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP02"
# E preencho o parâmetro com o dia da semana "Sexta-Feira"
# E clico no botão salvar no modal de edição do parâmetro
# Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
# E clico no botão OK
# E excluo o registro do parâmetro
# E excluo o registro do parâmetro

# @weekDayByCarrierZoneGenericParam
# Cenário: Cadastrar parâmetro com sucesso - Duas transportadora com a mesma zona de tranportes
# Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
# E adiciono uma nova linha
# E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
# E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
# E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
# E preencho o parâmetro com o dia da semana "Sexta-Feira"
# E adiciono uma nova linha
# E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP02"
# E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
# E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
# E preencho o parâmetro com o dia da semana "Sexta-Feira"
# E clico no botão salvar no modal de edição do parâmetro
# Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
# E clico no botão OK
# E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso - Transportadora
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP02"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso - Agrupador
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP02"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP02"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso - Zona de Transporte
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP02"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP02"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP03"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso - Dia da semana
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o dia da semana "Quinta-Feira"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico WeekDayByCarrierZone foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Transportadora não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a transportadora " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Transportadora é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Agrupador não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o agrupador " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Zona de Transporte não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a zona de transporte " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Zona de transporte é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Dia da semana não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E adiciono uma nova linha
E preencho o parâmetro com a transportadora "TRANSDEPWDBCZP01"
E preencho o parâmetro com o agrupador "AZTDEPWDBCZP01"
E preencho o parâmetro com a zona de transporte "ZTDEPWDBCZP01"
E preencho o parâmetro com o dia da semana "Sexta-Feira"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o dia da semana " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Dia da semana é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Cadastrar parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E importo a planilha "WeekDayByCarrierZoneCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Dia da semana por zona de transporte"
E verifico se o parâmetro Dia da semana por zona de transporte está preenchido
E importo a planilha "WeekDayByCarrierZoneDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo a transportadora "TRANSDEPWDBCZP01"
Dado que excluo a transportadora "TRANSDEPWDBCZP02"
Dado que excluo a transportadora "TRANSDEPWDBCZP03"
Dado que excluo a transportadora "TRANSDEPWDBCZP04"
Dado que excluo o calculador de frete viagem "CFVDEPWDBCZP"
Dado que excluo o calculador de tipo de serviço "CTSDEPWDBCZP"
Dado que excluo a zona de transporte "ZTDEPWDBCZP01"
Dado que excluo a zona de transporte "ZTDEPWDBCZP03"
Dado que excluo a zona de transporte "ZTDEPWDBCZP02"
Dado que excluo o agrupador de zt "AZTDEPWDBCZP01"
Dado que excluo o agrupador de zt "AZTDEPWDBCZP02"
Dado que excluo a restrição de localidade "RLDEPWDBCZP"