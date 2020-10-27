var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var wait = require('../scripts/wait');
var driver = browser.driver;
navigate = require("../scripts/navigate");
var dependencies = require('../scripts/dependencies'),
    cadastroTipoDePedido = dependencies.CadastroTipoDePedido,
    excluirTipoDePedido = dependencies.ExcluirTipoDePedido,
    cadastroTipoDeItemDePedido = dependencies.CadastroTipoDeItemDePedido,
    excluirTipoDeItemDePedido = dependencies.ExcluirTipoDeItemDePedido,
    cadastroLocalidades = dependencies.CadastroLocalidades,
    cadastroLocalidadesDestino = dependencies.CadastroLocalidadesDestino,
    cadastroLocalidadesHubDePassagem = dependencies.CadastroLocalidadesHubDePassagem,
    cadastroLocalidadesHubDeDestino = dependencies.CadastroLocalidadesHubDeDestino,
    excluirLocalidades = dependencies.ExcluirLocalidades,
    cadastroCategoriasDeProduto = dependencies.CadastroCategoriasDeProduto,
    cadastroCategoriasDeProdutoClassificação = dependencies.cadastroCategoriasDeProdutoClassificação,
    excluirCategoriaDeprodutos = dependencies.ExcluirCategoriaDeprodutos,
    cadastroDeEmbarcadores = dependencies.CadastroDeEmbarcadores,
    excluirembarcadores = dependencies.Excluirembarcadores,
    cadastroDeProdutos = dependencies.CadastroDeProdutos,
    cadastroParametroUnitPeso = dependencies.cadastroParametroUnitPeso,
    excluoCadastroParametroUnitPeso = dependencies.excluoCadastroParametroUnitPeso,
    excluirProdutos = dependencies.ExcluirProdutos,
    cadastroDeInvolucros = dependencies.CadastroDeInvolucros,
    cadastroDeInvolucroComposto = dependencies.cadastroDeInvolucroComposto,
    excluirInvolucros = dependencies.ExcluirInvolucros,
    cadastroPedido = dependencies.Cadastro1Pedido,
    cadastroPedidoSemHub = dependencies.Cadastro1PedidoSemHub,
    cadastroPedidoWithClassification = dependencies.Cadastro1PedidoComClassificação,
    cadastroPedidoWithValue = dependencies.Cadastro1PedidoComValor,
    cadastroPedidoQuantidade = dependencies.cadastroPedidoQuantidade,
    cadastroPedidoDoisItens = dependencies.cadastroPedidoDoisItens,
    excluirPedido = dependencies.ExcluirPedido,
    cadastroDeVeiculo = dependencies.cadastroDeVeiculo,
    cadastroDeVeiculoComPeso = dependencies.cadastroDeVeiculoComPeso,
    excluirVeiculo = dependencies.excluirVeiculo,
    cadastroDeTransportadora = dependencies.cadastroDeTransportadora,
    cadastroDeTransportadoraValorMáximoViagem = dependencies.cadastroDeTransportadoraValorMáximoViagem,
    cadastroNotaFiscal = dependencies.cadastroNotaFiscal,
    cadastroUsuário = dependencies.cadastroUsuário,
    cadastroMotorista = dependencies.cadastroMotorista,
    cadastroDispositivo = dependencies.cadastroDispositivo,
    cadastroStatusDeOcorrência = dependencies.cadastroStatusDeOcorrência,
    cadastroCategoriaDeOcorrência = dependencies.cadastroCategoriaDeOcorrência,
    cadastroCausaDeOcorrência = dependencies.cadastroCausaDeOcorrência,
    excluirTransportadora = dependencies.excluirTransportadora,
    cadastroTipoDeServico = dependencies.cadastroTipoDeServico,
    excluirTipoDeServico = dependencies.excluirTipoDeServico,
    cadastroCalculadorTipoDeServico = dependencies.cadastroCalculadorTipoDeServico,
    excluirCalculadorTipoDeServico = dependencies.excluirCalculadorTipoDeServico,
    cadastroAgrupadorDeZonaTransporte = dependencies.cadastroAgrupadorDeZonaTransporte,
    excluirAgrupadorDeZonaTransporte = dependencies.excluirAgrupadorDeZonaTransporte,
    cadastroZonaDeTransporte = dependencies.cadastroZonaDeTransporte,
    cadastroZonaDeTransporteRegioes = dependencies.cadastroZonaDeTransporteRegioes,
    cadastroZonaDeTransporteAll = dependencies.cadastroZonaDeTransporteAll,
    carimbaZonaDeTransporte = dependencies.carimbaZonaDeTransporte,
    excluirZonaDeTransporte = dependencies.excluirZonaDeTransporte,
    cadastroRestricaoLocalidade = dependencies.cadastroRestricaoLocalidade,
    excluirRestricaoLocalidade = dependencies.excluirRestricaoLocalidade,
    cadastroTempoDeEspera = dependencies.cadastroTempoDeEspera,
    excluirTempoDeEspera = dependencies.excluirTempoDeEspera,
    cadastroFreteCarga = dependencies.cadastroFreteCarga,
    excluirFreteCarga = dependencies.excluirFreteCarga,
    cadastroFreteViagem = dependencies.cadastroFreteViagem,
    excluirFreteViagem = dependencies.excluirFreteViagem,
    criarViagemComRestrição = dependencies.criarViagemComRestrição,
    criarViagemComRestriçãoEUnitização = dependencies.criarViagemComRestriçãoEUnitização,
    criarViagemComRestriçãoSEB = dependencies.criarViagemComRestriçãoSEB,
    cadastroCaminhao = dependencies.cadastroCaminhao,
    cadastroClassificacoesEntidade = dependencies.cadastroClassificacoesEntidade,
    excluirCaminhao = dependencies.excluirCaminhao,
    gerarAgenda = dependencies.gerarAgenda,
    gerarAgendaDescarregamento = dependencies.gerarAgendaDescarregamento,
    gerarAgendaDescarregamentoComContexto = dependencies.gerarAgendaDescarregamentoComContexto,
    cancelarAgendaDescarregamento = dependencies.cancelarAgendaDescarregamento,
    gerarAgendaCarregamento = dependencies.gerarAgendaCarregamento,
    gerarAgendaOrigem = dependencies.gerarAgendaOrigem,
    adicionaValidador = dependencies.adicionaValidador,
    adicionaPreValidadorOtimizacao = dependencies.adicionaPreValidadorOtimizacao,
    removePreValidadorOtimizacao = dependencies.removePreValidadorOtimizacao,
    adicionaPosValidadorOtimizacao = dependencies.adicionaPosValidadorOtimizacao,
    removeValidador = dependencies.removeValidador,
    alteraSeletor = dependencies.alteraSeletor,
    adicionaRegistroEmParametro = dependencies.adicionaRegistroEmParametro,
    removeRegistroDeParametro = dependencies.removeRegistroDeParametro,
    alteraTipoPedidoPadrao = dependencies.alteraTipoPedidoPadrao,
    duplicaContexto = dependencies.duplicaContexto,
    excluiContexto = dependencies.excluiContexto,
    liberaAcessoATodasAsTelas = dependencies.liberaAcessoATodasAsTelas,
    liberaTodasAsTarefasDeGeolocalizacao = dependencies.liberaTodasAsTarefasDeGeolocalizacao,
    cadastraUsuario = dependencies.cadastraUsuario,
    excluiUsuario = dependencies.excluiUsuario,
    cadastraJustificativa = dependencies.cadastraJustificativa,
    excluiJustificativa = dependencies.excluiJustificativa,
    removeConfiguracaoDeEntidadePadrao = dependencies.removeConfiguracaoDeEntidadePadrao,
    atualizaScriptDefaultOptimizationScript = dependencies.atualizaScriptDefaultOptimizationScript,
    exclusaoDeDependencia = dependencies.exclusaoDeDependencia,
    exclusaoDeDependenciaCO = dependencies.exclusaoDeDependenciaCO,
    exclusaoDeDependenciaIdentificador = dependencies.exclusaoDeDependenciaIdentificador,
    exclusaoDeDependenciaNúmeroDoDispositivo = dependencies.exclusaoDeDependenciaNúmeroDoDispositivo,
    exclusaoDeDependenciaNome = dependencies.exclusaoDeDependenciaNome,
    atualizaContextoDeOtimizacaoDefault = dependencies.atualizaContextoDeOtimizacaoDefault;

