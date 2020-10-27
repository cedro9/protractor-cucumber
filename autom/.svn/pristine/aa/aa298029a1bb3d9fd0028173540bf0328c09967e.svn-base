# language : pt

@Cadastro
@CadastroProduto

Funcionalidade: Cadastro de Produto

Cenario: Cadastrar Dependências
Dado que cadastro a categoria de produto "CATPRODDEPPROD"
Dado que cadastro o embarcador "EMBDEPPROD"

Cenario: Cadastrar produto sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo " ",  Nome "TesteAutomacao1" e Descrição "TesteAutomacao1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."

Cenario: Cadastrar produto sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome " " e Descrição "TesteAutomacao1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."

Cenario: Cadastrar produto sem sucesso - descrição não preenchida
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição " "
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."

Cenario: Cadastrar produto sem sucesso - categoria não preenchida
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição "Produto1"
Quando Preencho o campo Categioria com a categoria " "
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "O campo categoria está vazio."

Cenario: Cadastrar produto sem sucesso - embarcador não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição "Produto1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador " "
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "O campo embarcador está vazio."

Cenario: Validar regras de campo obrigatorio Altura Minima
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição "Produto1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "0,0001"
E clico no botão Salvar
Entao é exibido a mensagem "A altura mínima é de 1mm."

Cenario: Cadastrar produto sem sucesso - produto já cadastrado
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição "Produto1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto1",  Nome "Produto1" e Descrição "Produto1"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto1"

Cenario: Cadastrar produto sem sucesso - sem folga de embutimento
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
Quando Preencho os campos de embutimento Orientação "Comprimento" e folga " "
E clico no botão Salvar
Entao é exibido a mensagem "Uma folga de embutimento deve ser definida."

Cenario: Cadastrar produto sem sucesso - sem orientação
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho o campo Altura minima com o valor "10,00"
Quando Preencho os campos de embutimento Orientação " " e folga "0,5"
E clico no botão Salvar
Entao é exibido a mensagem "Uma orientação de embutimento deve ser selecionada."

Cenario: Copiar produto com sucesso 
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto2"
E clico no botão copiar
Quando preencho o campo Codigo "Produto3",  Nome "Produto3" e Descrição "Produto3"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto2"
E excluo o cadastro gerado no teste com o codigo "Produto3"

Cenario: Copiar produto sem sucesso - produto já cadastrado
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto4",  Nome "Produto4" e Descrição "Produto4"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto4"
E clico no botão copiar
Quando preencho o campo Codigo "Produto4",  Nome "Produto4" e Descrição "Produto4"
E clico no botão Salvar
Entao é exibido a mensagem "Já existe uma entidade com o código informado."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto4"

Cenario: Copiar produto sem sucesso - código não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto5",  Nome "Produto5" e Descrição "Produto5"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto5"
E clico no botão copiar
Quando preencho o campo Codigo " ",  Nome "Produto6" e Descrição "Produto6"
E clico no botão Salvar
Entao é exibido a mensagem "O campo código está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto5"

Cenario: Copiar produto sem sucesso - nome não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto6",  Nome "Produto6" e Descrição "Produto6"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto6"
E clico no botão copiar
Quando preencho o campo Codigo "Produto7",  Nome " " e Descrição "Produto7"
E clico no botão Salvar
Entao é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto6"

Cenario: Copiar produto sem sucesso - descrição não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto7",  Nome "Produto7" e Descrição "Produto7"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto7"
E clico no botão copiar
Quando preencho o campo Codigo "Produto8",  Nome "Produto8" e Descrição " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto7"

Cenario: Copiar produto sem sucesso - categoria não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto8",  Nome "Produto8" e Descrição "Produto8"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto8"
E clico no botão copiar
Quando preencho o campo Codigo "Produto9",  Nome "Produto9" e Descrição "Produto9"
Quando Preencho o campo Categioria com a categoria " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo categoria está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto8"

