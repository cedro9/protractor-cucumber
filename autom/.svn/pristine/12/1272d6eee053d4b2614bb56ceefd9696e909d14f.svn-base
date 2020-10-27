"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var assert = chai.assert;
var navigate = require("../scripts/navigate"),
    filter = require("../scripts/filter"),
    clearFilter = filter.clearFilter;

var functioningDataHolder = require("../scripts/functioningDataHolder"),
    expect = chai.expect,
    scroll = require('../scripts/scroll'),
    utils = require('../scripts/utils'),
    filter = require("../scripts/filter"),
    messages = require("../scripts/messages"),
    printscreen = require("../scripts/printScreen"),
    present = require("../scripts/wait").present,
    isEnable = require("../scripts/wait").isEnabled,
    fillDuration = utils.fillDuration,
    assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo,
    assertDurationContent = utils.assertDurationContent,
    elementClick = utils.elementClick,
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    fillText = utils.fillText,
    fillNumber = utils.fillNumber,
    fillNumberXpath = utils.fillNumberXpath,
    fillCombo = utils.fillCombo,
    fillTimePicker = utils.fillTimePicker,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    clearCombo = utils.clearCombo,
    tripBasket = "[selection='selection.tripBasket']",
    tripBasket = " [selection='selection.tripBasket']",
    userBasket = "[selection='selection.deliveryUnits']",
    userBasket = " [selection='selection.deliveryUnits']",
    generalBasket = "[selection='selection.availableDeliveryUnits']",
    generalBasket = " [selection='selection.availableDeliveryUnits']",
    tripHeader = " [data-node-type='Trip']",
    tripHeaderXpath = " [data-node-type='Trip']",
    loadHeader = " [data-node-type='Load']",
    stopHeader = " [data-node-type='Stop']",
    orderHeader = "[data-node-type='Order']",
    orderHeaderXpath = " [data-node-type='Order']",
    orderItemHeader = "[data-node-type='DeliveryUnit']",
    assertTextFieldContent = utils.assertTextFieldContent;
var printscreen = require("../scripts/printScreen");

var Cestapedidos = "[selection='selection.deliveryUnitBasketSelection']";
var Cestausuario = " [selection='selection.deliveryUnits']";
var CestaViagens = " [selection='selection.tripBasketSelection']";
var CestaGeral = " [selection='selection.availableDeliveryUnits']"
require('dotenv').config();

When('realizo o filtro da Cesta de Pedido com o codigo {string}', { timeout: 300 * 1000 }, function (string) {
    filter.configuraFiltroTelaSeleçãoPedidos(Cestapedidos, "Pedido / Código");
    // filter.configuraFiltro("Pedido / Código")
    utils.fillText(Cestapedidos + " [name='tagInputTextField']", string);
    return utils.elementClick(Cestapedidos + " [name='submitButton']");
});

When('Seleciono o pedido {string} da Cesta de Pedidos', function (string) {
    return utils.elementClick(Cestapedidos + " [data-presentation-id='" + string + "']" + " [name='nlgAnalysisTreeCheckBox']");
});

When('Seleciono o pedido {string} da Cesta Geral', function (string) {
    return utils.elementClick(CestaGeral + " [data-presentation-id='" + string + "']" + " [name='nlgAnalysisTreeCheckBox']");
});

When('oculto a cesta de viagens', function () {
    return utils.elementClick(" [name='layoutControl.toggleBasket.tripBasket']");
});

When('oculto minha cesta', function () {
    return utils.elementClick(" [name='layoutControl.toggleBasket.userBasket']");
});

When('clico no botão Mover Pedidos', function () {
    return utils.elementClick(" [name='moveDeliveryUnitToUserButton']");
});

When('seleciono o usuario {string}', function (string) {
    var user = process.env.USER_MDC || string
    utils.addTextTags("[name='model.user']", user);
    return elementClick("[name='buttonOk']");
});

When('movo para o usuario {string}', function (string) {
    var user = process.env.USER_SELECAO || string
    utils.addTextTags("[name='model.user']", user);
    return elementClick("[name='buttonOk']");
});

