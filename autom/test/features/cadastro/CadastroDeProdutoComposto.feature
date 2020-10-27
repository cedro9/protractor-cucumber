#language:pt
@Cadastro
@CadastroProdutoComposto
Funcionalidade: Cadastro de Produto Composto
Como um usuario explicito do sistema
Eu quero cadastrar, copiar e editar o produto composto de forma que o sistema nao permita realizar a operação de forma incorreta.


Cenario: Cadastro de Dependências
Dado que cadastro o embarcador "EMBDEPPROCOM"
Dado que cadastro a categoria de produto "CATDEPPROCOM"
Dado que cadastro o produto "PRODEPPROCOM01" com a categoria "CATDEPPROCOM" e embarcador "EMBDEPPROCOM"
Dado que cadastro o produto "PRODEPPROCOM02" com a categoria "CATDEPPROCOM" e embarcador "EMBDEPPROCOM"
Dado que cadastro o produto "PRODEPPROCOM03" com a categoria "CATDEPPROCOM" e embarcador "EMBDEPPROCOM"
Dado que cadastro o produto "PRODEPPROCOM04" com a categoria "CATDEPPROCOM" e embarcador "EMBDEPPROCOM"

Cenario: Cadastrar produto composto sem sucesso - código não preenchido
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo " ",  Nome "ProdutoComposto1" e Descrição "ProdutoComposto1"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Entao e exibido a mensagem O campo código está vazio.


Cenario: Cadastrar produto composto sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto2",  Nome " " e Descrição "ProdutoComposto2"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Entao e exibido a mensagem O campo nome está vazio.


Cenario: Cadastrar produto composto sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto3",  Nome "ProdutoComposto3" e Descrição " "
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Entao e exibido a mensagem O campo descrição está vazio.


Cenario: Cadastrar produto composto sem sucesso - embarcador não preenchido
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto4",  Nome "ProdutoComposto4" e Descrição "ProdutoComposto4"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Entao e exibido a mensagem indicando que o campo Embarcador esta vazio


Cenario: Cadastrar produto composto sem sucesso - nenhum produto selecionado
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto5",  Nome "ProdutoComposto5" e Descrição "ProdutoComposto5"
Quando seleciono o embarcador "EMBDEPPROCOM"
E clico no botão Salvar
Entao e exibido a mensagem indicando que deve conter pelo menos 1 produto


Cenario: Cadastrar produto composto sem sucesso - nenhum subvolume
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto6",  Nome "ProdutoComposto6" e Descrição "ProdutoComposto6"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto " ", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Entao e exibido a mensagem indicando que deve conter pelo menos 1 Subvolume


Cenario: Validar cadastro de um produto composto com 1 subvolume
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto7",  Nome "ProdutoComposto7" e Descrição "ProdutoComposto7"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste1"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto7"


Cenario: Validar cadastro de um produto composto com 4 subvolume
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto8",  Nome "ProdutoComposto8" e Descrição "ProdutoComposto8"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste2"
Quando Adiciono o segundo produto "PRODEPPROCOM02", Quantidade "3" e Referencia "teste2"
Quando Adiciono o terceiro produto "PRODEPPROCOM03", Quantidade "4" e Referencia "teste2"
Quando Adiciono o quarto produto "PRODEPPROCOM04", Quantidade "5" e Referencia "teste2"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto8"


Cenario: editar produto composto com sucesso - adicionar novo subvolume
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto9",  Nome "ProdutoComposto9" e Descrição "ProdutoComposto9"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto9"
E clico no botão editar
Quando Adiciono o segundo produto "PRODEPPROCOM02", Quantidade "3" e Referencia "teste2"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto9"


Cenario: editar produto composto com sucesso - remover subvolume
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto10",  Nome "ProdutoComposto10" e Descrição "ProdutoComposto10"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste2"
Quando Adiciono o segundo produto "PRODEPPROCOM02", Quantidade "3" e Referencia "teste2"
Quando Adiciono o terceiro produto "PRODEPPROCOM03", Quantidade "4" e Referencia "teste2"
Quando Adiciono o quarto produto "PRODEPPROCOM04", Quantidade "5" e Referencia "teste2"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto10"
E clico no botão editar
Quando removo o segundo produto
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto10"


