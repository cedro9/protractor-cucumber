#language:pt

@Administração
@InvolucrosdeUE

Funcionalidade: Cadastro Involucros de UE

Cenário: Cadastro de Dependências
Dado que libero acesso full as telas do sistema
Dado que libero todas as tarefas de geolocalização
Dado que removo as configurações de entidade padrão "Transportadora"
Dado que cadastro a categoria de produto "CATPRODDEPINV"
Dado que cadastro o invólucro "INVDEPINV" com politicas definidas no produto
Dado que cadastro o invólucro composto "INVCOMPDEPINV"
Dado que cadastro o embarcador "EMBDEPINV"
Dado que cadastro o produto "PRODDEPINV" com a categoria "CATPRODDEPINV" e embarcador "EMBDEPINV"
Dado que cadastro a restrição de localidade "RESLOCDEPINV"
Dado que cadastro a origem "ORIDEPINV" com a restrição de localidade "RESLOCDEPINV" e Cep "76820-408"

Cenário: Cadastrar invólucro com sucesso - invólucro simples
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro01",  Nome "Involucro01" e Descrição "Involucro01"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro01"

Cenário: Cadastrar invólucro com sucesso - invólucro composto
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro02",  Nome "Involucro02" e Descrição "Involucro02"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro composto
Quando em Politica, preencho os campos Obter Peso por "Invólucro ", Obter Valor por "Invólucro " e Obter dimensões por "Dimensões do melhor arranjo "
Quando em Politica, preencho os campos Obter orientações por "Invólucro ", Obter peso máximo por orientação por "Invólucro " e Obter faces frágeis por "Invólucro "
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Invólucro ", Obter empilhamento por "Invólucro " e Obter direções de carregamento e descarregamento por "Invólucro "
Quando em Politica, preencho os campos Obter regras de movimentação por "Invólucro ", Obter mínimo suporte para objeto por "Invólucro " e Obter embutimento por "Invólucro "
Quando em Politica, preencho os campos Permitir desamarração "Destino" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
Quando clico na aba "Restrições internas"
Quando preencho os Limites para itens internos Volume mínimo "0,05", Volume máximo "10,0", Peso mínimo "0,1", Peso máximo "15,0", Valor mínimo "0,5", Valor máximo "2000,0", Quantidade mínima "2,0" e Quantidade máxima "10,0"
Quando preencho Limites para quantidades Categoria de invólucro "Palete", Min "1" e Max "10"
Quando seleciono as Restrições de categorias de invólucro compativeis "Fardo"
Quando seleciona as Restrições para invólucros de unidades de embarque "INVDEPINV"
Quando seleciono a Restrições para categoria de produtos compativeis "CATPRODDEPINV"
Quando clico na aba "Restrições de produtos"
Quando seleciono a Restrições de compatibilidade "PRODDEPINV"
Quando preencho Restrições gerais "PRODDEPINV", Min "1" e Max "10"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro02"

Cenário: Cadastrar invólucro sem sucesso - invólucro já cadastrado
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro03",  Nome "Involucro03" e Descrição "Involucro03"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro03",  Nome "Involucro03" e Descrição "Involucro03"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro03"

Cenário: Cadastrar invólucro sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Involucro04" e Descrição "Involucro04"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "O campo código está vazio."
E clico no botão OK
E clico no botão "Voltar"

Cenário: Cadastrar invólucro sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro05",  Nome " " e Descrição "Involucro05"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E clico no botão "Voltar"

Cenário: Cadastrar invólucro sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro06",  Nome "Involucro06" e Descrição " "
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E clico no botão "Voltar"

