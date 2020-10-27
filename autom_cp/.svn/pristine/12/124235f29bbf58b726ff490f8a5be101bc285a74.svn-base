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
    fillDuration = utils.fillDuration,
    assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo,
    assertDurationContent = utils.assertDurationContent,
    elementClick = utils.elementClick,
    elementClickXpath = utils.elementClickXpath,
    fillText = utils.fillText,
    fillTextxpath = utils.fillTextxpath,
    fillNumber = utils.fillNumber,
    fillNumberXpath = utils.fillNumberXpath,
    fillCombo = utils.fillCombo,
    fillTimePicker = utils.fillTimePicker,
    fillTimePickerXpath = utils.fillTimePickerXpath,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    clearCombo = utils.clearCombo,
    clearTextFieldXpath = utils.clearTextFieldXpath,
    assertTextFieldContent = utils.assertTextFieldContent,
    addTextTags = utils.addTextTags;

const { cadastre,
    setOrderAtributeLoteDeProdução,
    updateScheduledClassification,
    updateDenominationClassification,
    updateReleasedImmediateClassification,
    getOrderTypeClassification,
    setOrderTypeClassification,
    assertOrderNotExists,
    cadastreWhithAtribute,
    updateSAPPercentageAttribute,
    updateDestinationHubUsageTypeToMandatory } = require('../pages/programming/orderPage');

const importSpreadsheets = require('../scripts/utils').importSpreadsheets;
const { validaMensagem } = require('../scripts/messages');

When('preencho o Tipo de pedido {string}', function (string) {
    return comboSearchAndSelect("[name='entity.orderType']", string, string);
});

When('preencho a Referência {string}', function (string) {
    return fillText("[name='entity.reference']", string);
});

When('preencho a Observação {string}', function (string) {

    return fillText("[name='entity.observations']", string);
});

When('na edição de Viagens preencho a Observação {string}', function (string) {
    utils.clearTextXpath("//*[@name='observation']");
    return fillTextxpath("//*[@name='observation']", string);
});

When('seleciono a localidade de Destino do pedido {string}', function (destino) {
    return fillTextxpath("//*[@name='entity.destination']/*[@name='tagInputTextField']", destino);

});

When('seleciono a localidade de Destino do item {string}', function (destino) {
    return addTextTags("[name='orderItem.destination']", destino);
});

When('removo a localidade de Destino do pedido {string}', function (string) {
    return utils.clearTextFieldXpath("//*[@name='entity.destination']//*[@name='tagInputTextField']");
});

When('removo a localidade de Origem do item de pedido {string}', function (string) {
    return utils.clearTextFieldXpath("//*[@name='orderItem.origin']/*[@name='tagInputTextField']");
});

When('clico no checkbox Entrega exclusiva', function () {
    return elementClick("[name='entity.deliveryExclusivity']");
});

When('clico no botão Tipo de logística direta', function () {
    return elementClick("[name='normalLogistic']");
});

When('clico no botão Tipo de logística reversa', function () {
    return elementClick("[name='reverseLogistic']");
});

When('clico no botão Tipo de logística {string}', function (string) {
    var el = "//*[text()='" + string + "']";
    return elementClickXpath(el);
});

When('preencho o Tipo de utilização do hub de passagem {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']", string);

});

When('preencho o Tipo de utilização do hub de destino {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']", string);
});

When('preencho o Hub de passagem {string}', function (hub) {
    var passingHub = process.env.HUBPASSAGEM || hub;
    if (process.env.CLIENT_NAME !== 'whp-mex') {
        return comboSearchAndSelect("[name='entity.possiblePassingHubs']", passingHub, passingHub);
    }
});

When('preencho o Hub de destino {string}', function (hub) {
    var destinationHub = process.env.HUBDESTINO || hub;
    return comboSearchAndSelect("[name='entity.possibleDestinationHubs']", destinationHub, destinationHub);
});

When('removo o Hub de passagem', function () {
    return utils.clearTextFieldXpath("//*[@name='entity.possiblePassingHubs']/*[@name='tagInputTextField']");
});

When('removo o Hub de destino', function () {
    return utils.clearTextFieldXpath("//*[@name='entity.possibleDestinationHubs']/*[@name='tagInputTextField']");
});

When('preencho o início da janela de embarque {string}', function (dateStart) {
    utils.fillNumberXpath("//*[@name='entity.pickupStart']//*[@name='dateInput']//*[@name='dateInput']", dateStart);
    return fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
});

When('preencho a janela de embarque entre {string} e {string}', function (dateStart, dateEnd) {
    utils.fillNumberXpath("//*[@name='entity.pickupStart']//*[@name='dateInput']//*[@name='dateInput']", dateStart);
    fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
    utils.fillNumberXpath("//*[@name='entity.pickupEnd']//*[@name='dateInput']//*[@name='dateInput']", dateEnd);
    return fillTimePickerXpath("//*[@name='entity.pickupEnd']//*[@name='timeInput'] ", "23", "59");
});