Given('que cadastro a categoria de produto {string} com classificação compatibilidade de produto perigoso com não perigoso {string}', function (categoriaDeProduto, classificação) {
    return cadastroCategoriasDeProdutoClassificação(categoriaDeProduto, categoriaDeProduto, categoriaDeProduto, classificação);
});

Given('que excluo a categoria de produto {string}', function (categoriaDeProduto) {
    return exclusaoDeDependencia("Cadastro", "Categorias de produto", categoriaDeProduto);
});

Given('que excluo o embarcador {string}', function (embarcador) {
    return exclusaoDeDependencia("Cadastro", "Embarcadores", embarcador);
});

Given('que excluo a localidade {string}', function (localidade) {
    return exclusaoDeDependencia("Cadastro", "Localidades", localidade);
});

Given('que excluo o produto {string}', function (produto) {
    return exclusaoDeDependencia("Cadastro", "Produtos", produto);
});

Given('que excluo o invólucro {string}', function (involucro) {
    return exclusaoDeDependencia("Administração", "Invólucros de UE", involucro);
});

Given('que cadastro o veículo com peso {string}, com {string} de largura, {string} de comprimento e {string} de altura e {string} peso maximo', function (veiculo, largura, comprimento, altura, peso) {
    return cadastroDeVeiculoComPeso(veiculo, veiculo, veiculo, largura, comprimento, altura, peso);
});

