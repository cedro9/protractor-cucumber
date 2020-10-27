"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

var expect = chai.expect;
var assert = chai.assert;

const moment = require('moment');

moment.locale('pt-BR');

const tabGeneral = "[name='general']",
    shipper = "[name='shipper']",
    priority = "[name='entity.priority']",
    incoterm = "[name='entity.incoterm']",
    ordertype = "[name='entity.orderType']",
    reference = "[name='entity.reference']",
    observations = "[name='entity.observations']",
    destination = "[name='entity.destination']",
    exclusiveDelivery = "[name='entity.deliveryExclusivity']",
    normalLogistic = "[name='normalLogistic']",
    reverseLogistic = "[name='reverseLogistic']",
    passingHubUsageType = "[name='entity.passingHubUsageType']",
    possiblePassingHubs = "[name='entity.possiblePassingHubs']",
    destinationHubUsageType = "[name='entity.destinationHubUsageType']",
    possibleDestinationHubs = "[name='entity.possibleDestinationHubs']",
    tabOrderItems = "[name='orderItems']",
    addOrderItemButton = "[name='addOrderItemButton']",
    editOrderItem = "[name='editOrderItem']",
    orderItemCode = "[name='orderItem.sourceId']",
    originOrderItem = "[name='orderItem.origin']",
    product = "[name='orderItem.product']",
    orderItemType = "[name='orderItem.orderItemType']",
    referenceOrderItem = "[name='orderItem.reference']",
    dsk = "[name='orderItem.dsk']",
    mit = "[name='orderItem.mit']",
    proportionalityId = "[name='orderItem.proportionalityId']",
    shipmentUnitWrapper = "[name='orderItem.shipmentUnitWrapper']",
    length = "[name='orderItem.length']",
    width = "[name='orderItem.width']",
    height = "[name='orderItem.height']",
    value = "[name='orderItem.value']",
    weight = "[name='orderItem.weight']",
    HLW = "[name='orderItem.hlwAllow']",
    HWL = "[name='orderItem.hwlAllow']",
    LHW = "[name='orderItem.lhwAllow']",
    LWH = "[name='orderItem.lwhAllow']",
    WHL = "[name='orderItem.whlAllow']",
    WLH = "[name='orderItem.wlhAllow']",
    quantityOfProducts = "[name='orderItem.quantity']",
    quantityInShipmentUnits = "[name='orderItem.quantityInShipmentUnits']",
    quantityOfProductsInShipmentUnits = "[name='orderItem.quantityOfProductsInShipmentUnits']",
    buttonApply = "[name='buttonApply']",
    tabAttributes = "[name='attributes']",
    tabClassifications = "[name='classifications']",
    classification = "[name='classification']",
    classificationType = "[name='type']";
    
const cadastreButton = "[name='cadastreButton']";

const utils = require('../../scripts/utils'),
    fillCombo = utils.fillCombo,
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    addTextTags = utils.addTextTags,
    present = require("../../scripts/wait").present,
    dblClick = require("../../scripts/events").dblClick,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../../scripts/scroll"),
    taginput = require("../../scripts/taginput"),
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages"),
    transfer = require('../../scripts/transferPanel'),
    moveLeftToRigth = transfer.moveLeftToRigth,
    moveRigthToLeft = transfer.moveRigthToLeft,
    moveToPreValidator = transfer.moveToPreValidator,
    filterOrderCodeFromOrderPageAndGetCount = require("../../scripts/filter").filterOrderCodeFromOrderPageAndGetCount;

module.exports = {
    cadastre,
    setOrderAtributeLoteDeProdução,
    updateScheduledClassification,
    cadastreWhithAtribute,
    updateDenominationClassification,
    updateReleasedImmediateClassification,
    setOrderTypeClassification,
    getOrderTypeClassification,
    navigateToClassificationTab,
    searchParam,
    assertOrderNotExists,
    updateSAPPercentageAttribute,
    updateDestinationHubUsageTypeToMandatory
};

