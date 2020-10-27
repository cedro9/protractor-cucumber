#language:pt
@Cadastro
@CadastroVeiculos
Funcionalidade: Cadastro de Veiculos

Cenario: Cadastro de Dependências
Dado que cadastro a categoria de produto "CATPRODDEPVEI"

Cenario: Cadastrar veículo com sucesso - veículo com um baú
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo1",  Nome "Veiculo1" e Descrição "Veiculo1"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo1"

Cenario: Cadastrar veículo com sucesso - veículo com dois baús
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo2",  Nome "Veiculo2" e Descrição "VeicVeiculo2"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
Quando adiciono o segundo Bau
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo2"

Cenario: Cadastrar veículo sem sucesso - veículo já cadastrado
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo3",  Nome "Veiculo3" e Descrição "Veiculo3"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo3",  Nome "Veiculo3" e Descrição "Veiculo3"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão "Salvar"
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo3"

Cenario: Cadastrar veículo sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "Veiculo4" e Descrição "Veiculo4"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar veículo sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo4",  Nome " " e Descrição "Veiculo4"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar veículo sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo4",  Nome "Veiculo4" e Descrição " "
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Copiar veículo com sucesso
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo4",  Nome "Veiculo4" e Descrição "Veiculo4"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo4"
E clico no botão copiar
Quando preencho o campo Codigo "Veiculo5",  Nome "Veiculo5" e Descrição "Veiculo5"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo4"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo5"

Cenario: Copiar veículo sem sucesso - veículo já cadastrado
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo6",  Nome "Veiculo6" e Descrição "Veiculo6"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo6"
E clico no botão copiar
Quando preencho o campo Codigo "Veiculo6",  Nome "Veiculo6" e Descrição "Veiculo6"
E clico no botão "Salvar"
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo6"

Cenario: Copiar veículo sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo7",  Nome "Veiculo7" e Descrição "Veiculo7"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo7"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Veiculo7" e Descrição "Veiculo7"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo7"

Cenario: Copiar veículo sem sucesso -  nome não preenchido
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo8",  Nome "Veiculo8" e Descrição "Veiculo8"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo8"
E clico no botão copiar
Quando preencho o campo Codigo "Veiculo9",  Nome " " e Descrição "Veiculo9"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo8"

Cenario: Copiar veículo sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo9",  Nome "Veiculo9" e Descrição "Veiculo9"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo9"
E clico no botão copiar
Quando preencho o campo Codigo "Veiculo10",  Nome "Veiculo10" e Descrição " "
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo9"

Cenario: Editar veículo com sucesso - veículo com um baú
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo10",  Nome "Veiculo10" e Descrição "Veiculo10"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo10"
E clico no botão editar
Quando preencho a Similaridade "30" e a Propriedade "15"
Quando preencho o Numero de Eixos "4" e Velocidade Padrão "90"
E clico na aba "Baús"
Quando edito 1 Bau
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo10"

Cenario: Editar veículo com sucesso - veículo com dois baús
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo11",  Nome "Veiculo11" e Descrição "Veiculo11"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
Quando adiciono o segundo Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo11"
E clico no botão editar
Quando preencho a Similaridade "30" e a Propriedade "15"
Quando preencho o Numero de Eixos "4" e Velocidade Padrão "90"
E clico na aba "Baús"
Quando edito o segundo Bau
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo11"

Cenario: Editar veículo sem sucesso - apagar nome
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo12",  Nome "Veiculo12" e Descrição "Veiculo12"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo12"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Veiculo12"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo12"

Cenario: Editar veículo sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo13",  Nome "Veiculo13" e Descrição "Veiculo13"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo13"
E clico no botão editar
Quando altero o campo  Nome "Veiculo13" e Descrição " "
Quando preencho a Similaridade "30" e a Propriedade "15"
Quando preencho o Numero de Eixos "4" e Velocidade Padrão "90"
E clico no botão "Salvar"
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo13"

Cenario: Editar veículo sem sucesso - desselecionar modais
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo14",  Nome "Veiculo14" e Descrição "Veiculo14"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo14"
E clico no botão editar
Quando desseleciono todas as modais
E clico no botão "Salvar"
Entao é exibido a mensagem "Ao menos um modal deve estar associado ao veículo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro de Veiculo gerado no teste com o codigo "Veiculo14"

Cenario: Editar veículo sem sucesso - apagar baú
Dado que acesso a tela "Cadastro", "Veículos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Veiculo15",  Nome "Veiculo15" e Descrição "Veiculo15"
Quando preencho a Similaridade "20" e a Propriedade "5"
Quando preencho o Numero de Eixos "3" e Velocidade Padrão "70"
Quando seleciono a Associação de modais "Rodoviário"
Quando seleciono a Configurações para Carregamento-Descarregamento "Fundo para a porta de saída"
E clico na aba "Empilhamento"
Quando seleciono a forma "Caixa"
Quando seleciono o Empilhamento acima nao permitido "Tubo"
Quando seleciono o Empilhamento abaixo nao permitido "Tubo"
E clico na aba "Restrições de categorias de produto"
Quando seleciono as Restrições de categorias de produto "CATPRODDEPVEI", Altura maxima "1,20"
E clico na aba "Restrições de invólucro e categorias de invólucro"
Quando seleciono as Restrições de categorias de invólucro "Palete", Altura maxima "1,20"
E clico na aba "Baús"
Quando adiciono 1 Bau
E clico no botão Salvar e confirmo
E clico no botão "Voltar"
Quando realizo o filtro com o codigo "Veiculo15"
E clico no botão editar
E clico na aba "Baús"
Quando apago o Bau
E clico no botão "Salvar"
Entao é exibido a mensagem "Deve haver pelo menos um baú no veículo."
E clico no botão "OK"
E clico no botão "Voltar"
E excluo o cadastro gerado no teste com o codigo "Veiculo15"

Cenario: Excluir Dependências
Dado que excluo a categoria de produto "CATPRODDEPVEI"