Given('que excluo o veículo {string}', function (veiculo) {
    return exclusaoDeDependencia("Cadastro", "Veículos", veiculo);
});

Given('que cadastro a transportadora {string} para o calaculador de tipo de serviço {string}, agrupador zona de transporte {string}, grupo logístico {string}, calculador de frete viagem {string} e valor máximo da viagem {string}', function (transportadora, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem, valorMáximoViagem) {
    return cadastroDeTransportadoraValorMáximoViagem(transportadora, transportadora, transportadora, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem, valorMáximoViagem);
});

Given('que cadastro a nota fiscal {string}, com o pedido {string}', function (invoice, order) {
    return cadastroNotaFiscal(invoice, invoice, invoice, order);
});

Given('que excluo a nota fiscal {string}', function (invoice) {
    return exclusaoDeDependencia("Cadastro", "Notas fiscais", invoice);
});

Given('que cadastro o motorista {string}, com o usuário {string}', function (driver, user) {
    return cadastroMotorista(driver, driver, driver, user);
});

Given('que cadastro o dispositivo {string}', function (device) {
    return cadastroDispositivo(device, device, device);
});

Given('que excluo o motorista {string}', function (driver) {
    return exclusaoDeDependenciaIdentificador("Monitoramento", "Motoristas", driver);
});

Given('que excluo o dispositivo {string}', function (truckDevice) {
    return exclusaoDeDependenciaNúmeroDoDispositivo("Monitoramento", "Dispositivos", truckDevice);
});

Given('que excluo o status de ocorrência {string}', function (occurrenceStatus) {
    return exclusaoDeDependenciaNome("Monitoramento", "Status de ocorrência", occurrenceStatus);
});

Given('que cadastro a categoria de ocorrência {string}', function (occurrenceCategory) {
    return cadastroCategoriaDeOcorrência(occurrenceCategory, occurrenceCategory, occurrenceCategory);
});

Given('que excluo a categoria de ocorrência {string}', function (occurrenceCategory) {
    return exclusaoDeDependenciaCO("Monitoramento", "Categorias de ocorrência", occurrenceCategory);
});

Given('que cadastro a causa de ocorrência {string}, com o status {string} e a categoria de ocorrência {string}', function (occurrenceCause, occurrenceStatus, occurrenceCategory) {
    return cadastroCausaDeOcorrência(occurrenceCause, occurrenceCause, occurrenceCause, occurrenceStatus, occurrenceCategory);
});

Given('que excluo a causa de ocorrência {string}', function (occurrenceCause) {
    return exclusaoDeDependenciaCO("Monitoramento", "Causas de ocorrência", occurrenceCause);
});

Given('que excluo a transportadora {string}', function (transportadora) {
    return exclusaoDeDependencia("Cadastro", "Transportadoras", transportadora);
});

Given('que cadastro o tipo de serviço {string}', function (tipoDeServico) {
    return cadastroTipoDeServico(tipoDeServico, tipoDeServico, tipoDeServico);
});

Given('que excluo o tipo de serviço {string}', function (tipoDeServico) {
    return exclusaoDeDependencia("Administração", "Tipos de serviço", tipoDeServico);
});

Given('que cadastro o calculador de tipo de serviço {string} com o agrupador de zona de transporte {string}', function (calculador, agrupador) {
    return cadastroCalculadorTipoDeServico(calculador, calculador, calculador, agrupador);
});

Given('que excluo o calculador de tipo de serviço {string}', function (calculador) {
    return exclusaoDeDependencia("Administração", "Calculadores de tipo de serviço", calculador);
});

