#language:pt

@Monitoramento
@CadastroDeUsuarios

Funcionalidade: Monitoramento - Cadastro de Usuários

Cenário: Cadastro de usuário com sucesso
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario@servidor.com"

Cenário: Cadastro de usuários com sucesso - Cadastrar 2 usuários utilizando o botão salvar e continuar
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario2@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar e Continuar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
Quando preencho o campo E-mail "usuario3@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario2@servidor.com"
E que excluo o usuário do monitoramento "usuario3@servidor.com"

Cenário: Cadastro de usuário sem sucesso - E-mail não preenchido
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail " "
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "O e-mail deve ter no mínimo 6 caracteres."

Cenário: Cadastro de usuário sem sucesso - Perfil não preenchido
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario4@servidor.com"
Quando seleciono Perfil " "
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "O campo perfil deve ser preenchido."

Cenário: Cadastro de usuário sem sucesso - Senha nao preenchida
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario5@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha " "
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "Os campos 'Senha' e 'Confirmar senha' devem possuir o mesmo valor."

Cenário: Cadastro de usuário sem sucesso - Confirmar senha não preenchida
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario6@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha " "
E clico no botão "Salvar"
Então é exibido a mensagem "Os campos 'Senha' e 'Confirmar senha' devem possuir o mesmo valor."

Cenário: Editar usuário com sucesso
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario7@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de usuários pelo e-mail "usuario7@servidor.com"
E clico no botão editar
Quando preencho o campo Senha "bbb"
Quando preencho o campo Confirmar senha "bbb"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario7@servidor.com"

Cenário: Copiar usuário com sucesso
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario8@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de usuários pelo e-mail "usuario8@servidor.com"
E clico no botão copiar
Quando preencho o campo E-mail "usuario9@servidor.com"
Quando preencho o campo Senha "bbb"
Quando preencho o campo Confirmar senha "bbb"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario8@servidor.com"
E que excluo o usuário do monitoramento "usuario9@servidor.com"

Cenário: Copiar usuário sem sucesso - E-mail já cadastrado
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario10@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de usuários pelo e-mail "usuario10@servidor.com"
E clico no botão copiar
Quando preencho o campo E-mail "usuario10@servidor.com"
Quando preencho o campo Senha "bbb"
Quando preencho o campo Confirmar senha "bbb"
E clico no botão "Salvar"
Então é exibido a mensagem "E-mail de usuário já cadastrado."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario10@servidor.com"

Cenário: Copiar usuário sem sucesso - Senha não preenchida
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario11@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de usuários pelo e-mail "usuario11@servidor.com"
E clico no botão copiar
Quando preencho o campo E-mail "usuario12@servidor.com"
Quando preencho o campo Confirmar senha "bbb"
E clico no botão "Salvar"
Então é exibido a mensagem "Os campos 'Senha' e 'Confirmar senha' devem possuir o mesmo valor."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario11@servidor.com"

Cenário: Copiar usuário sem sucesso - Confirmar senha não preenchida
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario13@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
E realizo o filtro de usuários pelo e-mail "usuario13@servidor.com"
E clico no botão copiar
Quando preencho o campo E-mail "usuario14@servidor.com"
Quando preencho o campo Senha "bbb"
E clico no botão "Salvar"
Então é exibido a mensagem "Os campos 'Senha' e 'Confirmar senha' devem possuir o mesmo valor."
E clico no botão OK
E clico no botão "Voltar"
E que excluo o usuário do monitoramento "usuario13@servidor.com"

@bug
# Verificar com Julio Santos
Cenário: Excluir usuário sem sucesso - Registro de usuário em uso por Motorista - NLGPRODUTO-951
Dado que acesso a tela "Monitoramento", "Usuários"
E clico no botão Cadastro
Quando preencho o campo E-mail "usuario15@servidor.com"
Quando seleciono Perfil "root"
Quando preencho o campo Senha "aaa"
Quando preencho o campo Confirmar senha "aaa"
E clico no botão "Salvar"
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Monitoramento", "Motoristas"
E clico no botão Cadastro
Quando preencho o nome do motorista "Motorista20"
Quando preencho o Identificador do motorista "Motorista20"
Quando preencho o Codigo do motorista "111"
Quando seleciono o Usuario do motorista "usuario15@servidor.com"
E clico no botão Salvar
Então é exibido a mensagem "A entidade foi salva com sucesso."
E clico no botão OK
E clico no botão "Voltar"
Dado que acesso a tela "Monitoramento", "Usuários"
E que excluo o usuário do monitoramento "usuario15@servidor.com"
Então é exibido a mensagem "Este usuário está em uso por um Motorista."
Dado que acesso a tela "Monitoramento", "Motoristas"
E excluo o cadastro do Motorista com o identificador "Motorista20"
Dado que acesso a tela "Monitoramento", "Usuários"
E que excluo o usuário do monitoramento "usuario15@servidor.com"