Cenário: Cadastrar invólucro sem sucesso - categoria não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro07",  Nome "Involucro07" e Descrição "Involucro07"
Quando preencho valor "5000,00", Peso "5,00" e Categoria " "
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Categoria deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de peso não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro08",  Nome "Involucro08" e Descrição "Involucro08"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por " ", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de valor não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro09",  Nome "Involucro09" e Descrição "Involucro09"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por " " e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de valor deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de dimensões não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro10",  Nome "Involucro10" e Descrição "Involucro10"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por " "
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de dimensões deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de orientações não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro11",  Nome "Involucro11" e Descrição "Involucro11"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por " ", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de peso máximo por orientação não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro12",  Nome "Involucro12" e Descrição "Involucro12"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por " " e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso máximo por orientação deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de faces frágeis não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro13",  Nome "Involucro13" e Descrição "Involucro13"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por " "
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações frágeis deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de empilhamento máximo de si não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro14",  Nome "Involucro14" e Descrição "Involucro14"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por " ", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de empilhamento máximo por orientação deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de empilhamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro15",  Nome "Involucro15" e Descrição "Involucro15"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por " " e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de empilhamento deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de direções de carregamento/descarregamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro16",  Nome "Involucro16" e Descrição "Involucro16"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por " "
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de direções de carregamento/descarregamento deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de regras de movimentação não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro17",  Nome "Involucro17" e Descrição "Involucro17"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por " ", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de regras de movimentação deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de mínimo suporte para objeto não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro18",  Nome "Involucro18" e Descrição "Involucro18"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por " " e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de mínimo suporte para objeto deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de obtenção de embutimento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro19",  Nome "Involucro19" e Descrição "Involucro19"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por " "
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de embutimento deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - política de fracionamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro20",  Nome "Involucro20" e Descrição "Involucro20"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de fracionamento deve ser selecionada."

Cenário: Cadastrar invólucro sem sucesso - invólucro da parte fracionária não selecionado
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro21",  Nome "Involucro21" e Descrição "Involucro21"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga " " 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
Então é exibido a mensagem "Política de arranjo em carga deve ser selecionada."

Cenário: Copiar invólucro com sucesso
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro22",  Nome "Involucro22" e Descrição "Involucro22"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro22"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro23",  Nome "Involucro23" e Descrição "Involucro23"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro22"
E excluo o cadastro gerado no teste com o codigo "Involucro23"

Cenário: Copiar invólucro sem sucesso - invólucro já cadastrado
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro24",  Nome "Involucro24" e Descrição "Involucro24"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro24"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro24",  Nome "Involucro24" e Descrição "Involucro24"
E clico no botão Salvar
Então é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro24"

Cenário: Copiar invólucro sem sucesso - código não preenchido
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro25",  Nome "Involucro25" e Descrição "Involucro25"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro25"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Involucro26" e Descrição "Involucro26"
E clico no botão Salvar
Então é exibido a mensagem "O campo código está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro25"

Cenário: Copiar invólucro sem sucesso - nome não preenchido
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro27",  Nome "Involucro27" e Descrição "Involucro27"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro27"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro28",  Nome " " e Descrição "Involucro28"
E clico no botão Salvar
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro27"

Cenário: Copiar invólucro sem sucesso - descrição não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro29",  Nome "Involucro29" e Descrição "Involucro29"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro29"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro30",  Nome "Involucro30" e Descrição " "
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro29"

Cenário: Copiar invólucro sem sucesso - categoria não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro31",  Nome "Involucro31" e Descrição "Involucro31"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro31"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro32",  Nome "Involucro32" e Descrição "Involucro32"
Quando preencho valor "5000,00", Peso "5,00" e Categoria " "
E clico no botão Salvar
Então é exibido a mensagem "Categoria deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro31"

Cenário: Copiar invólucro sem sucesso - política de obtenção de peso não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro33",  Nome "Involucro33" e Descrição "Involucro33"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro33"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro34",  Nome "Involucro34" e Descrição "Involucro34"
Quando em Politica, preencho os campos Obter Peso por " ", Obter Valor por "Produto" e Obter dimensões por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro33"