When('preencho a janela de entrega entre {string} e {string}', function (dateStart, dateEnd) {
    utils.fillNumberXpath("//*[@name='entity.deliveryStart']//*[@name='dateInput']//*[@name='dateInput']", dateStart);
    fillTimePickerXpath("//*[@name='entity.deliveryStart']//*[@name='timeInput']", "00", "00");
    utils.fillNumberXpath("//*[@name='entity.deliveryEnd']//*[@name='dateInput']//*[@name='dateInput']", dateEnd);
    return fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
});

When('preencho o fim da janela de entrega {string}', function (dateEnd) {
    utils.fillNumberXpath("//*[@name='entity.deliveryEnd']//*[@name='dateInput']//*[@name='dateInput']", dateEnd);
    return fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
});

When('preencho a data Limite de faturamento {string}', function (dateBillingLimit) {
    utils.fillNumberXpath("//*[@name='entity.billingLimit']//*[@name='dateInput']//*[@name='dateInput']", dateBillingLimit);
    return fillTimePickerXpath("//*[@name='entity.billingLimit']//*[@name='timeInput']", "23", "59");
});

When('adiciono item de pedido', function () {
    elementClick("[name='addOrderItemButton']");
    return elementClick("[name='editOrderItem']");
});

When('adiciono segundo item de pedido', function () {
    elementClick("[name='addOrderItemButton']");
    return elementClick("[name='1'] [name='editOrderItem']");
});

When('removo item de pedido', function () {
    return elementClick("[name='nlgTableRemoveButton']");
});

When('removo o produto do item de pedido', function () {
    return utils.clearTextFieldXpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']");
});

When('removo o invólucro do item de pedido', function () {
    return utils.clearTextFieldXpath("//*[@name='orderItem.shipmentUnitWrapper']/*[@name='tagInputTextField']");
});

When('removo segundo item de pedido', function () {
    return elementClick("[name='1'] [name='nlgTableRemoveButton']");
});


When('seleciono a localidade de Origem do item {string}', function (origem) {
    return addTextTags("[name='orderItem.origin']", origem);
});

When('seleciono a localidade de Origem do pedido {string}', function (origem) {
    return addTextTags("[name='entity.origins']", origem);
});

When('preencho o Tipo de item de pedido {string}', function (string) {
    return addTextTags("[name='orderItem.orderItemType']", string);
});

When('preencho a Referência de item de pedido {string}', function (string) {
    return fillText("[name='orderItem.reference']", string);
});

When('preencho o DSM, MIT e Chave de Proporcionalidade', function () {
    fillText("[name='orderItem.dsk']", "DSK");
    fillText("[name='orderItem.mit']", "MIT");
    return fillText("[name='orderItem.proportionalityId']", "3");
});

When('seleciono o Invólucro {string}', function (string) {
    return addTextTags("[name='orderItem.shipmentUnitWrapper']", string);
});

When('preencho o valor {string}', function (value) {
    return fillNumber("[name='orderItem.value']", value);
});

function selectAllowedOrientationOrderItem() {
    elementClick("[name='orderItem.lwhAllow']");
    elementClick("[name='orderItem.lhwAllow']");
    elementClick("[name='orderItem.hlwAllow']");
    elementClick("[name='orderItem.hwlAllow']");
    elementClick("[name='orderItem.wlhAllow']");
    return elementClick("[name='orderItem.whlAllow']");
}

When('seleciono todas Orientações Permitidas', function () {
    return selectAllowedOrientationOrderItem();
});

When('desseleciono todas Orientações Permitidas', function () {
    return selectAllowedOrientationOrderItem();
});

When('preencho a Quantidade total de produtos {string}', function (quantity) {
    return fillNumberXpath("//*[@name='orderItem.quantity']/*[@name='nlgNumberInput'] ", quantity);
});

When('preencho a Quantidade de UEs {string}', function (quantity) {
    return fillNumberXpath("//*[@name='orderItem.quantityInShipmentUnits']/*[@name='nlgNumberInput']", quantity);
});

When('preencho a Quantidade de produtos por UE completa {string}', function (quantity) {
    return fillNumberXpath("//*[@name='orderItem.quantityOfProductsInShipmentUnits']/*[@name='nlgNumberInput']", quantity);
});

When('seleciono o Produto {string} para o item de pedido', function (string) {
    return addTextTags("[name='orderItem.product']", string, string);
});

When('Preencho as dimensões do item de pedido Comprimento {string}, Largura {string}, Altura {string}, Peso {string}', function (string, string2, string3, string4) {
    fillNumber("[name='orderItem.length']", string);
    fillNumber("[name='orderItem.width']", string2);
    fillNumber("[name='orderItem.height']", string3);
    return fillNumber("[name='orderItem.weight']", string4);
});

