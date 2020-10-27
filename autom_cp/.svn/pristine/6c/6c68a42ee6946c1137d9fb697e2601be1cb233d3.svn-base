"use strict";

const okButton = "[name='buttonOk']",
    modeljustification = "[name='model.justification']",
    rejectButton = "Rejeitar",
    tripDropdownMenu = "[name='tripDropdown']",
    offerTripButton = "[name='offerTripButton']",
    saveButton = "[name='buttonSave']",
    tripBasket = "[selection='selection.tripBasket']",
    tripHeader = " [data-node-type='Trip']",
    durationTripOnPool = "[name='pcConfigParams.durationTripOnPool']",
    offerResponseLimitCheckBox = "[name='pcConfigParams.offerResponseLimitOn']",
    offerStrategyField = "[name='pcConfigParams.offerStrategy']",
    justificationField = "[name='pcConfigParams.autoRejectionJustification']",
    offerResponseLimitNumberFileds = "pcConfigParams.offerResponseLimit",
    offerRejectedTripsToPool = "[name='pcConfigParams.offerRejectedTripsToPool']",
    justificativa = "Automação teste de rejeite de oferta";

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    selectOrderOrTrip = utils.selectOrderOrTrip,
    confirmSelectedContext = utils.confirmSelectedContext;

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

module.exports = {
    setTripTenderingandCancelTripTendering,
    setTripTendering,
    setTenderingResponseLimit,
    unsetTenderingResponseLimit,
    setPoolTendering,
    setPoolCarrier,
    assertTripNotFound
};

function setTripTenderingandCancelTripTendering(orderCode) {
    analisysTripTendering(orderCode);
    return partnerCollaborationTripRejectTendering(orderCode);
};

function setTripTendering(orderCode) {
    return analisysTripTendering(orderCode);
};

function setTenderingResponseLimit(action, justification) {
    navigate.to("Configuração", "Partner collaboration");
    utils.selectCheckbox(offerResponseLimitCheckBox);
    utils.fillDuration("0", "0", "0", "05", "0");
    utils.addTextTags(offerStrategyField, action);
    utils.addTextTags(justificationField, justification);
    utils.elementClick(saveButton);
    return utils.elementClick(okButton);
};

function unsetTenderingResponseLimit(action, justification) {
    navigate.to("Configuração", "Partner collaboration");
    utils.unselectCheckbox(offerResponseLimitCheckBox);
    utils.elementClick(saveButton);
    return utils.elementClick(okButton);
};

function selectTrip() {
    var el = tripBasket + tripHeader;
    return selectOrderOrTrip(el);
};

function tripTendering() {
    utils.elementClick(tripDropdownMenu);
    return utils.elementClick(offerTripButton);
};

function analisysTripTendering(orderCode) {
    navigate.to("Programação", "Análise");
    var countBeforeFilterPromise = filter.filterTripBasketByOrderCodeAndGetCount(orderCode);
    return countBeforeFilterPromise.then(function (regCount) {
        if (regCount === 1) {
            selectTrip();
            return tripTendering();
        }
    });
};

function partnerCollaborationTripRejectTendering(orderCode) {
    navigate.to("Programação", "Partner collaboration");
    var countBeforeFilterPromise = filter.filterTripBasketByOrderCodeAndGetCount(orderCode);
    return countBeforeFilterPromise.then(function (regCount) {
        if (regCount === 1) {
            var el = tripBasket + tripHeader;
            selectOrderOrTrip(el);
            utils.elementClickXpath("//*[text()='" + rejectButton + "']");
            confirmSelectedContext();
            utils.addTextTags(modeljustification, justificativa);
            utils.elementClick(okButton);
            return utils.elementClick(okButton);
        }
    });
};

function setPoolTendering() {
    navigate.to("Configuração", "Partner collaboration");
    setRejectedTenderingToPool();
    setpoolDuration();
    utils.elementClick(saveButton);
    return utils.elementClick(okButton);

    function setpoolDuration() {
        utils.addTextTags("[name='pcConfigParams.poolEndType']", "Duração");
        return element(by.css(durationTripOnPool)).isPresent().then(function (isPresent) {
            if (isPresent) {
                return utils.fillDurationInput(durationTripOnPool, "0", "0", "0", "1");
            }
        });
    }
};

function setRejectedTenderingToPool() {
    return utils.selectCheckbox(offerRejectedTripsToPool);
};

function setPoolCarrier(carrierCode) {
    return utils.addTextTags("[name='model.carrier']", carrierCode);
};

function assertTripNotFound(orderCode) {
    var countBeforeFilterPromise = filter.filterTripBasketByOrderCodeAndGetCount(orderCode);
    return countBeforeFilterPromise.then(function (regCount) {
        return assert.equal(regCount, 0);
    });
};