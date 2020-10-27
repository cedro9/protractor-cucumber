"use strict";
var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var assert = chai.assert;

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
    classificationType = "[name='type']",
    cadastreButton = "[name='cadastreButton']",
    editButton = "[name='editButton']";

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
    transfer = require('../../scripts/transferPanel');

module.exports = {
    cadastre,
    navigateAndUpdateDimensions,
    setShape,
    setEmbedding,
    setLength,
    setWidth,
    setHeight,
    setWeight,
    setCategory,
    setCheckBoxLoadAndUnloadConfigurations,
    setBlockedDirections,
    setProductClassificationRiskClass,
    setProductClassificationProductType,
    updateProductClassificationProductType,
    setProductClassificationProductType,
    setProductClassificationProductCompartment,
    getProductClassificationProductCompartment,
    setProductClassificationProductUnitization,
    getProductClassificationProductUnitization
}

function cadastre(code, name, description, catproduct, shipper, classification, height, width, length) {
    navigate.to("Cadastro", "Produtos");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            setCategory(catproduct);
            setShipper(shipper);
            setValue();
            setLength(length);
            setWidth(width);
            setHeight(height);
            setWeight("1");
            setDirectionAllowed();
            setNotAllowedLoadUnloadConfigurations();
            setClassification(classification);
            elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function navigateAndUpdateDimensions(code, width, height, length) {
    navigate.to("Cadastro", "Produtos");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick(editButton);
            setWidth(width);
            setHeight(height);
            setLength(length);
            elementClick("[name='buttonSubmit']");
            // messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function setClassification(classification) {
    if (process.env.CLIENT_NAME === "mcb") {
        scroll.toElement(element(by.css(tabClassifications))).click();
        return addTextTags("[name='classification']", classification);
    }
};

function setNotAllowedLoadUnloadConfigurations() {
    transfer.moveLeftToRigth("[name='blockedDirections']", "Direita para esquerda");
};

function setDirectionAllowed() {
    return utils.elementClick("[name='entity.directionAllowed']");
};

function setWeight(weight) {
    return utils.fillNumber("[name='weight']", weight);
};

function setHeight(height) {
    return utils.fillNumber("[name='height']", height);
};

function setWidth(width) {
    return utils.fillNumber("[name='width']", width);
};

function setLength(length) {
    return utils.fillNumber("[name='length']", length);
};

function setValue() {
    return utils.fillNumber("[name='value']", "1000");
};

function setShipper(shipper) {
    return utils.addTextTags("[name='shipper']", shipper);
};

function setCategory(catproduct) {
    return utils.addTextTags("[name='category']", catproduct);
};

function setShape(shape) {
    utils.clearCombo("[name='shape']");
    return utils.addTextTags("[name='shape']", shape);
};

function setEmbedding(string, string2) {
    utils.elementClick("[name='entity.embeddingAllowed']");
    utils.elementClick("[name='embeddingInfo.embeddable']");
    utils.elementClick("[name='embeddingInfo.embedder']");
    utils.addTextTags("[name='embeddingInfo.orientation']", string);
    return utils.fillNumber("[name='embeddingInfo.offset']", string2);
};

function setCategory(category) {
    return utils.addTextTags("[name='category']", category);
};

function setCheckBoxLoadAndUnloadConfigurations() {
    return utils.elementClick("[name='entity.directionAllowed']");
};

function setBlockedDirections(string) {
    return transfer.moveLeftToRigth("[name='blockedDirections']", string);
};

function setProductClassificationRiskClass(string) {
    const classificationType = 'Classe de risco',
        classificationFilter = string,
        classificationSelect = "(Classe de risco) " + string + " - " + string;
    navigateToClassificationTab();
    return utils.fillClassification(classificationType, classificationFilter, classificationSelect);
};

function navigateToClassificationTab() {
    return utils.elementClick("[name='classifications']");
};

function setProductClassificationProductType(classification) {
    const classificationType = 'Tipo de produto',
        classificationFilter = classification,
        classificationSelect = "(Tipo de produto) " + classification + " - " + classification;
    navigateToClassificationTab();
    return utils.fillClassification(classificationType, classificationFilter, classificationSelect);
};

function updateProductClassificationProductType(classification, productCode) {
    navigate.to("Cadastro", "Produtos");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(productCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick(editButton);
            setProductClassificationProductType(classification);
            elementClick("[name='buttonSubmit']");
            // messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function setProductClassificationProductCompartment(string) {
    const classificationType = 'Compartimento',
        classificationFilter = string,
        classificationSelect = "(Compartimento) "+ string +" - "+ string;
        navigateToClassificationTab();
    return utils.fillClassification(classificationType, classificationFilter, classificationSelect);
};

function getProductClassificationProductCompartment(string) {
    navigateToClassificationTab();
    return utils.assertElementExist("[title='(Compartimento) N/A - N/A']");
};

function setProductClassificationProductUnitization(string) {
    const classificationType = 'Unitizável?',
        classificationFilter = string,
        classificationSelect = "(Unitizável?) "+ string +" - "+ string;
        navigateToClassificationTab();
    return utils.fillClassification(classificationType, classificationFilter, classificationSelect);
};

function getProductClassificationProductUnitization(string) {
    navigateToClassificationTab();
    return utils.assertElementExist("[title='(Unitizável?) Sim - Sim']");
};
