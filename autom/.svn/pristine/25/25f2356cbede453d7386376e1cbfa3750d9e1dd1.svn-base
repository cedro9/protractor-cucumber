#language:pt
@Cadastro
@NotasFiscais
Funcionalidade: Cadastro de Notas Fiscais


Cenario: Cadastro de Dependência
Dado que cadastro o embarcador "EMBDEPNF"
Dado que cadastro o tipo de pedido "TIPPEDDEPNF"
Dado que cadastro a restrição de localidade "RESLOCDEPNF"
Dado que cadastro o destino "DESTDEPNF" com a restrição de localidade "RESLOCDEPNF" e Cep "76820-408"
Dado que cadastro o hub de destino "LOCDESTHUBDEPNF" com a restrição de localidade "RESLOCDEPNF" e Cep "76820-408"
Dado que cadastro a origem "ORIGDEPNF" com a restrição de localidade "RESLOCDEPNF" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPNF"
Dado que cadastro o produto "PRODDEPNF" com a categoria "CATPRODDEPNF" e embarcador "EMBDEPNF"
Dado que cadastro o tipo de item de pedido "ITEMPEDDEPNF"
Dado que cadastro o invólucro "INVDEPNF" com politicas definidas no produto
Dado que cadastro o pedido "PEDDEPNF01" do embarcador "EMBDEPNF" tipo de pedido "TIPPEDDEPNF" destino "DESTDEPNF" origem "ORIGDEPNF" produto "PRODDEPNF" item de pedido "ITEMPEDDEPNF" e invólucro "INVDEPNF" e Hub de destino "LOCDESTHUBDEPNF"
Dado que cadastro o pedido "PEDDEPNF02" do embarcador "EMBDEPNF" tipo de pedido "TIPPEDDEPNF" destino "DESTDEPNF" origem "ORIGDEPNF" produto "PRODDEPNF" item de pedido "ITEMPEDDEPNF" e invólucro "INVDEPNF" e Hub de destino "LOCDESTHUBDEPNF"
Dado que cadastro o pedido "PEDDEPNF03" do embarcador "EMBDEPNF" tipo de pedido "TIPPEDDEPNF" destino "DESTDEPNF" origem "ORIGDEPNF" produto "PRODDEPNF" item de pedido "ITEMPEDDEPNF" e invólucro "INVDEPNF" e Hub de destino "LOCDESTHUBDEPNF"
Dado que cadastro o pedido "PEDDEPNF04" do embarcador "EMBDEPNF" tipo de pedido "TIPPEDDEPNF" destino "DESTDEPNF" origem "ORIGDEPNF" produto "PRODDEPNF" item de pedido "ITEMPEDDEPNF" e invólucro "INVDEPNF" e Hub de destino "LOCDESTHUBDEPNF"


Cenario: Cadastrar uma nota fiscal com sucesso - Todos campos preenchidos
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota1",  Nome "Nota1" e Descrição "Nota1"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota1"


Cenario: Cadastrar uma nota fiscal com sucesso - Com dois pedidos
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota2",  Nome "Nota2" e Descrição "Nota2"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota2"


Cenario: Cadastrar uma nota fiscal sem sucesso - Codigo nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Nota3" e Descrição "Nota3"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."


Cenario: Cadastrar uma nota fiscal sem sucesso - Nome nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota4",  Nome " " e Descrição "Nota4"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."


Cenario: Cadastrar uma nota fiscal sem sucesso - Descrição nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota5",  Nome "Nota5" e Descrição " "
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."


Cenario: Cadastrar uma nota fiscal sem sucesso - Pedido nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota6",  Nome "Nota6" e Descrição "Nota6"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "O campo 'pedidos' está vazio."



Cenario: Cadastrar uma nota fiscal sem sucesso - Pedido atrelado a outra nota fiscal
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota7",  Nome "Nota7" e Descrição "Nota7"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota8",  Nome "Nota8" e Descrição "Nota8"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota7"


Cenario: Cadastrar uma nota fiscal sem sucesso - Dois pedidos - Um pedido atrelado e outro nao
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota9",  Nome "Nota9" e Descrição "Nota9"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota10",  Nome "Nota10" e Descrição "Nota10"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota9"


Cenario: Copiar uma nota fiscal com sucesso 
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota11",  Nome "Nota11" e Descrição "Nota11"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota11"
E clico no botão copiar
Quando preencho o campo Codigo "Nota12",  Nome "Nota12" e Descrição "Nota12"
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota11"
E excluo o cadastro gerado no teste com o codigo "Nota12"


Cenario: Copiar uma nota fiscal com sucesso - Copiar Com Dois Pedidos e salvar com apenas um pedido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota13",  Nome "Nota13" e Descrição "Nota13"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota13"
E clico no botão copiar
Quando preencho o campo Codigo "Nota14",  Nome "Nota14" e Descrição "Nota14"
Quando apago o pedido
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF03"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota13"
E excluo o cadastro gerado no teste com o codigo "Nota14"


Cenario: Copiar uma nota fiscal com sucesso - Copiar Com Dois Pedidos e salvar com dois pedido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota15",  Nome "Nota15" e Descrição "Nota15"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota15"
E clico no botão copiar
Quando preencho o campo Codigo "Nota16",  Nome "Nota16" e Descrição "Nota16"
Quando apago o pedido
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF03"
Quando seleciono o Pedido "PEDDEPNF04"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota15"
E excluo o cadastro gerado no teste com o codigo "Nota16"


Cenario: Copiar uma nota fiscal sem sucesso - Codigo nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota17",  Nome "Nota17" e Descrição "Nota17"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota17"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Nota18" e Descrição "Nota18"
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota17"


