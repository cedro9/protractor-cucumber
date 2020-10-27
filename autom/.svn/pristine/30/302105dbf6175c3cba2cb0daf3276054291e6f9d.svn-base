"use strict";

const tabClassifications = "[name='classifications']",
    cadastreButton = "[name='cadastreButton']",
    saveButton = "[name='buttonSubmit']",
    tagInputTextField = "[name='tagInputTextField']",
    submitButton = "[name='submitButton']",
    editButton = "[name='editButton']",
    classificationField = "[name='classification']",
    okButton = "[name='buttonOk']";

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    addTextTags = utils.addTextTags,
    present = require("../../scripts/wait").present,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../../scripts/scroll"),
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages"),
    transfer = require('../../scripts/transferPanel'),
    navigate = require('../../scripts/navigate'),
    functioningDataHolder = require("../../scripts/functioningDataHolder"),
    cleanWorkingHour = functioningDataHolder.cleanWorkingHour,
    fillDefaultWorking = functioningDataHolder.fillDefaultWorking;

module.exports = {
    cadastre,
    setFreelancerClassification,
    setResponsableName,
    setResponsableEmail,
    setCarrierEmail,
    setServiceTypeCalculator,
    setServiceLevelOn,
    setAcceptTimeLimit,
    setHorizonOpening,
    setCarrierZone,
    setLogisticGroup,
    setFreightTripCalculatorConfig,
    setFullTruckLoad,
    setLessThanTruckLoad,
    setPointToPointTruckLoad,
    setLessThanTruckLoad,
    setServiceTypeFreight,
    setMaxDeadHeadDistance,
    setMaxDeadHeadTotalDistance,
    setMaxLoadsTrip,
    setMaxTripValue,
    navigateToTabFreight,
    navigateToTabFunctioning,
    navigateToTabLogisticRestrictions,
    setBlockedLoadTypes,
    setBlockedProductCategories,
    updateMaxTripValue
}

function cadastre(code, name, description, serviceType, grouper, logisticGrouper, tripFreightCalculator) {
    navigate.to("Cadastro", "Transportadoras");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            setCarrierEmail("neolog@neolog.com.br");
            setServiveType(serviceType);
            setSLA();
            navigateToTabLogisticRestrictions();
            setCarrierZone(grouper);
            setLogisticGrouper(logisticGrouper);
            setMaxTripValue("10000");
            navigateToTabFunctioning();
            setAllowedTimes();
            navigateToTabFreight();
            setFreightTripCalculator(tripFreightCalculator);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        };
    });
};

function updateMaxTripValue(code) {
    navigate.to("Cadastro", "Transportadoras");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick(editButton);
            navigateToTabLogisticRestrictions();
            setMaxTripValue("9999");
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        };
    });
};

function navigateToTabFreight() {
    return navigateToTab("[name='freight']");
};

function navigateToTabFunctioning() {
    return navigateToTab("[name='functioning']");
};

function navigateToTabLogisticRestrictions() {
    return navigateToTab("[name='logisticRestrictions']");
};

function setMaxTripValue(maxTripValue) {
    return utils.fillNumber("[name='maxTripValue']", maxTripValue);
};

function setCarrierZone(grouper) {
    return utils.addTextTags("[name='carrierZone']", grouper);
};

function setLogisticGrouper(logisticGrouper) {
    return utils.addTextTags("[name='logisticGroup']", logisticGrouper);
};

function setFreightTripCalculator(calculadorFreteViagem) {
    return utils.addTextTags("[name='freightTripCalculatorConfig']", calculadorFreteViagem);
};

function setAllowedTimes() {
    element(by.css("[name='workingHoursAllowed'] [name='workingHoursAllowed']")).isSelected().then(function (isSelected) {
        if (isSelected != true) {
            elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
        }
    });
    cleanWorkingHour();
    return fillDefaultWorking();
};

function setSLA() {
    assertSLAIsCheched();
    return setJustification("Auto recusa devido a obrigatoriedade da placa do caminhao");
};

function assertSLAIsCheched() {
    return element(by.css("[name='entity.serviceLevelOn']")).isSelected().then(function (isSelected) {
        if (isSelected != true) {
            return elementClick("[name='entity.serviceLevelOn']");
        }
    });
};

function setJustification(justificationValue) {
    if (process.env.CLIENT_NAME === 'grd') {
        justificationValue = 'Rejeite automático por não aceite';
    }
    return utils.addTextTags("[name='justification']", justificationValue);
};

