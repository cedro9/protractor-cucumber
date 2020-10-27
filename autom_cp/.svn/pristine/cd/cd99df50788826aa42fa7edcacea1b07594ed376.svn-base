"use strict";

const cadastreButton = "[name='cadastreButton']";

const utils = require('../../scripts/utils'),
    present = require("../../scripts/wait").present,
    dblClick = require("../../scripts/events").dblClick,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../../scripts/scroll"),
    taginput = require("../../scripts/taginput"),
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages"),
    transfer = require('../../scripts/transferPanel');

const setBlockedShapesBelow = value => {
    return transfer.moveLeftToRigth("[name='blockedShapes.below']", value);
};

const setBlockedShapesAbove = value => {
    return transfer.moveLeftToRigth("[name='blockedShapes.above']", value);
};

const setBlockedUnlodDirections = value => {
    return transfer.moveLeftToRigth("[name='blockedUnloadDirections']", value);
};

const setAssociatedModal = value => {
    return element(by.css("[name='modals'] [name='ListRight'] [label='Rodoviário']")).isPresent().then(function (isPresent) {
        if (!isPresent) {
            return transfer.moveLeftToRigth("[name='modals']", value);
        }
    });
};

const setShipmentUnitWrapperCategoryRestrictions = (shipmentUnitWrapperCategory, height) => {
    const el = "[name='shipmentUnitWrapperCategoryRestriction']";
    element(by.css(el + "[name='remove']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            utils.elementClick(el + "[name='remove']");
        }
    });
    utils.elementClick(el + " [name='add']");
    utils.addTextTags("[name='shipmentUnitWrapperCategory']", shipmentUnitWrapperCategory);
    return utils.fillNumber(el + " [name='maxHeight']", height);
};

function setShape(shape) {
    return utils.addTextTags("[name='shapeSelected.currentShape']", shape);
};

function setMaxHeightByProductCategory(productCategory, maxHight) {
    utils.elementClick("[name='prodCategoryRestriction'] [name='add']");
    setProductCategory(productCategory);
    return setMaxHeight(maxHight);
};

function setMaxHeight(maxHight) {
    return utils.fillNumber("[name='maxHeight']", maxHight);
};

function setProductCategory(productCategory) {
    return utils.addTextTags("[name='productCategory']", productCategory);
};

function cadastre(code, name, description, largura, comprimento, altura) {
    navigate.to("Cadastro", "Veículos")
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick("[name='cadastreButton']");
            fillBasicInfo(code, name, description);
            setAsociatedModal("Rodoviário");
            utils.elementClick("[name='containers']");
            addContainer("Bau1", largura, comprimento, altura, 1);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
}

function setAsociatedModal(modal) {
    return element(by.css("[name='modals'] [name='ListRight'] [label='" + modal + "']"))
        .isPresent().then(function (isPresent) {
            if (!isPresent) {
                return transfer.moveLeftToRigth("[name='modals']", modal);
            }
        });
};

function addContainer(codigoBau, largura, comprimento, altura, bau) {
    var el = "[name='containersTable'] [name='" + bau + "'] [name='remove nlgTableRemoveButton']";
    return element(by.css(el)).isPresent().then(function (isPresent) {
        if (isPresent) {
            utils.elementClick(el);
        }
        utils.elementClick("[name='add addbutton']");
        utils.fillText("[name='" + bau + "'] [name='sourceId']", codigoBau);
        utils.fillNumber("[name='" + bau + "'] [name='width']", largura);
        utils.fillNumber("[name='" + bau + "'] [name='length']", comprimento);
        utils.fillNumber("[name='" + bau + "'] [name='height']", altura);
        utils.fillNumber("[name='" + bau + "'] [name='frontalSupportHeight']", altura);
        utils.fillNumber("[name='" + bau + "'] [name='rearSupportHeight']", altura);
        utils.fillNumber("[name='" + bau + "'] [name='sideSupportHeight']", altura);
        utils.fillNumber("[name='" + bau + "'] [name='lateralMaxWeightDifference']", "500,00");
        utils.fillNumber("[name='" + bau + "'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
        utils.fillNumber("[name='" + bau + "'] [name='minVolume']", "15,00");
        utils.fillNumber("[name='" + bau + "'] [name='maxVolume']", "105,00");
        return utils.fillNumber("[name='" + bau + "'] [name='maxWeight']", "16500,00");
    });
};

function addAxle() {
    utils.elementClick("[name='1'] [name='editContainerAxles']");
    utils.elementClick("[name='addAxle addbutton']");
    utils.fillText("[name='0'] [name='axle.description']", "Dianteiro");
    utils.fillNumbeh("[name='0'] [name='axle.distance']", "1,35");
    utils.fillNumber("[name='0'] [name='axle.maxWeight']", "10500,00");
    utils.elementClick("[name='addAxle addbutton']");
    utils.fillText("[name='1'] [name='axle.description']", "Traseiro");
    utils.fillNumber("[name='1'] [name='axle.distance']", "9,90");
    utils.fillNumber("[name='1'] [name='axle.maxWeight']", "16800,00");
    return utils.elementClick("[name='closeAxlesTable']");
};

function addFilledSpaces() {
    utils.elementClick("[name='1'] [name='editContainerFilledSpace']");
    utils.elementClick("[name='addFilledSpaces addbutton']");
    utils.fillNumber("[name='filledSpace.coordX']", "1,50");
    utils.fillNumber("[name='filledSpace.coordY']", "1,50");
    utils.fillNumber("[name='filledSpace.coordZ']", "1,50");
    utils.fillNumber("[name='filledSpace.width']", "0,5");
    utils.fillNumber("[name='filledSpace.height']", "0,5");
    utils.fillNumber("[name='filledSpace.length']", "0,5");
    return utils.elementClick("[name='closeFilledSpacesTable']");
};

const updateVehicleClassificationGranelVeihcleType = (classification, vehicleCode) => {
    navigate.to("Cadastro", "Veículos");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(vehicleCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTabClassifications();
            setVehicleClassificationGranelVeihcleType(classification);
            utils.elementClick("[name='buttonSubmit']");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

const setVehicleClassificationGranelVeihcleType = classificationFilter => {
    const classificationSelection = `(Veículo Granel) ${classificationFilter} - ${classificationFilter}`;
    return utils.fillClassification("Veículo Granel", classificationFilter, classificationSelection);
};

function navigateToTab(tab) {
    return utils.elementClick(tab);
};

function navigateToTabClassifications() {
    return navigateToTab("[name='classifications']");
};

module.exports = {
    setShape,
    setMaxHeightByProductCategory,
    cadastre,
    setAssociatedModal,
    setBlockedUnlodDirections,
    setBlockedShapesAbove,
    setBlockedShapesBelow,
    setShipmentUnitWrapperCategoryRestrictions,
    updateVehicleClassificationGranelVeihcleType
};