When('verifico se o campo Embarcador é editável', function () {
    return element(by.css("[name='shipper']")).getAttribute("disabled").then(function (shipper) {
        if (shipper !== "true") {
            throw new Error("Erro! O campo embarcador deveria estar desabilitado para edição");
        }
    });
});

When('verifico se o campo Produto é editável', function () {
    return element(by.css("[name='orderItem.product']")).getAttribute("disabled").then(function (shipper) {
        if (shipper !== "true") {
            throw new Error("Erro! O campo produto deveria estar desabilitado para edição");
        }
        elementClick("[name='buttonClose']");
    });
});

When('verifico se o campo Origem é editável', function () {
    return element(by.css("[name='orderItem.origin']")).getAttribute("disabled").then(function (shipper) {
        if (shipper !== "true") {
            throw new Error("Erro! O campo origem deveria estar desabilitado para edição");
        }
        elementClick("[name='buttonClose']");
    });
});

/********* EXCLUSÃO DE REGISTRO ************/
When('filtro pedido com o codigo {string}', function (string) {
    filter.configuraFiltro("", "Código");
    fillText("[name='tagInputTextField']", string);
    return elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro do Pedido gerado no teste com o codigo {string}', function (string) {
    navigate.acessoTela("[name='menu-userMenu.programming']", "[name='subMenu-userMenu.order']");
    filter.configuraFiltro("", "Código");
    fillText("[name='tagInputTextField']", string);
    elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});

/********* CADASTRO DE REGISTRO ************/
Given('que cadastro o pedido {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e classificação {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, classificacao) {
    let destinoPedido;
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
        classificacao = process.env.CLASSIFICACAO || classificacao,
        incoterm = "CIF";

    return cadastre(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, classificacao, incoterm);
});

Given('que cadastro o pedido {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e atributo {string} com valor {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, attribute, valueAttribute) {
    let destinoPedido;
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
        attribute = process.env.ATTRIBUTE || attribute,
        valueAttribute = process.env.VALUEATTRIBUTE || valueAttribute,
        incoterm = "CIF";

    return cadastreWhithAtribute(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, attribute, valueAttribute, incoterm);
});

Given('que cadastro o pedido FOB {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e classificação {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, classificacao) {
    let destinoPedido;
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
        classificacao = process.env.CLASSIFICACAO || classificacao,
        incoterm = "FOB";

    return cadastre(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, classificacao, incoterm);
});

Given('que cadastro o pedido FOBT {string} do embarcador {string} tipo de pedido {string} destino {string} origem {string} produto {string} item de pedido {string} e invólucro {string} e classificação {string}', { timeout: 600 * 1000 }, function (pedido, embarcador, tipoDePedido, destino, origem, produto, tipoItemDePedido, involucro, classificacao) {
    let destinoPedido;
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
        classificacao = process.env.CLASSIFICACAO || classificacao,
        incoterm = "FOBT";

    return cadastre(pedido, embarcadorPedido, tipoPedido, destinoPedido, origemPedido, produtoPedido, tipoItemPedido, involucroPedido, classificacao, incoterm);
});

Given('que altero o atributo de item de pedido do pedido {string}, lote de produção, com o valor {string}', function (order, atribute) {
    return setOrderAtributeLoteDeProdução(order, atribute);
});

When('altero a classificação calendarizado do pedido {string} para {string}', function (order, classification) {
    return updateScheduledClassification(order, classification);
});

Given('que altero a classificação denominação do pedido {string} para {string}', function (order, classification) {
    return updateDenominationClassification(order, classification);
});

Given('que altero a classificação liberado para imediato do pedido {string} para {string}', function (order, classification) {
    return updateReleasedImmediateClassification(order, classification);
});

Then('verifico se o campo de classificação de tipo de pedido está preenchido com {string}', function (string) {
    return getOrderTypeClassification(string);
});

When('altero o campo de classificação de tipo de pedido para {string}', function (string) {
    return setOrderTypeClassification(string);
});

Then('verifico que não é possível editar a classificação de tipo de pedido', function () {
    utils.elementClick("[name='classifications']");
    return element(by.css("[name='tag-(Tipo de pedido) Principal - Principal'] > span[role='button']")).isDisplayed().then(function (result) {
        return assert.isFalse(result);
    });
});

When('verifico que o pedido {string} não está presente', function (code) {
    return assertOrderNotExists(code);
});

When('importo a planilha {string}', function (spreadSheetName) {
    elementClick("[name='importButton']");
    importSpreadsheets(spreadSheetName);
    validaMensagem("Importação das entidades submetidas para tarefa de background.");
    return elementClick("[name='buttonOk']");
});

Given('que atualizo o atributo percentual sap do pedido {string} para {string}', function (order, value) {
    return updateSAPPercentageAttribute(order, value)
});

Given('altero o tipo de utilização do hub de destino do pedido {string} para obrigatório', function (value) {
    return updateDestinationHubUsageTypeToMandatory(value);
});