Cenário: Copiar invólucro sem sucesso - política de obtenção de valor não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro35",  Nome "Involucro35" e Descrição "Involucro35"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro35"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro36",  Nome "Involucro36" e Descrição "Involucro36"
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por " " e Obter dimensões por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de valor deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro35"

Cenário: Copiar invólucro sem sucesso - política de obtenção de dimensões não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro37",  Nome "Involucro37" e Descrição "Involucro37"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro37"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro38",  Nome "Involucro38" e Descrição "Involucro38"
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de dimensões deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro37"

Cenário: Copiar invólucro sem sucesso - política de obtenção de orientações não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro39",  Nome "Involucro39" e Descrição "Involucro39"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro39"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro40",  Nome "Involucro40" e Descrição "Involucro40"
Quando em Politica, preencho os campos Obter orientações por " ", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro39"

Cenário: Copiar invólucro sem sucesso - política de obtenção de peso máximo por orientação não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro41",  Nome "Involucro41" e Descrição "Involucro41"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro41"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro42",  Nome "Involucro42" e Descrição "Involucro42"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por " " e Obter faces frágeis por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso máximo por orientação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro41"

Cenário: Copiar invólucro sem sucesso - política de obtenção de faces frágeis não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro43",  Nome "Involucro43" e Descrição "Involucro43"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro43"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro44",  Nome "Involucro44" e Descrição "Involucro44"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações frágeis deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro43"

Cenário: Copiar invólucro sem sucesso - política de obtenção de empilhamento máximo de si não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro45",  Nome "Involucro45" e Descrição "Involucro45"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro45"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro46",  Nome "Involucro46" e Descrição "Involucro46"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por " ", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de empilhamento máximo por orientação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro45"

Cenário: Copiar invólucro sem sucesso - política de obtenção de empilhamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro47",  Nome "Involucro47" e Descrição "Involucro47"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro47"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro48",  Nome "Involucro48" e Descrição "Involucro48"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por " " e Obter direções de carregamento e descarregamento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de empilhamento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro47"

Cenário: Copiar invólucro sem sucesso - política de obtenção de direções de carregamento/descarregamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro49",  Nome "Involucro49" e Descrição "Involucro49"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro49"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro50",  Nome "Involucro50" e Descrição "Involucro50"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de direções de carregamento/descarregamento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro49"

Cenário: Copiar invólucro sem sucesso - política de obtenção de regras de movimentação não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro51",  Nome "Involucro51" e Descrição "Involucro51"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro51"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro52",  Nome "Involucro52" e Descrição "Involucro52"
Quando em Politica, preencho os campos Obter regras de movimentação por " ", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de regras de movimentação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro51"

Cenário: Copiar invólucro sem sucesso - política de obtenção de mínimo suporte para objeto não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro53",  Nome "Involucro53" e Descrição "Involucro53"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro53"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro54",  Nome "Involucro54" e Descrição "Involucro54"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por " " e Obter embutimento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de mínimo suporte para objeto deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro53"

Cenário: Copiar invólucro sem sucesso - política de obtenção de embutimento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro55",  Nome "Involucro55" e Descrição "Involucro55"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro55"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro56",  Nome "Involucro56" e Descrição "Involucro56"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de embutimento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro55"

Cenário: Copiar invólucro sem sucesso - política de fracionamento não preenchida
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro57",  Nome "Involucro57" e Descrição "Involucro57"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro57"
E clico no botão copiar
Quando preencho o campo Codigo "Involucro58",  Nome "Involucro58" e Descrição "Involucro58"
Quando apago a regra dos itens fracionados Política de fracionamento
E clico no botão Salvar
Então é exibido a mensagem "Política de fracionamento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro57"

