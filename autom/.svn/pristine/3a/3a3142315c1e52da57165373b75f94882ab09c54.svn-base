"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var expect = chai.expect;
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

var utils = require('../scripts/utils'),
    elementClick = utils.elementClick,
    fillTextxpath = utils.fillTextxpath;
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var messages = require("../scripts/messages");
var printscreen = require("../scripts/printScreen");
var wait = require("../scripts/wait");

const carrier = require("../pages/cadastre/carrierPage");
/********* ACESSO A TELA ************/

Given('acesso a tela de cadastro de Transportadoras', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrier']");
});

Given('que estou na tela de pesquisa de Transportadoras', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrier']");
});

/********* BOTÕES ************/
When('Clico na aba Restrições Logísticas', function () {
    return carrier.navigateToTabLogisticRestrictions();
});

When('clico na aba Frete', function () {
    return carrier.navigateToTabFreight();
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem O e-mail da transportadora deve ser preenchido.', function () {
    let self = this;
    return messages.validaMensagem("O e-mail da transportadora deve ser preenchido.", self);
});

Then('e exibido a mensagem O campo de calculador de tipo de serviço está vazio.', function () {
    let self = this;
    return messages.validaMensagem("O campo de calculador de tipo de serviço está vazio.", self);
});

Then('e exibido a mensagem O agrupador da transportadora deve ser especificado.', function () {
    let self = this;
    return messages.validaMensagem("O agrupador da transportadora deve ser especificado.", self);
});

Then('e exibido a mensagem O grupo logístico da transportadora deve ser informado.', function () {
    let self = this;
    return messages.validaMensagem("O grupo logístico da transportadora deve ser informado.", self);
});

Then('e exibido a mensagem O campo de calculador de frete para viagem está vazio.', function () {
    let self = this;
    return messages.validaMensagem("O campo de calculador de frete para viagem está vazio.", self);
});

Then('e exibido a mensagem Uma configuração de calculador de frete deve ser especificada.', function () {
    let self = this;
    return messages.validaMensagem("Uma configuração de calculador de frete deve ser especificada.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('preencho as opções de visualização Responsável {string}, E-mail do Responsável {string} e E-mail da Transportadora {string}', function (responsableName, responsableEmail, carrierEmail) {
    carrier.setResponsableName(responsableName);
    carrier.setResponsableEmail(responsableEmail);
    return carrier.setCarrierEmail(carrierEmail);
});

When('preencho o Calculador de Tipo de Serviço {string}', function (serviceTypeCalculator) {
    return carrier.setServiceTypeCalculator(serviceTypeCalculator);
});

When('preencho o SLA com o horario {string}', function (acceptTimeLimit) {
    carrier.setServiceLevelOn();
    return carrier.setAcceptTimeLimit(acceptTimeLimit);
});

When('preencho a justificativa de auto-rejeite', function () {
    utils.clearTextFieldXpath("//*[@name='justification']/*[@name='tagInputTextField']");
    utils.elementClick("[name='justification'] [name='tagInputShowValues']");
    return element(by.xpath("//*[@name='justification']/*[@name='tagInputTextField']")).sendKeys(protractor.Key.ENTER);
});

When('preencho o Horizonte de Abertura {string}', function (horizonOpening) {
    return carrier.setHorizonOpening(horizonOpening)
});

When('na visualização seleciono a Zona de Transporte {string} e Grupo Logístico {string}', function (carrierZone, logisticGroup) {
    carrier.setCarrierZone(carrierZone);
    return carrier.setLogisticGroup(logisticGroup);
});

When('preencho as Restriçoes Maxima Distancia de DeadHead {string}, Maxima Distancia Total de DeadHead {string}, Numero Maximo de Cargas na Viagem {string} e Valor Maximo da Viagem {string}', function (maxDeadHeadDistance, maxDeadHeadTotalDistance, maxLoadsTrip, maxTripValue) {
    carrier.setMaxDeadHeadDistance(maxDeadHeadDistance);
    carrier.setMaxDeadHeadTotalDistance(maxDeadHeadTotalDistance);
    carrier.setMaxLoadsTrip(maxLoadsTrip);
    return carrier.setMaxTripValue(maxTripValue);
});

When('seleciono a Classificações de Carga Bloqueadas {string}', function (blockedLoadTypes) {
    return carrier.setBlockedLoadTypes(blockedLoadTypes);
});

When('seleciono a Categorias de Produtos Bloqueadas {string}', function (blockedProductCategories) {
    return carrier.setBlockedProductCategories(blockedProductCategories);
});

When('seleciono o Calculador de frete para viagem {string}', function (freightTripCalculatorConfig) {
    return carrier.setFreightTripCalculatorConfig(freightTripCalculatorConfig);
});

When('seleciono a Configuração de calculador de frete {string} para o Tipo de serviço {string}', function (calculador, tipoServiço) {
    carrier.navigateToTabFreight();
    return carrier.setServiceTypeFreight(calculador, tipoServiço);
});

When('seleciono o Calculador de frete para viagem {string}, Carga direta {string}, Lotação {string} e Fracionado {string}', function (freightTripCalculatorConfig, fullTruckLoad, lessThanTruckLoad, pointToPointTruckLoad) {
    carrier.setFreightTripCalculatorConfig(freightTripCalculatorConfig);
    carrier.setFullTruckLoad(fullTruckLoad);
    carrier.setLessThanTruckLoad(lessThanTruckLoad);
    return carrier.setPointToPointTruckLoad(pointToPointTruckLoad);
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro da Transportadora com o codigo {string}', { timeout: 90 * 1000 }, function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro de Transportadora gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrier']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});

Given('que cadastro a transportadora {string} para o calculador de tipo de serviço {string}, agrupador zona de transporte {string}, grupo logístico {string} e calculador de frete viagem {string}', function (transportadora, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem) {
    return carrier.cadastre(transportadora, transportadora, transportadora, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem);
});

Given('que altero a classificação autônomo da transportadora {string} para {string}', function (code, classification) {
    return carrier.setFreelancerClassification(code, classification);
});

Given('que altero o valor máximo da viagem da transportadora {string}', function (carrierCode) {
    return carrier.updateMaxTripValue(carrierCode);
});