Given('que cadastro o agrupador de zt {string}', function (agrupador) {
    return cadastroAgrupadorDeZonaTransporte(agrupador, agrupador, agrupador);
});

Given('que excluo o agrupador de zt {string}', function (agrupador) {
    return exclusaoDeDependencia("Cadastro", "Agrupadores de zona de transporte", agrupador);
});

Given('que cadastro a zona de transporte {string} com a cidade {string} do agrupador {string} com a restrição de localidade {string} e prioridade {string}', function (zonaDeTransporte, cidade, agrupador, restricaoLocalidade, prioridade) {
    return cadastroZonaDeTransporte(zonaDeTransporte, zonaDeTransporte, zonaDeTransporte, agrupador, cidade, restricaoLocalidade, prioridade);
});

Given('que cadastro a zona de transporte {string} do tipo região do agrupador do agrupador {string} com a restrição de localidade {string} e prioridade {string}', function (zonaDeTransporte, agrupador, restricaoLocalidade, prioridade) {
    return cadastroZonaDeTransporteRegioes(zonaDeTransporte, zonaDeTransporte, zonaDeTransporte, agrupador, restricaoLocalidade, prioridade);
});

Given('que cadastro a zona de transporte {string} para o agrupador {string} com a restrição de localidade {string} e prioridade {string}', function (zonaDeTransporte, agrupador, restricaoLocalidade, prioridade) {
    return cadastroZonaDeTransporteAll(zonaDeTransporte, zonaDeTransporte, zonaDeTransporte, agrupador, restricaoLocalidade, prioridade);
});

Given('que excluo a zona de transporte {string}', function (zonaDeTransporte) {
    return exclusaoDeDependencia("Cadastro", "Zonas de transporte", zonaDeTransporte);
});

Given('que carimbo o agrupador {string}', function (agrupador) {
    return carimbaZonaDeTransporte(agrupador);
});

Given('que excluo a restrição de localidade {string}', function (restricaoLocalidade) {
    return exclusaoDeDependencia("Cadastro", "Restrições de localidade", restricaoLocalidade);
});

Given('que cadastro o tempo de espera {string} para o agrupador de zt {string}', function (tempoDeEspera, agrupador) {
    return cadastroTempoDeEspera(tempoDeEspera, tempoDeEspera, tempoDeEspera, agrupador);
});

Given('que excluo o tempo de espera {string}', function (tempoDeEspera) {
    return exclusaoDeDependencia("Cadastro", "Tempo de espera", tempoDeEspera);
});

Given('que cadastro o tipo de pedido {string}', function (tipoDePedido) {
    return cadastroTipoDePedido(tipoDePedido, tipoDePedido, tipoDePedido);
});

Given('que excluo o tipo de pedido {string}', function (tipoDePedido) {
    return exclusaoDeDependencia("Administração", "Tipos de pedido", tipoDePedido);
});

Given('que cadastro o tipo de item de pedido {string}', function (tipoDePedido) {
    return cadastroTipoDeItemDePedido(tipoDePedido, tipoDePedido, tipoDePedido);
});

Given('que excluo o tipo de item de pedido {string}', function (tipoItemDePedido) {
    return exclusaoDeDependencia("Administração", "Tipos de item de pedido", tipoItemDePedido);
});

Given('que cadastro o pedido {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e Hub de destino {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, hubDestino) {
    switch (pedido) {
        case 'PEDIDOOPM15':
            destinoPedido = process.env.DESTINO_OPM2 || destino;
            break;
        default:
            destinoPedido = process.env.DESTINO || destino;
    }
    var embarcadorPedido = process.env.EMBARCADOR || embarcador,
        tipoPedido = process.env.TIPO_PEDIDO || tipoDePedido,
        origemPedido = process.env.ORIGEM || origem,
        produtoPedido = pedido === "PEDIDO01-MDC" ? process.env.PRODUTO || produto : produto,
        tipoItemPedido = process.env.ITEM_PEDIDO || tipoItemDePedido,
        involucroPedido = process.env.INVOLUCRO || involucro,
        hubDestinoPedido = process.env.HUBDESTINO || hubDestino;

    return cadastroPedido(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, hubDestinoPedido);
});

