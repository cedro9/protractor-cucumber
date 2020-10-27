#language:pt
@Cadastro
@CadastroCategoriaProduto
Funcionalidade: Cadastro de Categoria de Produto


Cenario: Cadastrar Dependências
Dado que cadastro a categoria de produto "CATPRODDEPCATPROD"
Dado que cadastro o embarcador "EMBDEPCATPROD"
Dado que cadastro a restrição de localidade "RESLOCDEPCATPRO"
Dado que cadastro a origem "LOCORIGEMDEPCATPROD" com a restrição de localidade "RESLOCDEPCATPRO" e Cep "76820-408"
Dado que cadastro o produto "PRODDEPCATPROD" com a categoria "CATPRODDEPCATPROD" e embarcador "EMBDEPCATPROD"
Dado que cadastro o invólucro "INVDEPCATPROD" com politicas definidas no produto

Cenario: Cadastrar categoria de produto sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."


Cenario: Cadastrar categoria de produto sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome " " e Descrição "CategoriaProd1"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."


Cenario: Cadastrar categoria de produto sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."


Cenario: Cadastrar categoria de produto sem sucesso - orientação não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" e removo as opções de orientação
E clico no botão Salvar
Entao é exibido a mensagem "Deve haver pelo menos uma orientação permitida para cada localidade."


Cenario: Cadastrar categoria de produto sem sucesso - restrição de movimentação não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
Quando limpo o campo restrição de movimentação
E clico no botão Salvar
Entao é exibido a mensagem "O campo restrição de movimentação está vazio."


Cenario: Cadastrar categoria de produto sem sucesso - sem folga de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
Quando seleciono as duas opções de embutimento, orientação "Comprimento" e folga " "
E clico no botão Salvar
Entao é exibido a mensagem "Uma folga de embutimento maior que 1 milímetro deve ser definida."


Cenario: Cadastrar categoria de produto sem sucesso - sem orientação de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
Quando seleciono as duas opções de embutimento, orientação " " e folga "0,5"
E clico no botão Salvar
Entao é exibido a mensagem "Uma orientação de embutimento deve ser selecionada."


Cenario: Cadastrar categoria de produto sem sucesso - categoria já cadastrada
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd18",  Nome "CategoriaProd18" e Descrição "CategoriaProd18"
Quando preencho o valor maximo em carga "10000,00"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
Quando preencho a Porcentagem mínima de suporte para objeto "50,00"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" , incluo em todas orientações peso maximo "150,000", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono todas as faces frágeis
Quando seleciono o produto compativel "CATPRODDEPCATPROD"
Quando seleciono a Orientação "ACL" e Permitidos "Chão para cima"
Quando seleciono a Restrição de movimentação "Permite movimentação fora da parada de carregamento ou descarregamento."
Quando seleciono a Permissão de desamarração de fardos
Quando clico na aba "Empilhamento"
Quando seleciono a Restrição de empilhamento piramidal com valor "30,00"
Quando seleciono a Restrição Empilhamento do involucro acima não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição Empilhamento do involucro abaixo não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição de Empilhamento acima não permitidos "CATPRODDEPCATPROD"
Quando seleciono a Restrição de Empilhamento abaixo não permitidos "CATPRODDEPCATPROD"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd18",  Nome "CategoriaProd18" e Descrição "CategoriaProd18"
Quando preencho o valor maximo em carga "10000,00"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
Quando preencho a Porcentagem mínima de suporte para objeto "50,00"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" , incluo em todas orientações peso maximo "150,000", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono todas as faces frágeis
Quando seleciono o produto compativel "CATPRODDEPCATPROD"
Quando seleciono a Orientação "ACL" e Permitidos "Chão para cima"
Quando seleciono a Restrição de movimentação "Permite movimentação fora da parada de carregamento ou descarregamento."
Quando seleciono a Permissão de desamarração de fardos
Quando clico na aba "Empilhamento"
Quando seleciono a Restrição de empilhamento piramidal com valor "30,00"
Quando seleciono a Restrição Empilhamento do involucro acima não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição Empilhamento do involucro abaixo não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição de Empilhamento acima não permitidos "CATPRODDEPCATPROD"
Quando seleciono a Restrição de Empilhamento abaixo não permitidos "CATPRODDEPCATPROD"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd18"