# Devido a alteração no sistema, o Involucro da parte fracionaria nao é mais obrigatorio 
# Cenário: Copiar invólucro sem sucesso - Invólucro da parte fracionária do item não preenchida
# Dado que acesso a tela "Administração", "Invólucros de UE"
# E clico no botão Cadastro
# Quando preencho o campo Codigo "Involucro59",  Nome "Involucro59" e Descrição "Involucro59"
# Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
# Quando seleciono o Involucro simples
# Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
# Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
# Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
# Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
# Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
# Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
# Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
# Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
# Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
# Quando preencho a Restrições de suporte de objeto "88"
# Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
# Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
# Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
# Quando clico na aba "Empilhamento"
# Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
# Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
# Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
# Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
# E clico no botão Salvar
# E clico no botão OK
# E clico no botão "Voltar"
# Quando realizo o filtro com o codigo "Involucro59"
# E clico no botão copiar
# Quando preencho o campo Codigo "Involucro60",  Nome "Involucro60" e Descrição "Involucro60"
# Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item " "
# E clico no botão Salvar
# Então é exibido a mensagem "Invólucro da parte fracionária do item deve ser selecionado."
# E clico no botão OK
# E clico no botão "Voltar"
# E excluo o cadastro gerado no teste com o codigo "Involucro59"

Cenário: Editar invólucro com sucesso
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro61",  Nome "Involucro61" e Descrição "Involucro61"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro61"
E clico no botão editar
Quando altero o campo  Nome "Alterado" e Descrição "Alterado"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro61"

Cenário: Editar invólucro - alterar orientações permitidas em bloco
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro62",  Nome "Involucro62" e Descrição "Involucro62"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro62"
E clico no botão editar
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "200", emp para calculo "5", Empilhamento maximo "4"
E clico no botão Alterar em Bloco
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro62"

Cenário: Editar invólucro sem sucesso - apagar o nome
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro63",  Nome "Involucro63" e Descrição "Involucro63"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro63"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Involucro63"
E clico no botão Salvar
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro63"

Cenário: Editar invólucro sem sucesso - apagar a descrição
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro64",  Nome "Involucro64" e Descrição "Involucro64"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro64"
E clico no botão editar
Quando altero o campo  Nome "Involucro64" e Descrição " "
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro64"

Cenário: Editar invólucro sem sucesso - apagar a categoria
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro65",  Nome "Involucro65" e Descrição "Involucro65"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro65"
E clico no botão editar
Quando preencho valor "5000,00", Peso "5,00" e Categoria " "
E clico no botão Salvar
Então é exibido a mensagem "Categoria deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro65"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de peso
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro66",  Nome "Involucro66" e Descrição "Involucro66"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro66"
E clico no botão editar
Quando em Politica, preencho os campos Obter Peso por " ", Obter Valor por "Produto" e Obter dimensões por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro66"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de valor
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro67",  Nome "Involucro67" e Descrição "Involucro67"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro67"
E clico no botão editar
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por " " e Obter dimensões por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de valor deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro67"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de dimensões
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro68",  Nome "Involucro68" e Descrição "Involucro68"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro68"
E clico no botão editar
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de dimensões deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro68"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de orientações
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro69",  Nome "Involucro69" e Descrição "Involucro69"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro69"
E clico no botão editar
Quando em Politica, preencho os campos Obter orientações por " ", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro69"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de peso máximo por orientação
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro70",  Nome "Involucro70" e Descrição "Involucro70"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro70"
E clico no botão editar
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por " " e Obter faces frágeis por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de peso máximo por orientação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro70"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de faces frágeis
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro71",  Nome "Involucro71" e Descrição "Involucro71"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro71"
E clico no botão editar
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de orientações frágeis deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro71"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de empilhamento máximo de si
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro72",  Nome "Involucro72" e Descrição "Involucro72"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro72"
E clico no botão editar
Quando em Politica, preencho os campos Obter empilhamento máximo de si por " ", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de empilhamento máximo por orientação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro72"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de direções de carregamento/descarregamento
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro73",  Nome "Involucro73" e Descrição "Involucro73"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro73"
E clico no botão editar
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de direções de carregamento/descarregamento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro73"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de regras de movimentação
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro74",  Nome "Involucro74" e Descrição "Involucro74"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro74"
E clico no botão editar
Quando em Politica, preencho os campos Obter regras de movimentação por " ", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de regras de movimentação deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro74"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de mínimo suporte para objeto
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro75",  Nome "Involucro75" e Descrição "Involucro75"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro75"
E clico no botão editar
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por " " e Obter embutimento por "Produto"
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de mínimo suporte para objeto deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro75"