Given('que cadastro o pedido {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} invólucro {string} e valor {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, valor) {
    switch (pedido) {
        case 'PEDIDOOPM15':
            destinoPedido = process.env.DESTINO_OPM2 || destino;
            break;
        default:
            destinoPedido = process.env.DESTINO || destino;
    }
    
    var embarcadorPedido = process.env.EMBARCADOR || embarcador,
        tipoPedido = process.env.TIPO_PEDIDO || tipoDePedido,
        origemPedido = process.env.ORIGEM || origem,
        produtoPedido = pedido === "PEDIDO01-MDC" ? process.env.PRODUTO || produto : produto,
        tipoItemPedido = process.env.ITEM_PEDIDO || tipoItemDePedido,
        involucroPedido = process.env.INVOLUCRO || involucro,
        valor = process.env.VALOR || valor;

    return cadastroPedidoWithValue(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, valor);
});

Given('que cadastro o pedido {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produtos {string} e {string} item de pedido {string} e invólucro {string} e Hub de destino {string}', function (pedido, embarcador, tipoPedido, destino, origem, produto, produto2, tipoItemPedido, involucro, hubDestino) {
    let origemPedido = process.env.ORIGEM || origem,
        destinoPedido = process.env.DESTINO || destino,
        embarcadorPedido = process.env.EMBARCADOR || embarcador,
        produtoPedido = process.env.PRODUTO || produto;
    return cadastroPedidoDoisItens(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, produto2, tipoItemPedido, involucro, hubDestino);
});

Given('que cadastro o pedidoo {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e Hub de destino {string} e quantidade de Produtos {string}', function (pedido, embarcador, tipoPedido, destino, origem, produto, tipoItemPedido, involucro, hubDestino, quantidade) {
    return cadastroPedidoQuantidade(pedido, embarcador, tipoPedido, destino, origem, produto, tipoItemPedido, involucro, hubDestino, quantidade);
});

Given('que excluo o pedido {string}', function (pedido) {
    // return exclusaoDeDependencia("Programação", "Pedido", pedido);
    return excluirPedido(pedido);
});

Given('que excluo o pedido {string} {string} vezes', { timeout: 1000 * 1000 }, function (pedido, vezes) {
    return dependencies.ExcluirPedidos15x(pedido, vezes);
});

Given('que copio o Pedido {string}, localidade {string}, Produtos {string}, tipo de Item de Pedido {string} e Involucros {string} {string} vezes', { timeout: 10000 * 1000 }, function (Pedido, localidades, Produtos, tipoItemPedido, Involucros, int) {
    return dependencies.CopiarPedidos15x(Pedido, int, localidades, Produtos, tipoItemPedido, Involucros);
});

Given('que copio o pedido {string} e defino seu código como {string}', { timeout: 10000 * 1000 }, function (pedido, novoPedido) {
    return dependencies.copiaPedido(pedido, novoPedido);
});

Given('que cadastro o parametro generico Classificação de viagem por Máxima utilização em peso {string} {string}, {string} {string} e {string} {string}', function (string1, string2, string3, string4, string5, string6) {
    return cadastroParametroUnitPeso(string1, string2, string3, string4, string5, string6);
});

Given('que excluo o parametro generico Classificação de viagem por Máxima utilização em peso', function () {
    return excluoCadastroParametroUnitPeso();
});

Given('que Cadastro a viagem SEB {string}', function (string) {
    return dependencies.CadastroViagemSEB(string);
});

Given('que Cadastro a viagem {string}', function (string) {
    return dependencies.CadastroViagem(string);
});

Given('que excluo a viagem SEB {string}', { timeout: 1000 * 1000 }, function (string) {
    return dependencies.ExcluirViagemSEB(string);
});

Given('que cadastro o calculador de frete carga {string} com o agrupador {string}', function (freteCarga, agrupador) {
    return cadastroFreteCarga(freteCarga, freteCarga, freteCarga, agrupador);
});

Given('que excluo o calculador de frete carga {string}', function (freteCarga) {
    return exclusaoDeDependencia("Administração", "Calculadores de frete - Carga", freteCarga);
});

Given('que cadastro o calculador de frete viagem {string}', function (freteViagem) {
    return cadastroFreteViagem(freteViagem, freteViagem, freteViagem);
});

Given('que excluo o calculador de frete viagem {string}', function (freteViagem) {
    return exclusaoDeDependencia("Administração", "Frete-Viagem", freteViagem);
});

Given('que cadastro a entidade {string}', function (entidade) {
    return cadastroClassificacoesEntidade(entidade, entidade, entidade);
});

