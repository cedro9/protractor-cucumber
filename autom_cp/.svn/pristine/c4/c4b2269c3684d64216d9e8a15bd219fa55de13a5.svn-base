"use strict";

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
    functioningDataHolder = require("../../scripts/functioningDataHolder"),
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
    moveToPreValidator = transfer.moveToPreValidator;


module.exports = {
    cadastre, blockDestinationHub, blockPassageHub, setLoadUnloadTimeCalculatorScript, setTimeCalculatorLoadUnload
}

function cadastre(code, name, description, catproduct, shipper, classification) {
    navigate.to("Cadastro", "Restrições de localidade");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            elementClick("[name='functioning']");
            setTimeCalculatorLoadUnload();
            setLoadUnloadTimeCalculatorScript();
            elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function setLoadUnloadTimeCalculatorScript() {
    return utils.addTextTags("[name='entity.loadUnloadTimeCalculatorScript']", "Calculador de duração de serviço linear (Localidade)");
}

function setTimeCalculatorLoadUnload() {
    functioningDataHolder.cleanWorkingHour();
    return functioningDataHolder.fillDefaultWorking();
};

function setClassification(classificationName) {
    if (process.env.CLIENT_NAME === "mcb") {
        scroll.toElement(element(by.css(tabClassifications))).click();
        return addTextTags("[name='classification']", classificationName);
    }
};

function blockDestinationHub(hub) {
    return transfer.moveLeftToRigth("[name='destinationsHubs']", hub);
};

function blockPassageHub(hub) {
    return transfer.moveLeftToRigth("[name='passingHubs']", hub);
};
