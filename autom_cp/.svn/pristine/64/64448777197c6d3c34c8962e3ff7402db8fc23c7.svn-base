#language:pt

@WAV
@tripClassificationByVehicleGenericParam

Funcionalidade: Parâmetro genérico Classificação de viagem por Veículo
# https://neolog.atlassian.net/browse/WAV-61

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLASSDEPWAV61" do tipo "Qualidade da viagem"
Dado que cadastro a restrição de localidade "RESLOCDEPWAV61"
Dado que cadastro o destino "LOCDESTDEPWAV61" com a restrição de localidade "RESLOCDEPWAV61" e Cep "04571-011"
Dado que cadastro o agrupador de zt "AGRZONTRADEPWAV61"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Classificação de viagem por Veículo"
Quando adiciono uma nova linha
E preencho a classificação de viagem com o valor "CLASSDEPWAV61"
E preencho o veículo "TruckFrete"
E preencho o operador de ocupação ">="
E preencho a ocupação "100"
E preencho o operador de quantidade de zonas ">="
E preencho a quantidade de zonas "1"
E preencho o operador de peso "="
E preencho o peso "0"
E preencho o destino da viagem "LOCDESTDEPWAV61"
E preencho o tipo de serviço da viagem "Lotação"
E preencho a prioridade "1"
E preencho o agrupador de zt com o valor "AGRZONTRADEPWAV61"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripClassificationByVehicle foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Não obrigatoriedade da coluna Destino
Dado que eu esteja na tela de edição do parâmetro genérico "Classificação de viagem por Veículo"
Quando adiciono uma nova linha
E preencho a classificação de viagem com o valor "CLASSDEPWAV61"
E preencho o veículo "TruckFrete"
E preencho o operador de ocupação ">="
E preencho a ocupação "100"
E preencho o operador de quantidade de zonas ">="
E preencho a quantidade de zonas "1"
E preencho o operador de peso "="
E preencho o peso "0"
E preencho o tipo de serviço da viagem "Lotação"
E preencho a prioridade "1"
E preencho o agrupador de zt com o valor "AGRZONTRADEPWAV61"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripClassificationByVehicle foi salvo com sucesso."
E clico no botão OK

Cenário: Validar mesma classificação para veículos distintos
Dado que eu esteja na tela de edição do parâmetro genérico "Classificação de viagem por Veículo"
Quando adiciono uma nova linha
E preencho a classificação de viagem com o valor "CLASSDEPWAV61"
E preencho o veículo "CarretaFrete"
E preencho o operador de ocupação ">="
E preencho a ocupação "100"
E preencho o operador de quantidade de zonas ">="
E preencho a quantidade de zonas "1"
E preencho o operador de peso "="
E preencho o peso "0"
E preencho o tipo de serviço da viagem "Lotação"
E preencho a prioridade "1"
E preencho o agrupador de zt com o valor "AGRZONTRADEPWAV61"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripClassificationByVehicle foi salvo com sucesso."
E clico no botão OK

Cenário: Validar mesma classificação para veículos iguais e tipo de serviço distinto
Dado que eu esteja na tela de edição do parâmetro genérico "Classificação de viagem por Veículo"
Quando adiciono uma nova linha
E preencho a classificação de viagem com o valor "CLASSDEPWAV61"
E preencho o veículo "TruckFrete"
E preencho o operador de ocupação ">="
E preencho a ocupação "100"
E preencho o operador de quantidade de zonas ">="
E preencho a quantidade de zonas "1"
E preencho o operador de peso "="
E preencho o peso "0"
E preencho o tipo de serviço da viagem "Itinerante"
E preencho a prioridade "1"
E preencho o agrupador de zt com o valor "AGRZONTRADEPWAV61"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico TripClassificationByVehicle foi salvo com sucesso."
E clico no botão OK

Cenário: Nenhuma linha preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Classificação de viagem por Veículo"
Quando adiciono uma nova linha
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Classificação é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Veículo é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Operador é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Ocupação é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Operador é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Quantidade de zonas é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Operador é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Peso (Ton) é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Tipo de serviço é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Prioridade é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Agrupador de zona de transporte é inválido (o campo é obrigatório)."
E clico no botão OK

Cenário: Exclusão de cadastros de dependências
Dado que removo a classificação "CLASSDEPWAV61" veículo "TruckFrete" e tipo de serviço "Lotação" do parâmetro genérico Classificação de viagem por Veículo
Dado que removo a classificação "CLASSDEPWAV61" veículo "CarretaFrete" e tipo de serviço "Lotação" do parâmetro genérico Classificação de viagem por Veículo
Dado que removo a classificação "CLASSDEPWAV61" veículo "TruckFrete" e tipo de serviço "Itinerante" do parâmetro genérico Classificação de viagem por Veículo
Dado que excluo a localidade "LOCDESTDEPWAV61"
Dado que excluo a restrição de localidade "RESLOCDEPWAV61"
Dado que excluo o agrupador de zt "AGRZONTRADEPWAV61"