Cenario:Editar produto composto sem sucesso - apagar o nome
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto11",  Nome "ProdutoComposto11" e Descrição "ProdutoComposto11"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto11"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "teste6"
E clico no botão Salvar
Então e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto11"


Cenario:Editar produto composto sem sucesso - apagar a descrição
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto12",  Nome "ProdutoComposto12" e Descrição "ProdutoComposto12"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto12"
E clico no botão editar
Quando altero o campo  Nome "teste7" e Descrição " "
E clico no botão Salvar
Então e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto12"


Cenario:Editar produto composto sem sucesso - desselecionar embarcador
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto13",  Nome "ProdutoComposto13" e Descrição "ProdutoComposto13"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto13"
E clico no botão editar
Quando seleciono o embarcador " "
E clico no botão Salvar
Então e exibido a mensagem que O campo embarcador esta vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto13"


Cenario:Editar produto composto sem sucesso - remover todos os subvolumes
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto14",  Nome "ProdutoComposto14" e Descrição "ProdutoComposto14"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto14"
E clico no botão editar
Quando removo todos subvolumes
E clico no botão Salvar
Então e exibido a mensagem indicando que deve conter pelo menos 1 produto
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto14"


Cenario:Copiar produto composto com sucesso
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto15",  Nome "ProdutoComposto15" e Descrição "ProdutoComposto15"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto15"
E clico no botão copiar
Quando preencho o campo Codigo "ProdutoComposto16",  Nome "ProdutoComposto16" e Descrição "ProdutoComposto16"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto15"
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto16"


Cenario:Copiar produto composto sem sucesso - produto composto já cadastrado
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto17",  Nome "ProdutoComposto17" e Descrição "ProdutoComposto17"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto17"
E clico no botão copiar
Quando preencho o campo Codigo "ProdutoComposto17",  Nome "ProdutoComposto17" e Descrição "ProdutoComposto17"
E clico no botão Salvar
Então e exibido a mensagem Já existe uma entidade com o código informado
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto17"


Cenario:Copiar produto composto sem sucesso - código não preenchido
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto18",  Nome "ProdutoComposto18" e Descrição "ProdutoComposto18"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto18"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "ProdutoComposto19" e Descrição "ProdutoComposto19"
E clico no botão Salvar
Então e exibido a mensagem O campo código está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto18"


Cenario:Copiar produto composto sem sucesso - nome não preenchido
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto20",  Nome "ProdutoComposto20" e Descrição "ProdutoComposto20"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto20"
E clico no botão copiar
Quando preencho o campo Codigo "ProdutoComposto21",  Nome " " e Descrição "ProdutoComposto21"
E clico no botão Salvar
Então e exibido a mensagem O campo nome está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto20"


Cenario:Copiar produto composto sem sucesso - descrição não preenchida
Dado acesso a tela de cadastro de Produto Composto
Quando preencho o campo Codigo "ProdutoComposto21",  Nome "ProdutoComposto21" e Descrição "ProdutoComposto21"
Quando seleciono o embarcador "EMBDEPPROCOM"
Quando Adiciono o produto "PRODEPPROCOM01", Quantidade "2" e Referencia "teste3"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "ProdutoComposto21"
E clico no botão copiar
Quando preencho o campo Codigo "ProdutoComposto22",  Nome "ProdutoComposto22" e Descrição " "
E clico no botão Salvar
Então e exibido a mensagem O campo descrição está vazio.
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "ProdutoComposto21"


Cenario: Excluir de Dependências
Dado que excluo o produto "PRODEPPROCOM01"
Dado que excluo o produto "PRODEPPROCOM02"
Dado que excluo o produto "PRODEPPROCOM03"
Dado que excluo o produto "PRODEPPROCOM04"
Dado que excluo a categoria de produto "CATDEPPROCOM"
Dado que excluo o embarcador "EMBDEPPROCOM"