function setServiveType(serviceType) {
    return utils.addTextTags("[name='serviceTypeCalculatorConfig']", serviceType);
};

function setCarrierEmail(email) {
    utils.clearTextField("[name='emailLoadOffering']");
    return utils.fillText("[name='emailLoadOffering']", email);
};

function setFreelancerClassification(code, classification) {
    navigate.to("Cadastro", "Transportadoras");
    filter.configuraFiltro();
    fillText(tagInputTextField, code);
    elementClick(submitButton);
    present(element(by.css(editButton)));
    elementClick(editButton);
    setCarrierFreelancerClassification(classification);
    elementClick(saveButton);
    return elementClick(okButton);
};

function setCarrierFreelancerClassification(classification) {
    if (process.env.CLIENT_NAME === "mcb") {
        navigateToTab(tabClassifications);
        addTextTags(classificationField, classification);
    }
};

function navigateToTab() {
    return scroll.toElement(element(by.css(tabClassifications))).click();
};

function setResponsableName(responsableName) {
    utils.clearTextField("[name='personInChargeName']");
    return utils.fillText("[name='personInChargeName']", responsableName);
};

function setResponsableEmail(responsableEmail) {
    utils.clearTextField("[name='personInChargeEmail']");
    return utils.fillText("[name='personInChargeEmail']", responsableEmail);
};

function setCarrierEmail(carrierEmail) {
    utils.clearTextField("[name='emailLoadOffering']");
    return utils.fillText("[name='emailLoadOffering']", carrierEmail);
};

function setServiceTypeCalculator(serviceTypeCalculator) {
    utils.clearCombo("[name='serviceTypeCalculatorConfig']");
    return utils.addTextTags("[name='serviceTypeCalculatorConfig']", serviceTypeCalculator);
};

function setServiceLevelOn() {
    //Verifica se SLA está desmarcado para então clicar
    element(by.css("[name='entity.serviceLevelOn']")).isSelected().then(function (isSelected) {
        if (isSelected != true) {
            elementClick("[name='entity.serviceLevelOn']");
        };
    });
};

function setAcceptTimeLimit(acceptTimeLimit) {
    return utils.fillNumber("[name='slaOfferTimeLimit'] [name='nlgTimepicker'] [name='hour']", acceptTimeLimit);
};


function setHorizonOpening(horizonOpening) {
    return utils.fillNumber("[name='horizonOpening']", horizonOpening);
};

function setCarrierZone(carrierZone) {
    return utils.addTextTags("[name='carrierZone']", carrierZone);
};

function setLogisticGroup(logisticGroup) {
    return utils.addTextTags("[name='logisticGroup']", logisticGroup);
};

function setFreightTripCalculatorConfig(freightTripCalculatorConfig) {
    return utils.addTextTags("[name='freightTripCalculatorConfig']", freightTripCalculatorConfig);
};

function setFullTruckLoad(fullTruckLoad) {
    return utils.addTextTags("[name='FULL_TRUCK_LOAD']", fullTruckLoad);
};

function setLessThanTruckLoad(lessThanTruckLoad) {
    return utils.addTextTags("[name='LESS_THAN_TRUCK_LOAD']", lessThanTruckLoad);

};

function setPointToPointTruckLoad(pointToPointTruckLoad) {
    return utils.addTextTags("[name='POINT_TO_POINT_TRUCK_LOAD']", pointToPointTruckLoad);
};

function navigateToTab(tab) {
    return utils.elementClick(tab);
};

function setServiceTypeFreight(calculador, tipoServiço) {
    return utils.addTextTags("[name='" + tipoServiço + "']", calculador);
};

function setMaxDeadHeadDistance(maxDeadHeadDistance) {
    return utils.fillNumber("[name='maxDeadHeadDistance']", maxDeadHeadDistance);
};


function setMaxDeadHeadTotalDistance(maxDeadHeadTotalDistance) {
    return utils.fillNumber("[name='maxDeadHeadTotalDistance']", maxDeadHeadTotalDistance);
};

function setMaxLoadsTrip(maxLoadsTrip) {
    return utils.fillNumber("[name='maxLoadsTrip']", maxLoadsTrip);
};

function setBlockedLoadTypes(blockedLoadTypes) {
    return transfer.moveLeftToRigth("[name='blockedLoadTypes']", blockedLoadTypes);
};

function setBlockedProductCategories(blockedProductCategories) {
    return transfer.moveLeftToRigth("[name='blockedLoadTypes']", blockedProductCategories);
};