Cenario: Copiar categoria de produto com sucesso
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd1",  Nome "CategoriaProd1" e Descrição "CategoriaProd1"
Quando preencho o valor maximo em carga "10000,00"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
Quando preencho a Porcentagem mínima de suporte para objeto "50,00"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" , incluo em todas orientações peso maximo "150,000", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono todas as faces frágeis
Quando seleciono o produto compativel "CATPRODDEPCATPROD"
Quando seleciono a Orientação "ACL" e Permitidos "Chão para cima"
Quando seleciono a Restrição de movimentação "Permite movimentação fora da parada de carregamento ou descarregamento."
Quando seleciono a Permissão de desamarração de fardos
Quando clico na aba "Empilhamento"
Quando seleciono a Restrição de empilhamento piramidal com valor "30,00"
Quando seleciono a Restrição Empilhamento do involucro acima não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição Empilhamento do involucro abaixo não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição de Empilhamento acima não permitidos "CATPRODDEPCATPROD"
Quando seleciono a Restrição de Empilhamento abaixo não permitidos "CATPRODDEPCATPROD"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd1"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd2",  Nome "CategoriaProd2" e Descrição "CategoriaProd2"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd1"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd2"



Cenario: Copiar categoria de produto sem sucesso - produto já cadastrado
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd3",  Nome "CategoriaProd3" e Descrição "CategoriaProd3"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd3"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd3",  Nome "CategoriaProd3" e Descrição "CategoriaProd3"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd3"

Cenario: Copiar categoria de produto sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd4",  Nome "CategoriaProd4" e Descrição "CategoriaProd4"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd4"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "CategoriaProd5" e Descrição "CategoriaProd5"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd4"


Cenario: Copiar categoria de produto sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd5",  Nome "CategoriaProd5" e Descrição "CategoriaProd5"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd5"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd6",  Nome " " e Descrição "CategoriaProd6"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd5"


Cenario: Copiar categoria de produto sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd6",  Nome "CategoriaProd6" e Descrição "CategoriaProd6"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd6"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd7",  Nome "CategoriaProd7" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd6"


Cenario: Copiar categoria de produto sem sucesso - orientação não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd7",  Nome "CategoriaProd7" e Descrição "CategoriaProd7"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd7"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd8",  Nome "CategoriaProd8" e Descrição "CategoriaProd8"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" e removo as opções de orientação
E clico no botão Salvar
Entao é exibido a mensagem "Deve haver pelo menos uma orientação permitida para cada localidade."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd7"


Cenario: Copiar categoria de produto sem sucesso - restrição de movimentação não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd8",  Nome "CategoriaProd8" e Descrição "CategoriaProd8"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd8"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd9",  Nome "CategoriaProd9" e Descrição "CategoriaProd9"
Quando limpo o campo restrição de movimentação
E clico no botão Salvar
Entao é exibido a mensagem "O campo restrição de movimentação está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd8"


Cenario: Copiar categoria de produto sem sucesso - sem folga de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd9",  Nome "CategoriaProd9" e Descrição "CategoriaProd9"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd9"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd10",  Nome "CategoriaProd10" e Descrição "CategoriaProd10"
Quando removo a folga de embutimento
E clico no botão Salvar
Entao é exibido a mensagem "Uma folga de embutimento maior que 1 milímetro deve ser definida."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd9"


Cenario: Copiar categoria de produto sem sucesso - sem orientação de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd10",  Nome "CategoriaProd10" e Descrição "CategoriaProd10"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd10"
E clico no botão copiar
Quando preencho o campo Codigo "CategoriaProd11",  Nome "CategoriaProd11" e Descrição "CategoriaProd11"
Quando removo a orientação de embutimento
E clico no botão Salvar
Entao é exibido a mensagem "Uma orientação de embutimento deve ser selecionada."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd10"