function cadastre(code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, classification, incoterm) {
    navigate.to("Programação", "Pedido");
    var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            setOrderCode(code);
            setShipper(shipper);
            setIncoterm(incoterm);
            setOrderType(orderType);
            setDestination(DestinationLocality);
            setPassingHubUsageType("Opcional");
            setDestinationHubUsageType("Opcional");
            setPickupStartDate();
            setPickupStartHour();
            setDeliveryEndDate();
            setDeliveryEndHour();
            scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
            addOrderItem(OriginLocality, product, orderItemType, Wrapper);
            setOrderClassification(classification);
            elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function cadastreWhithAtribute(code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, attribute, valueAttribute, incoterm) {
    navigate.to("Programação", "Pedido");
    var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            setOrderCode(code);
            setShipper(shipper);
            setIncoterm(incoterm);
            setOrderType(orderType);
            setDestination(DestinationLocality);
            setPassingHubUsageType("Opcional");
            setDestinationHubUsageType("Opcional");
            setPickupStartDate();
            setPickupStartHour();
            setDeliveryEndDate();
            setDeliveryEndHour();
            scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
            addOrderItem(OriginLocality, product, orderItemType, Wrapper);
            setAtributeType(attribute, valueAttribute);
            elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function setAtributeType(attribute, valueAttribute) {
    scroll.toElement(element(by.css(tabAttributes))).click();
    return utils.fillText("[name='attributeEditionTable'] [name='" + attribute + "'] [name='attribute'] input", valueAttribute);
};

function addOrderItem(OriginLocality, product, orderItemType, Wrapper, quantityOfOrdemItem) {
    var quantityOfOrdemItem = quantityOfOrdemItem || 1
    for (var quantity = 0; quantity < quantityOfOrdemItem; quantity++) {
        elementClick(addOrderItemButton);
        elementClick("[name='" + quantity + "'] " + editOrderItem);
        fillOrderItem(OriginLocality, product, orderItemType, Wrapper);
    }
};

function fillOrderItem(OriginLocality, product, orderItemType, Wrapper) {
    //localidade de Origem
    utils.addTextTags("[name='orderItem.origin']", OriginLocality);
    //Produto
    utils.addTextTags("[name='orderItem.product']", product);
    //Tipo de pedido
    utils.addTextTags("[name='orderItem.orderItemType']", orderItemType);
    // comboSearchAndSelect("[name='orderItem.orderItemType']", orderItemType, orderItemType);
    //Involucro
    utils.addTextTags("[name='orderItem.shipmentUnitWrapper']", Wrapper);
    // comboSearchAndSelect("[name='orderItem.shipmentUnitWrapper']", Wrapper, Wrapper);
    //Orientações
    elementClick("[name='orderItem.lwhAllow']");
    elementClick("[name='orderItem.lhwAllow']");
    elementClick("[name='orderItem.hlwAllow']");
    elementClick("[name='orderItem.hwlAllow']");
    elementClick("[name='orderItem.wlhAllow']");
    elementClick("[name='orderItem.whlAllow']");
    //total de produtos 
    utils.fillNumber("[name='orderItem.quantity']", "10");
    //Quantidade de UEs
    utils.fillNumber("[name='orderItem.quantityInShipmentUnits']", "10");
    //UE completa
    utils.fillNumber("[name='orderItem.quantityOfProductsInShipmentUnits']", "1");
    elementClick("[name='buttonApply']");
};

function setOrderClassification(classification) {
    if (process.env.CLIENT_NAME === "mcb") {
        scroll.toElement(element(by.css(tabClassifications))).click();
        return addTextTags("[name='classification']", classification);
    }
};

function setDeliveryEndHour() {
    utils.fillTimePicker("[name='entity.deliveryEnd']", "23", "59");
};

function setDeliveryEndDate() {
    const deliveryEndDate = moment().add(14, 'days').calendar();
    return fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", deliveryEndDate);
};

function setPickupStartHour() {
    utils.fillTimePicker("[name='entity.pickupStart']", "00", "00");
};

function setPickupStartDate() {
    const pickupStartDate = moment().format('DD/MM/YYYY');
    return fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", pickupStartDate);
};

function setDestinationHubUsageType(value) {
    utils.addTextTags("[name='entity.destinationHubUsageType']", value);
};

function setPassingHubUsageType(value) {
    utils.addTextTags("[name='entity.passingHubUsageType']", value);
};

function setDestination(DestinationLocality) {
    utils.addTextTags("[name='entity.destination']", DestinationLocality);
};

function setOrderType(orderType) {
    utils.addTextTags("[name='entity.orderType']", orderType);
};

function setIncoterm(incoterm) {
    utils.addTextTags("[name='entity.incoterm']", incoterm);
};

function setShipper(shipper) {
    utils.addTextTags("[name='shipper']", shipper);
};

function setOrderCode(code) {
    fillText("[name='code']", code);
};

function setOrderAtributeLoteDeProdução(order, atribute) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='orderItems']");
            utils.elementClick("[name='editOrderItem']");
            utils.elementClick("[name='orderItemEditionModal'] [name='attributes']");
            utils.fillText("[name='attribute'] input", atribute);
            utils.elementClick("[name='buttonApply']");
            utils.elementClick("[name='buttonSubmit']");
            return utils.elementClick("[name='buttonOk']");
        }
    })
};

function updateScheduledClassification(order, classification) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='classifications']");
            setScheduledClassification(classification);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

function updateDenominationClassification(order, classification) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='classifications']");
            setDenominationClassification(classification);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

function updateReleasedImmediateClassification(order, classification) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='classifications']");
            setReleasedImmediateClassification(classification);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

function navigateToTab(tab) {
    return utils.elementClick(tab);
};

function setScheduledClassification(classificationFilter) {
    const classificationType = "Calendarizado",
        classificationSelection = "(Calendarizado) Sim - Sim";
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function setDenominationClassification(classificationFilter) {
    const classificationType = "Denominação",
        classificationSelection = "(Denominação) Agendamento - AG";
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function setReleasedImmediateClassification(classificationFilter) {
    const classificationType = "Liberado para imediato",
        classificationSelection = "(Liberado para imediato) Não - No";
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function setOrderTypeClassification(string) {
    const classificationType = 'Tipo de pedido',
        classificationFilter = string,
        classificationSelect = "(Tipo de pedido) " + string + " - " + string;
    navigateToClassificationTab();
    return utils.fillClassification(classificationType, classificationFilter, classificationSelect);
};

function getOrderTypeClassification(string) {
    navigateToClassificationTab();
    return utils.assertElementExist("[title='(Tipo de pedido) Principal - Principal']");
};

function searchParam(code) {
    return filterOrderCodeFromOrderPageAndGetCount(code);
};

function navigateToClassificationTab() {
    return utils.elementClick("[name='classifications']");
};

function assertOrderNotExists(code) {
    return searchParam(code).then(function (result) {
        // element(by.css("[name='" + code + "']"));
        const expectedResult = "0";
        return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
    })
};

function updateSAPPercentageAttribute(order, value) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='attributes']");
            setSAPPercentageAttribute(value);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

function setSAPPercentageAttribute(value) {
    const attributeType = "Percentual de Carga do SAP";
    return utils.fillAttribute(attributeType, value);
};

function updateDestinationHubUsageTypeToMandatory(order) {
    navigate.to("Programação", "Pedido");
    var countBeforeEditionPromise = filter.filterByOrderCodeAndGetCount(order);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            setDestinationHubUsageType("Obrigatório");
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};