When('seleciono o usuario Logado', function () {
    utils.fillText(" [name='model.user'] [name='tagInputTextField']", process.env.USER_NEOLOG);
    return elementClick("[name='buttonOk']");
});

When('clico no pedido {string} para visualizar a UT', function (string) {
    return utils.elementClick(Cestapedidos + " [data-presentation-id='" + string + "']" + " [name='nlgAnalysisTreeExpand']");

});

Given('que desabilito a exibiçao da Cesta Geral e Viagens', function () {
    utils.elementClick(" [name='layoutControl.toggleBasket.generalBasket']");
    return utils.elementClick(" [name='layoutControl.toggleBasket.tripBasket']");
});

Given('que desabilito a exibiçao da Cesta do usuario e Viagens', function () {
    utils.elementClick(" [name='layoutControl.toggleBasket.userBasket']");
    return utils.elementClick(" [name='layoutControl.toggleBasket.tripBasket']");
});

Given('desabilito a exibiçao da Cesta geral e habilito a Cesta do Usuairo', function () {
    utils.elementClick(" [name='layoutControl.toggleBasket.userBasket']");
    return utils.elementClick(" [name='layoutControl.toggleBasket.generalBasket']");
});

Given('desabilito a exibiçao da Cesta do Usuairo  e habilito Cesta geral', function () {
    utils.elementClick(" [name='layoutControl.toggleBasket.generalBasket']");
    return utils.elementClick(" [name='layoutControl.toggleBasket.userBasket']");
});

When('realizo o filtro da Minha Cesta de Pedido com o codigo {string}', function (string) {
    var basket = " [selection='selection.deliveryUnits']";
    filter.configuraFiltroCestaViagem(basket);
    fillText(basket + "  [name='tagInputTextField']", code);
    return elementClick(basket + "  [name='submitButton']");
});

Then('verifico se na cesta geral o pedido contem {string} itens de pedido', function (string) {
    var el = "[data-node-type='AVAILABLE_BASKET'] [name='presentationnode.nodeproperty.orderItems']";
    return messages.validaAtributo(el, string);
});

Then('verifico se na cesta do usuário o pedido contem {string} item de pedido', function (string) {
    var el = "[data-node-type='ROUTING_BASKET'] [name='presentationnode.nodeproperty.orderItems']";
    return messages.validaAtributo(el, string);
});

