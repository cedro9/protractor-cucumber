#language:pt

@Monitoramento
@Monitoráveis

Funcionalidade: Monitoramento - Monitoráveis

Cenário: Cadastro de dependências
Dado que libero todas as tarefas de geolocalização
Dado que cadastro o tipo de pedido "TIPOPEDDEPMON"
Dado que cadastro o tipo de item de pedido "TIPITEDEPMON"
Dado que cadastro a restrição de localidade "RESLOCDEPMON"
Dado que cadastro o calculador de frete viagem "CALCFRETEVIAGEMDEPMON"
Dado que cadastro a origem "ORIDEPMON" com a restrição de localidade "RESLOCDEPMON" e Cep "76820-408"
Dado que cadastro o destino "DESTDEPMON" com a restrição de localidade "RESLOCDEPMON" e Cep "76820-408"
Dado que cadastro o hub de destino "HUBDESDEPMON" com a restrição de localidade "RESLOCDEPMON" e Cep "76820-408"
Dado que cadastro a categoria de produto "CATPRODDEPMON"
Dado que cadastro o embarcador "EMBDEPMON"
Dado que cadastro o invólucro "INVDEPMON" com politicas definidas no produto
Dado que cadastro o produto "PRODDEPMON" com a categoria "CATPRODDEPMON" e embarcador "EMBDEPMON"
Dado que cadastro o veículo "VEICDEPMON", com "2,5" de largura, "12" de comprimento e "2,85" de altura
Dado que cadastro o agrupador de zt "AZTDEPMON"
Dado que cadastro a zona de transporte "ZTDEPMON" do tipo região do agrupador do agrupador "AZTDEPMON" com a restrição de localidade "RESLOCDEPMON" e prioridade "15"
Dado que cadastro o calculador de tipo de serviço "CALCTIPOSERDEPMON" com o agrupador de zona de transporte "AZTDEPMON"
Dado que cadastro a transportadora "TRANSDEPMON" para o calculador de tipo de serviço "CALCTIPOSERDEPMON", agrupador zona de transporte "AZTDEPMON", grupo logístico "AZTDEPMON" e calculador de frete viagem "CALCFRETEVIAGEMDEPMON"
Dado que cadastro a justificativa de reprogramação "JUSREPDEPMON"
Dado que cadastro a justificativa de cancelamento "JUSCANDEPMON"
Dado que cadastro o pedido "PEDIDOMON01" do embarcador "EMBDEPMON" tipo de pedido "TIPOPEDDEPMON" destino "DESTDEPMON" origem "ORIDEPMON" produto "PRODDEPMON" item de pedido "TIPITEDEPMON" e invólucro "INVDEPMON" e Hub de destino "HUBDESDEPMON"
Dado que cadastro a nota fiscal "NOTADEPMON", com o pedido "PEDIDOMON01"
Dado que cadastro o usuário do monitoramento "USUDEPMON"
Dado que cadastro o motorista "MOTDEPMON", com o usuário "USUDEPMON"
Dado que cadastro o dispositivo "5511987654321"
Dado que cadastro o status de ocorrência inicial "STAOCODEPMON"
Dado que cadastro a categoria de ocorrência "CATOCODEPMON"
Dado que cadastro a causa de ocorrência "CAUOCODEPMON", com o status "STAOCODEPMON" e a categoria de ocorrência "CATOCODEPMON"
Dado que cadastro a viagem com o pedido "PEDIDOMON01"
Dado que a viagem com o pedido "PEDIDOMON01" está expedida

Cenário: Validação da tela de Monitoramento Monitoráveis
Dado que inicio o monitorável com o pedido "PEDIDOMON01"
E cancelo o monitorável com o pedido "PEDIDOMON01"

Cenário: Exclusão de dependências - NLGPRODUTO-1037
Dado que a viagem com o pedido "PEDIDOMON01" tenha a sua expedição cancelada
Dado que seja cancelada a viagem com o pedido "PEDIDOMON01"
Dado que excluo a causa de ocorrência "CAUOCODEPMON"
Dado que excluo a categoria de ocorrência "CATOCODEPMON"
Dado que excluo o status de ocorrência "STAOCODEPMON"
Dado que excluo o dispositivo "5511987654321"
Dado que excluo o motorista "MOTDEPMON"
Dado que excluo o usuário do monitoramento "USUDEPMON"
Dado que excluo a nota fiscal "NOTADEPMON"
Dado que excluo o pedido "PEDIDOMON01"
Dado que excluo a justificativa "JUSREPDEPMON"
Dado que excluo a justificativa "JUSCANDEPMON"
Dado que excluo o produto "PRODDEPMON"
Dado que excluo o invólucro "INVDEPMON"
Dado que excluo o tipo de pedido "TIPOPEDDEPMON"
Dado que excluo o tipo de item de pedido "TIPITEDEPMON"
Dado que excluo a categoria de produto "CATPRODDEPMON"
Dado que excluo o embarcador "EMBDEPMON"
Dado que excluo o veículo "VEICDEPMON"
Dado que excluo a zona de transporte "ZTDEPMON"
Dado que excluo a transportadora "TRANSDEPMON"
Dado que excluo o calculador de frete viagem "CALCFRETEVIAGEMDEPMON"
Dado que excluo o calculador de tipo de serviço "CALCTIPOSERDEPMON"
Dado que excluo o agrupador de zt "AZTDEPMON"
Dado que excluo a localidade "ORIDEPMON"
Dado que excluo a localidade "DESTDEPMON"
Dado que excluo a localidade "HUBDESDEPMON"
Dado que excluo a restrição de localidade "RESLOCDEPMON"