Cenário: Editar invólucro sem sucesso - apagar a política de obtenção de embutimento
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro76",  Nome "Involucro76" e Descrição "Involucro76"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro76"
E clico no botão editar
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por " "
E clico no botão Salvar
Então é exibido a mensagem "Política de obtenção de embutimento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro76"

Cenário: Editar invólucro sem sucesso - apagar a política de fracionamento
Dado que acesso a tela "Administração", "Invólucros de UE"
E clico no botão Cadastro
Quando preencho o campo Codigo "Involucro77",  Nome "Involucro77" e Descrição "Involucro77"
Quando preencho valor "5000,00", Peso "5,00" e Categoria "Palete"
Quando seleciono o Involucro simples
Quando em Politica, preencho os campos Obter Peso por "Produto", Obter Valor por "Produto" e Obter dimensões por "Produto"
Quando em Politica, preencho os campos Obter orientações por "Produto", Obter peso máximo por orientação por "Produto" e Obter faces frágeis por "Produto"
Quando em Politica, preencho os campos Obter empilhamento máximo de si por "Produto", Obter empilhamento por "Produto" e Obter direções de carregamento e descarregamento por "Produto"
Quando em Politica, preencho os campos Obter regras de movimentação por "Produto", Obter mínimo suporte para objeto por "Produto" e Obter embutimento por "Produto"
Quando em Politica, preencho os campos Permitir desamarração "Produto" e Arranjo em carga "Unidade Sólida" 
Quando preencho as Dimensões do suporte Altura "0,50", Largura "0,50" e Comprimento "0,50"
Quando Dimensões máximas internas Altura "0,60", Largura "0,60" e Comprimento "0,60"
Quando Dimensões máximas externas Altura "0,62", Largura "0,62" e Comprimento "0,62"
Quando preencho as informações de embutimento Orientação de embutimento "Comprimento" e Folga de embutimento "0,01"
Quando preencho a Restrições de suporte de objeto "88"
Quando na Orientação de Involucros seleciono a Origem "ORIDEPINV" , incluo em todas orientações peso maximo "150", emp para calculo "5", Empilhamento maximo "4"
Quando seleciono a Configurações para Carregamento-Descarregamento do Involucro "Chão para cima"
Quando seleciono a regra dos itens fracionados Política de fracionamento "Proporção de altura, peso e valor" e Invólucro da parte fracionária do item "INVDEPINV"
Quando clico na aba "Empilhamento"
Quando seleciono o Empilhamento acima de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento abaixo de invólucros de UE nao permitido "INVDEPINV"
Quando seleciono o Empilhamento acima de categorias de produto nao permitido "CATPRODDEPINV"
Quando seleciono o Empilhamento abaixo de de categorias de produto nao permitido "CATPRODDEPINV"
E clico no botão Salvar
E clico no botão OK
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Involucro77"
E clico no botão editar
Quando apago a regra dos itens fracionados Política de fracionamento
E clico no botão Salvar
Então é exibido a mensagem "Política de fracionamento deve ser selecionada."
E clico no botão OK
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Involucro77"

Cenário: Excluir Dependências
Dado que excluo o produto "PRODDEPINV"
Dado que excluo a categoria de produto "CATPRODDEPINV"
Dado que excluo o invólucro "INVDEPINV"
Dado que excluo o invólucro "INVCOMPDEPINV"
Dado que excluo o embarcador "EMBDEPINV"
Dado que excluo a localidade "ORIDEPINV"
Dado que excluo a restrição de localidade "RESLOCDEPINV"