Given('que cadastro a viagem manual com restrição e unitização para o pedido {string} com a transportadora {string} e veículo {string}', function (pedido, transportadora, veiculo) {
    return criarViagemComRestriçãoEUnitização(pedido, transportadora, veiculo);
});

Given('que cadastro a viagem para SEB o pedido {string} com a transportadora {string} e veículo {string}', function (pedido, transportadora, veiculo) {
    return criarViagemComRestriçãoSEB(pedido, transportadora, veiculo);
});

Given('que cadastro o caminhão {string} do veículo {string} da transportadora {string}', function (caminhao, veiculo, transportadora) {
    return cadastroCaminhao(caminhao, caminhao, caminhao, veiculo, transportadora);
});

Given('que excluo o caminhão {string}', function (caminhao) {
    return exclusaoDeDependencia("Cadastro", "Caminhões", caminhao);
});

Given('que adiciono ao contexto de otimização o validador de seleção de operação manual {string}', function (validador) {
    return adicionaValidador(validador);
});

Given('que adiciono ao contexto de otimização o pré-validador de otimização {string}', function (validador) {
    return adicionaPreValidadorOtimizacao(validador);
});

Given('que removo do contexto de otimização o pré-validador de otimização {string}', function (validador) {
    return removePreValidadorOtimizacao(validador);
});

Given('que adiciono ao contexto de otimização o pós-validador de otimização {string}', function (validador) {
    return adicionaPosValidadorOtimizacao(validador);
});

Given('que removo do contexto de otimização o pré-validador de operação manual {string}', function (validador) {
    return removeValidador(validador);
});

Given('que altero o seletor de veículo para {string}', function (seletor) {
    return alteraSeletor(seletor);
});

Given('que adiciono a transportadora {string} e a origem {string} no parâmetro {string}', function (transportadora, origem, parametro) {
    return adicionaRegistroEmParametro(transportadora, origem, parametro);
});

Given('que removo a transportadora {string} e a origem {string} do parâmetro {string}', function (transportadora, origem, parametro) {
    return removeRegistroDeParametro(transportadora, origem, parametro);
});

Given('que altero o tipo de pedido padrão para o primeiro da lista', function () {
    return alteraTipoPedidoPadrao();
});

Given('que gero a agenda para o pedido {string} com destino {string}', { timeout: 1000 * 1000 }, function (pedido, destination) {
    return gerarAgendaDescarregamento(pedido, destination);
});

Given('cancelo a agenda para o pedido {string}', { timeout: 1000 * 1000 }, function (pedido) {
    return cancelarAgendaDescarregamento(pedido);
});

Given('que gero a agenda para o pedido {string} com origem {string}', function (pedido, origin) {
    return gerarAgendaCarregamento(pedido, origin);
});

Given('que duplico o contexto de otimização', function () {
    return duplicaContexto();
});

Given('que excluo o contexto de otimização', function () {
    return excluiContexto();
});

Given('que libero acesso full as telas do sistema', function () {
    return liberaAcessoATodasAsTelas();
});

Given('que libero todas as tarefas de geolocalização', function () {
    return liberaTodasAsTarefasDeGeolocalizacao();
});

Given('que cadastro o usuário {string}', function (user) {
    return cadastraUsuario(user);
});

Given('que excluo o usuário {string}', function (user) {
    return excluiUsuario(user);
});

Given('que cadastro a justificativa de negociação {string}', function (justificativa) {
    var categoria = "Negociação de frete";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que cadastro a justificativa de revisão {string}', function (justificativa) {
    var categoria = "Revisar tabela de frete";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que cadastro a justificativa de rejeite {string}', function (justificativa) {
    var categoria = "Rejeitar oferta";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que cadastro a justificativa de atribuição {string}', function (justificativa) {
    var categoria = "Atribuir oferta";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que cadastro a justificativa de reprogramação {string}', function (justificativa) {
    var categoria = "Reprogramar viagem";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que cadastro a justificativa de cancelamento {string}', function (justificativa) {
    var categoria = "Cancelada na Programação";
    return cadastraJustificativa(justificativa, categoria);
});

Given('que excluo a justificativa {string}', function (justificativa) {
    return excluiJustificativa(justificativa);
});

When('que removo as configurações de entidade padrão {string}', function (entidade) {
    return removeConfiguracaoDeEntidadePadrao(entidade);
});

Given('que atualizo o script de otimização', function () {
    return atualizaScriptDefaultOptimizationScript();
});

Given('que atualizo o contexto de otimização', function () {
    return atualizaContextoDeOtimizacaoDefault();
});