Cenario: Copiar uma nota fiscal sem sucesso - Nome nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota19",  Nome "Nota19" e Descrição "Nota19"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota19"
E clico no botão copiar
Quando preencho o campo Codigo "Nota20",  Nome " " e Descrição "Nota20"
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota19"


Cenario: Copiar uma nota fiscal sem sucesso - Descrição nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota21",  Nome "Nota21" e Descrição "Nota21"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota21"
E clico no botão copiar
Quando preencho o campo Codigo "Nota22",  Nome "Nota22" e Descrição " "
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota21"


Cenario: Copiar uma nota fiscal sem sucesso - Pedido atrelado a outra nota fiscal
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota23",  Nome "Nota23" e Descrição "Nota23"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota23"
E clico no botão copiar
Quando preencho o campo Codigo "Nota24",  Nome "Nota24" e Descrição "Nota24"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota23"


Cenario: Copiar uma nota fiscal sem sucesso - Dois pedidos - Um pedido atrelado e outro nao
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota25",  Nome "Nota25" e Descrição "Nota25"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota25"
E clico no botão copiar
Quando preencho o campo Codigo "Nota26",  Nome "Nota26" e Descrição "Nota26"
Quando apago o pedido
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF03"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota25"


Cenario: Editar uma nota fiscal com sucesso - Alterar Nome
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota27",  Nome "Nota27" e Descrição "Nota27"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota27"
E clico no botão editar
Quando altero o campo  Nome "Nota28" e Descrição "Nota27"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota27"


Cenario: Editar uma nota fiscal com sucesso - Alterar Descrição
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota29",  Nome "Nota29" e Descrição "Nota29"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota29"
E clico no botão editar
Quando altero o campo  Nome "Nota29" e Descrição "Nota30"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota29"


Cenario: Editar uma nota fiscal com sucesso - Alterar Pedido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota31",  Nome "Nota31" e Descrição "Nota31"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota31"
E clico no botão editar
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota31"


Cenario: Editar uma nota fiscal com sucesso - Nota com 1 pedido - Adicionar um Pedido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota32",  Nome "Nota32" e Descrição "Nota32"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota32"
E clico no botão editar
Quando seleciono o Pedido "PEDDEPNF02"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota32"


Cenario: Editar uma nota fiscal com sucesso - Nota com 2 pedidos - Remover um Pedido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota33",  Nome "Nota33" e Descrição "Nota33"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota33"
E clico no botão editar
Quando apago o pedido
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota33"


Cenario: Editar uma nota fiscal sem sucesso - Nome nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota34",  Nome "Nota34" e Descrição "Nota34"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota34"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Nota34"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota34"


Cenario: Editar uma nota fiscal sem sucesso - Descrição nao preenchido
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota35",  Nome "Nota35" e Descrição "Nota35"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota35"
E clico no botão editar
Quando altero o campo  Nome "Nota35" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota35"


Cenario: Editar uma nota fiscal sem sucesso - Alterar para mesmo pedido atrelado a outra nota fiscal
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota36",  Nome "Nota36" e Descrição "Nota36"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota37",  Nome "Nota37" e Descrição "Nota37"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota37"
E clico no botão editar
Quando apago o pedido
Quando seleciono o Pedido "PEDDEPNF01"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota36"
E excluo o cadastro gerado no teste com o codigo "Nota37"


Cenario: Editar uma nota fiscal sem sucesso - Dois pedidos - Um pedido atrelado e outro nao
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota38",  Nome "Nota38" e Descrição "Nota38"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota39",  Nome "Nota39" e Descrição "Nota39"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota39"
E clico no botão editar
Quando seleciono o Pedido "PEDDEPNF01"
E clico no botão Salvar
Entao é exibido a mensagem "Um dos pedidos selecionados já está associado a uma nota fiscal."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota38"
E excluo o cadastro gerado no teste com o codigo "Nota39"


Cenario: Editar uma nota fiscal sem sucesso - Remover todos os pedidos
Dado que acesso a tela "Cadastro", "Notas fiscais"
E clico no botão Cadastro
Quando preencho o campo Codigo "Nota40",  Nome "Nota40" e Descrição "Nota40"
Quando Preencho o Valor da nota fiscal "1000,00"
Quando preencho o Peso da nota fiscal "10,00"
Quando seleciono o Pedido "PEDDEPNF01"
Quando seleciono o Pedido "PEDDEPNF02"
Quando preencho a Chave NFe "55cy$#%552&666"
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Nota40"
E clico no botão editar
Quando apago o pedido
Quando apago o pedido
E clico no botão Salvar
Entao é exibido a mensagem "O campo 'pedidos' está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Nota40"


Cenario: Excluir Dependência
Dado que excluo o pedido "PEDDEPNF01"
Dado que excluo o pedido "PEDDEPNF02"
Dado que excluo o pedido "PEDDEPNF03"
Dado que excluo o pedido "PEDDEPNF04" 
Dado que excluo o produto "PRODDEPNF"
Dado que excluo a categoria de produto "CATPRODDEPNF"
Dado que excluo o embarcador "EMBDEPNF"
Dado que excluo o tipo de pedido "TIPPEDDEPNF"
Dado que excluo a localidade "DESTDEPNF"
Dado que excluo a localidade "ORIGDEPNF"
Dado que excluo a localidade "LOCDESTHUBDEPNF"
Dado que excluo a restrição de localidade "RESLOCDEPNF"
Dado que excluo o tipo de item de pedido "ITEMPEDDEPNF"
Dado que excluo o invólucro "INVDEPNF"