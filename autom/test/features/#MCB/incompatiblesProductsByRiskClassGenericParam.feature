#language:pt

@MCB
@incompatibilidadedeprodutosperigososconsiderandocaixacofre

Funcionalidade: Parâmetro genério Incompatibilidade de produtos perigosos por classe de risco
# https://neolog.atlassian.net/browse/MCA-21

Cenário: Cadastro de dependências
Dado que cadastro a classificação "CLADEPIPBRC01" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC02" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC03" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC04" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC05" do tipo "Classe de risco"
Dado que cadastro a classificação "CLADEPIPBRC06" do tipo "Classe de risco"

Cenário: Preencher parâmetro sem sucesso -  Classificação não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação incompatível com o valor "CLADEPIPBRC01"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O campo Classificação é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso -  Classificação incompatível não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação com o valor "CLADEPIPBRC01"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O campo Classificação incompatível é inválido (o campo é obrigatório)."

Cenário: Preencher parâmetro sem sucesso -  Classificação incompatível não preenchida
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação com o valor "CLADEPIPBRC01"
E preencho a classificação incompatível com o valor "CLADEPIPBRC01"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "A classificação \"CLADEPIPBRC01\" não pode ser incompatível com ela mesma."

Cenário: Preencher parâmetro com sucesso - inserir um registro
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação com o valor "CLADEPIPBRC01"
E preencho a classificação incompatível com o valor "CLADEPIPBRC02"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico IncompatiblesProductsByRiskClass foi salvo com sucesso."
E clico no botão OK
E excluo o registro do parâmetro
 
Cenário: Editar um registro alterando o campo Classificação
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação com o valor "CLADEPIPBRC01"
E preencho a classificação incompatível com o valor "CLADEPIPBRC02"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E pesquiso pela classificação "CLADEPIPBRC01" e a classificação incompatível "CLADEPIPBRC02"
E altero a classificação para "CLADEPIPBRC03"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico IncompatiblesProductsByRiskClass foi salvo com sucesso."
E clico no botão OK
E pesquiso pela classificação "CLADEPIPBRC03" e a classificação incompatível "CLADEPIPBRC02"
E excluo o registro do parâmetro
 
Cenário: Editar um registro alterando o campo Classificação incompatível
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
Quando adiciono uma nova linha
E preencho a classificação com o valor "CLADEPIPBRC01"
E preencho a classificação incompatível com o valor "CLADEPIPBRC02"
E clico no botão salvar no modal de edição do parâmetro
E clico no botão OK
E pesquiso pela classificação "CLADEPIPBRC01" e a classificação incompatível "CLADEPIPBRC02"
E altero a classificação incompatível para "CLADEPIPBRC03"
E clico no botão salvar no modal de edição do parâmetro
Entao é exibido a mensagem "O registro do parâmetro genérico IncompatiblesProductsByRiskClass foi salvo com sucesso."
E clico no botão OK
E pesquiso pela classificação "CLADEPIPBRC01" e a classificação incompatível "CLADEPIPBRC03"
E excluo o registro do parâmetro

# Cenário: Validar a exportação do parâmetro - verificar como se testa download de arquivos
# Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
# E altero para o modo de edição por tabela
# Quando adiciono uma nova linha
# E preencho a classificação com o valor "CLADEPIPBRC01"
# E preencho a classificação incompatível com o valor "CLADEPIPBRC01"
# E clico no botão salvar no modal de edição do parâmetro
# E pesquiso os registros existentes
# E clico no botão Exportar
# Então efetuo o download de um arquivo com a extensão .xls
# E excluo o registro do parâmetro

Cenário: Preencher parâmetro através de importação de planilha
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E altero para o modo de edição por tabela
E importo a planilha "IncompatiblesProductsByRiskClassCadastre" para preenchimento do parâmetro
E clico no botão "Cancelar"
Quando verifico se a tarefa de background é concluida com sucesso
Dado que eu esteja na tela de edição do parâmetro genérico "Incompatibilidade de produtos perigosos por classe de risco"
E verifico se o parâmetro Incompatibilidade de produtos perigosos por classe de risco está preenchido com "CLADEPIPBRC04", "CLADEPIPBRC05" e "CLADEPIPBRC06"
E importo a planilha "IncompatiblesProductsByRiskClassDelete" para preenchimento do parâmetro