#language:pt

@WAV
@optimizationWaveConfigurationGenericParam

Funcionalidade: Parâmetro genérico Sinergia de itinerários
# https://neolog.atlassian.net/browse/WAV-2

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Configuração de ondas de otimização"
Quando adiciono uma nova linha
E preencho o contexto anterior "Contexto de Divisão Primeira Onda"
E preencho a iteração "1"
E preeecho o grupo de otimização "0101"
E preencho o agrupador "Estados"
E preencho a zona de transporte "SP - São Paulo"
E preencho o contexto com o valor "ZIRR_OVERLOAD"
E preencho o contexto de divisão "Contexto de Divisão Segunda Onda"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico OptimizationWaveConfiguration foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Ciclos não são permitidos
Dado que eu esteja na tela de edição do parâmetro genérico "Configuração de ondas de otimização"
Quando adiciono uma nova linha
E preencho o contexto anterior "Contexto de Divisão Primeira Onda"
E preencho a iteração "1"
E preeecho o grupo de otimização "0101"
E preencho o agrupador "Estados"
E preencho a zona de transporte "SP - São Paulo"
E preencho o contexto com o valor "ZIRR_OVERLOAD"
E preencho o contexto de divisão "Contexto de Divisão Primeira Onda"
Quando clico no botão salvar no modal de edição do parâmetro
E é exibido a mensagem que contem "Ciclos não são permitidos. O ciclo foi detectado para o contexto de divisão origem Contexto de Divisão Primeira Onda e destino ."
E clico no botão OK

Cenário: Obrigatoriedade dos campos
Dado que eu esteja na tela de edição do parâmetro genérico "Configuração de ondas de otimização"
Quando adiciono uma nova linha
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Contexto anterior é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Iteração é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Grupo de otimização é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Agrupador é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Zona de transporte é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Contexto de divisão é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "O campo Contexto de otimização é inválido (o campo é obrigatório)."
E clico no botão OK