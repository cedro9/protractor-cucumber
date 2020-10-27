#language:pt

@MCB
@smallVehiclesGenericParam

Funcionalidade: Parâmetro genério Veículos pequenos que permitem carga desunitizada
# https://neolog.atlassian.net/browse/MCA-110

Cenário: Cadastro de dependências
Dado que cadastro o veículo "VEIDEPSV01", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV02", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV03", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV04", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV05", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV06", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura
Dado que cadastro o veículo "VEIDEPSV07", com "2,50" de largura, "10,00" de comprimento e "3,00" de altura

Cenário: Preencher parâmetro sem sucesso -  Ordem não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com o veículo "VEIDEPSV01"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Ordem é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso -  Veículo não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com a ordem "1"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Veículo é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com o veículo "VEIDEPSV02"
E preencho o parâmetro com a ordem "1"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico smallVehicles foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com o veículo "VEIDEPSV02"
E preencho o parâmetro com a ordem "1"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o veículo "VEIDEPSV03"
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O registro do parâmetro genérico smallVehicles foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Veículo não preenchido
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com o veículo "VEIDEPSV04"
E preencho o parâmetro com a ordem "1"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com o veículo " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Veículo é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Editar parâmetro sem sucesso - Ordem não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E adiciono uma nova linha
E preencho o parâmetro com o veículo "VEIDEPSV05"
E preencho o parâmetro com a ordem "1"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E preencho o parâmetro com a ordem " "
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem "O campo Ordem é inválido (o campo é obrigatório)."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Cadastrar parâmetro sem sucesso - Veiculo duplicado
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
Quando preencho o parâmetro Veículos pequenos que permitem carga desunitizada com veículo "VEIDEPSV05" em duplicidade
E clico no botão salvar no modal de edição do parâmetro
Então é exibido a mensagem que contem "Existe(m) chave(s) duplicada(s) na linha:"
E clico no botão OK

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E importo a planilha "SmallVehiclesCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Veículos pequenos que permitem carga desunitizada"
E verifico se o parâmetro Veículos pequenos que permitem carga desunitizada está preenchido
E importo a planilha "SmallVehiclesDelete" para preenchimento do parâmetro

Cenário: Excluir dependências
Dado que excluo o veículo "VEIDEPSV01"
Dado que excluo o veículo "VEIDEPSV02"
Dado que excluo o veículo "VEIDEPSV03"
Dado que excluo o veículo "VEIDEPSV04"
Dado que excluo o veículo "VEIDEPSV05"
Dado que excluo o veículo "VEIDEPSV06"
Dado que excluo o veículo "VEIDEPSV07"