Then('o pedido {string} deve ser exibido', function (string) {
    let self = this;
    var basket = "//*[@selection='selection.deliveryUnits']";
    return expect(element(by.xpath(basket + "//*[@name='nlgAnalysisTreePresentationId'][text()='" + string + "']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('o pedido {string} deve ser exibido na cesta Geral', function (string) {
    let self = this;
    var basket = " [selection='selection.availableDeliveryUnits']";
    return element.all(by.css(basket + " [name='nlgAnalysisTreePresentationId']"))
        .each(function (orderCode) {
            if (orderCode === string) {
                return printscreen.stepPrintScreen(self);
            }
        });
    return expect(element(by.css(basket + " [name='nlgAnalysisTreePresentationId']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('realizo o filtro da Cesta de Viagem com o codigo {string}', { timeout: 300 * 1000 }, function (string) {
    utils.elementClick(" [name='layoutControl.toggleBasket.deliveryUnitsBasket']");
    filter.configuraFiltroTelaSeleçãoPedidos(CestaViagens, "Unidade de transporte / Pedido / Código");
    utils.fillText(CestaViagens + " [name='tagInputTextField']", string);
    return utils.elementClick(CestaViagens + " [name='submitButton']");
});

When('Seleciono a viagem {string} da Cesta de viagem', function (string) {
    return utils.elementClick(CestaViagens + " [name='nlgAnalysisTreeCheckBox']");
});

When('clico no botão Mover Viagens', function () {
    return utils.elementClick(" [name='moveTripToUserButton']");
});

Then('valido se o usuário selecionado na viagem é o {string}', function (expectedUser) {
    return messages.validaAtributo("[data-node-type='Trip'] [name='presentationnode.nodeproperty.user']", expectedUser);
});

Then('valido se o usuário selecionado no pedido é o {string}', function (expectedUser) {
    return messages.validaAtributo("[data-node-type='Order'] [name='presentationnode.nodeproperty.user']", expectedUser);
});

Then('retorno a viagem para o usuario {string}', function (string) {
    var user = process.env.USER_SELECAO_RETORNO || string
    utils.elementClick(CestaViagens + " [name='nlgAnalysisTreeCheckBox']");
    utils.elementClick(" [name='moveTripToUserButton']");
    utils.addTextTags("[name='model.user']", user);
    return elementClick("[name='buttonOk']");
});

Then('retorno a viagem para o usuario Logado', function () {
    utils.elementClick(CestaViagens + " [name='nlgAnalysisTreeCheckBox']");
    utils.elementClick(" [name='moveTripToUserButton']");
    utils.fillText(" [name='model.user'] [name='tagInputTextField']", process.env.USER_NEOLOG);
    return elementClick("[name='buttonOk']");
});

When('clico para expandir o pedido e visualizar as Uts', function () {
    return utils.elementClick(CestaGeral + " [name='nlgAnalysisTreeChildren'] [name='nlgAnalysisTreeExpand']");
});

When('clico para expandir o pedido e visualizar as Uts da cesta geral', function () {
    return utils.elementClick(" [name='nlgAnalysisTreeChildren'] [name='nlgAnalysisTreeNode'] [name='nlgAnalysisTreeExpand']");
});

When('seleciono uma UT', function () {
    return utils.elementClickXpath("//li[2]//*[@data-node-type='DeliveryUnit'] //*[@name='nlgAnalysisTreeCheckBox']");
});

When('seleciono uma  UT do pedido {string} na cesta de Pedidos', function (string) {
    return utils.elementClickXpath("//*[@data-presentation-id='" + string + "']//*[@data-presentation-id]//*[@name='nlgAnalysisTreeCheckBox']");
});

When('seleciono duas UTs', function () {
    utils.elementClickXpath("//li[2]//*[@data-node-type='DeliveryUnit'] //*[@name='nlgAnalysisTreeCheckBox']");
    return utils.elementClickXpath("//li[3]//*[@data-node-type='DeliveryUnit'] //*[@name='nlgAnalysisTreeCheckBox']");
});

When('clico no botão Mover Todas as paginas para Cesta', function () {
    return utils.elementClick(" [name='moveAllPagesToUser']");
});

When('clico para exibir 50 registros e os pedidos movidos devem ser exibidos', function () {
    let self = this;
    utils.elementClick(" [name='pageSize-50']");
    utils.elementClick(" [name='programmingAnalysisUseListView']");
    return printscreen.stepPrintScreen(self);
});

When('clico no botão Recriar Uts', function () {
    return utils.elementClick(" [name='recreateDUsAvailableBasket']");
});

When('clico no botão Recriar Uts na cesta do usuario', function () {
    return utils.elementClick(" [name='recreateDUsUserBasket']");
});

When('que altero o peso do produto {string} para {string}', { timeout: 500 * 1000 }, function (string, string2) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    elementClick("[name='editButton']");
    utils.fillNumber("[name='weight']", string2);
    elementClick("[name='buttonSubmit']");
    elementClick("[name='buttonOk']");
    return elementClick("[name='editionViewBack']");
});

Then('o peso do pedido na cesta Geral deve ser {string}', function (string) {
    let self = this;
    return expect(element(by.css(CestaGeral + " [name='presentationnode.nodeproperty.weight']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('o peso do pedido na cesta do Usuario deve ser {string}', function (string) {
    let self = this;
    return expect(element(by.css(Cestausuario + " [name='presentationnode.nodeproperty.weight']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('os pedidos devem ser exibidos', function () {
    let self = this;
    return printscreen.stepPrintScreen(self);
});

Then('clico no botão Mover Para', function () {
    return utils.elementClick(" [name='moveToButton']");
});

When('clico para ser exibido 50 registros', function () {
    return utils.elementClick(" [name='pageSize-50']");
});

Then('clico no botão Mover pedidos para Minha Cesta', function () {
    return utils.elementClick(" [name='moveToUserBasketButton']");
});

Then('seleciono o primeiro item de pedido', function () {
    var el = orderItemHeader;
    return elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
});