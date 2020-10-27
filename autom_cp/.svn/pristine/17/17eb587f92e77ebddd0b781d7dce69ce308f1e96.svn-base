#language:pt

@SEB
@delayToleranceByLocalityGenericParam

Funcionalidade: Parâmetro genérico Tolerância de Atraso por Localidade
# https://neolog.atlassian.net/browse/SEBUPG-821

Cenário: Cadastro de dependências
Dado que cadastro a restrição de localidade "RESLOCDEPSEBUPG821"
Dado que cadastro o destino "DESTDEPSEBUPG821" com a restrição de localidade "RESLOCDEPSEBUPG821" e Cep "04571-011"

Cenário: Preencher parâmetro com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
E preencho a localidade "DESTDEPSEBUPG821"
E preencho a direção do serviço "Carregamento"
E preencho a duração com dia "01" hora "01" minuto "01" e segundos "01"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico DelayToleranceByLocality foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro

Cenário: Duplicidade no cadastro de localidade e direção do serviço
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
E preencho a localidade "DESTDEPSEBUPG821"
E preencho a direção do serviço "Carregamento"
E preencho a duração com dia "01" hora "01" minuto "01" e segundos "01"
E clico no botão salvar no modal de edição do parâmetro
Então clico no botão OK
E clico em Cancelar
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
E preencho a localidade "DESTDEPSEBUPG821"
E preencho a direção do serviço "Carregamento"
E preencho a duração com dia "02" hora "01" minuto "01" e segundos "00"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "Existe(m) chave(s) duplicada(s) na linha:"
E clico no botão OK

Cenário: Duplicidade no cadastro de direção do serviço
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
E preencho a direção do serviço "Carregamento"
E preencho a duração com dia "01" hora "01" minuto "01" e segundos "01"
E clico no botão salvar no modal de edição do parâmetro
Então clico no botão OK
E clico em Cancelar
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
E preencho a direção do serviço "Carregamento"
E preencho a duração com dia "02" hora "01" minuto "01" e segundos "00"
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "Existe(m) chave(s) duplicada(s) na linha:"
E clico no botão OK

Cenário: Obrigatoriedade dos campos direção do serviço e duração
Dado que eu esteja na tela de edição do parâmetro genérico "Tolerância de Atraso por Localidade"
Quando adiciono uma nova linha
Quando clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem que contem "O campo Direção do Serviço é inválido (o campo é obrigatório)."
E é exibido a mensagem que contem "Valor inválido para Duração. Deve ser um valor maior que zero."
E clico no botão OK

Cenário: Exclusão de cadastros de dependências
Dado que excluo a restrição de localidade "RESLOCDEPWAV2"
Dado que excluo a localidade "DESTDEPSEBUPG821"