Cenario: Editar categoria de produto com sucesso
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd11",  Nome "CategoriaProd11" e Descrição "CategoriaProd11"
Quando preencho o valor maximo em carga "10000,00"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
Quando preencho a Porcentagem mínima de suporte para objeto "50,00"
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" , incluo em todas orientações peso maximo "150,000", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono todas as faces frágeis
Quando seleciono o produto compativel "CATPRODDEPCATPROD"
Quando seleciono a Orientação "ACL" e Permitidos "Chão para cima"
Quando seleciono a Restrição de movimentação "Permite movimentação fora da parada de carregamento ou descarregamento."
Quando seleciono a Permissão de desamarração de fardos
Quando clico na aba "Empilhamento"
Quando seleciono a Restrição de empilhamento piramidal com valor "30,00"
Quando seleciono a Restrição Empilhamento do involucro acima não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição Empilhamento do involucro abaixo não permitidos "INVDEPCATPROD"
Quando seleciono a Restrição de Empilhamento acima não permitidos "CATPRODDEPCATPROD"
Quando seleciono a Restrição de Empilhamento abaixo não permitidos "CATPRODDEPCATPROD"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd11"
E clico no botão editar
Quando altero o campo  Nome "CategoriaProd12" e Descrição "CategoriaProd12"
Quando preencho o valor maximo em carga "10001,00"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd11"


Cenario: Editar categoria de produto sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd12",  Nome "CategoriaProd12" e Descrição "CategoriaProd12"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd12"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "CategoriaProd13"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd12"


Cenario: Editar categoria de produto sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd13",  Nome "CategoriaProd13" e Descrição "CategoriaProd13"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd13"
E clico no botão editar
Quando altero o campo  Nome "CategoriaProd14" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd13"


Cenario: Editar categoria de produto sem sucesso - sem orientações permitidas
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd14",  Nome "CategoriaProd14" e Descrição "CategoriaProd14"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd14"
E clico no botão editar
Quando na Orientação seleciono a Origem "LOCORIGEMDEPCATPROD" e removo as opções de orientação
E clico no botão Salvar
Entao é exibido a mensagem "Deve haver pelo menos uma orientação permitida para cada localidade."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd14"


Cenario: Editar categoria de produto sem sucesso - restrição de movimentação não preenchida
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd15",  Nome "CategoriaProd15" e Descrição "CategoriaProd15"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd15"
E clico no botão editar
Quando limpo o campo restrição de movimentação
E clico no botão Salvar
Entao é exibido a mensagem "O campo restrição de movimentação está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd15"


Cenario: Editar categoria de produto sem sucesso - sem folga de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd16",  Nome "CategoriaProd16" e Descrição "CategoriaProd16"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd16"
E clico no botão editar
Quando removo a folga de embutimento
E clico no botão Salvar
Entao é exibido a mensagem "Uma folga de embutimento maior que 1 milímetro deve ser definida."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd16"


Cenario: Editar categoria de produto sem sucesso - sem orientação de embutimento
Dado que acesso a tela "Cadastro", "Categorias de produto"
E clico no botão Cadastro
Quando preencho o campo Codigo "CategoriaProd17",  Nome "CategoriaProd17" e Descrição "CategoriaProd17"
Quando seleciono as duas opções de embutimento, orientação "Altura" e folga "0,300"
E clico no botão Salvar
E clico no botão "OK"
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "CategoriaProd17"
E clico no botão editar
Quando removo a orientação de embutimento
E clico no botão Salvar
Entao é exibido a mensagem "Uma orientação de embutimento deve ser selecionada."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "CategoriaProd17"

Cenario: Excluir Dependências
Dado que excluo a localidade "LOCORIGEMDEPCATPROD"
Dado que excluo a restrição de localidade "RESLOCDEPCATPRO"
Dado que excluo o produto "PRODDEPCATPROD"
Dado que excluo o invólucro "INVDEPCATPROD"
Dado que excluo a categoria de produto "CATPRODDEPCATPROD"
Dado que excluo o embarcador "EMBDEPCATPROD"