Cenario: Copiar produto sem sucesso - embarcador não preenchido
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto9",  Nome "Produto9" e Descrição "Produto9"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto9"
E clico no botão copiar
Quando preencho o campo Codigo "Produto10",  Nome "Produto10" e Descrição "Produto10"
Quando Preencho o campo Embarcador com o embarcador " "
E clico no botão Salvar
Entao é exibido a mensagem "O campo embarcador está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto9"

Cenario: Editar produto com sucesso
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto10",  Nome "Produto10" e Descrição "Produto10"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,00"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto10"
E clico no botão editar
Quando Preencho as dimensões Comprimento "100,00", Largura "100,00", Altura "100,00", Peso "50,00"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto10"

Cenario:Editar produto sem sucesso - apagar o nome
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto11",  Nome "Produto11" e Descrição "Produto11"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,00"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto11"
E clico no botão editar
Quando altero o campo  Nome " " e Descrição "Produto12"
E clico no botão Salvar
Então é exibido a mensagem "O campo nome está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto11"

Cenario:Editar produto sem sucesso - apagar a descrição
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto12",  Nome "Produto12" e Descrição "Produto12"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,00"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto12"
E clico no botão editar
Quando altero o campo  Nome "Produto13" e Descrição " "
E clico no botão Salvar
Então é exibido a mensagem "O campo descrição está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto12"

Cenario:Editar produto sem sucesso - apagar categoria
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto13",  Nome "Produto13" e Descrição "Produto13"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,00"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto13"
E clico no botão editar
Quando Preencho o campo Categioria com a categoria " "
E clico no botão Salvar
Então é exibido a mensagem "O campo categoria está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto13"

Cenario:Editar produto sem sucesso - apagar embarcador
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto14",  Nome "Produto14" e Descrição "Produto14"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,00"
# Quando Preencho os campos de embutimento Orientação "Comprimento" e folga "0,005"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto14"
E clico no botão editar
Quando Preencho o campo Embarcador com o embarcador " "
E clico no botão Salvar
Então é exibido a mensagem "O campo embarcador está vazio."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto14"

Cenario: Copiar produto sem sucesso - Cilindro (Altura diferente de zero)
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto2"
E clico no botão copiar
Quando preencho o campo Codigo "Produto15",  Nome "Produto15" e Descrição "Produto15"
Quando Preencho o campo forma como "Cilindro"
E clico no botão Salvar
Entao é exibido a mensagem "A altura do cilindro deve ser zero."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto2"

Cenario: Copiar produto com sucesso - Cilindro
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto2"
E clico no botão copiar
Quando preencho o campo Codigo "Produto16",  Nome "Produto16" e Descrição "Produto16"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,000", Peso "10,000"
Quando Preencho o campo forma como "Cilindro"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto2"
E excluo o cadastro gerado no teste com o codigo "Produto16"

Cenario: Copiar produto sem sucesso - Tubo
Dado que acesso a tela "Cadastro", "Produtos"
E clico no botão Cadastro
Quando preencho o campo Codigo "Produto2",  Nome "Produto2" e Descrição "Produto2"
Quando Preencho o campo Categioria com a categoria "CATPRODDEPPROD"
Quando Preencho o campo Embarcador com o embarcador "EMBDEPPROD"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,370", Peso "10,000"
Quando Preencho a opção de carregamento / descarregamento "Chão para cima"
E clico no botão Salvar
Entao é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E Clico no botão voltar
Quando realizo o filtro com o codigo "Produto2"
E clico no botão copiar
Quando preencho o campo Codigo "Produto16",  Nome "Produto16" e Descrição "Produto16"
Quando Preencho as dimensões Comprimento "0,050", Largura "0,150", Altura "0,150", Peso "10,000"
Quando Preencho o campo forma como "Tubo"
E clico no botão Salvar
Entao é exibido a mensagem "Largura deve ser maior que a altura para tubos."
E clico no botão OK
E Clico no botão voltar
E excluo o cadastro gerado no teste com o codigo "Produto2"

Cenario: Excluir Dependências
Dado que excluo a categoria de produto "CATPRODDEPPROD"
Dado que excluo o embarcador "EMBDEPPROD"