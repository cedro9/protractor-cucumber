"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    addTextTags = utils.addTextTags,
    filter = require("../../scripts/filter"),
    transf = require("../../scripts/transferPanel"),
    genericParam = require("./genericParamPage");

function fillForbiddenVehicleOnCarrierGenericParam(vehicle, carrier) {
    return genericParam.navigateToParamEditingPage("Veículos proibidos por transportadora")
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(vehicle, carrier)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillForbiddenVehicleOnCarrier(vehicle, carrier);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        });
};

function filterAndGetCount(vehicle, carrier) {
    customizeFilter();
    fillVehicleAttribute(vehicle);
    fillCarrierAttribute(carrier);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Veículo", "Veículo");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Transportadora", "Transportadora");
    return utils.elementClick("[name='buttonApply']");
};

function fillVehicleAttribute(vehicle) {
    return utils.addTextTags("[name='Veículo-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", vehicle);
};

function fillCarrierAttribute(carrier) {
    return utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrier);
};

function searchParam(vehicle, carrier) {
    return filterAndGetCount(vehicle, carrier);
};

function fillForbiddenVehicleOnCarrier(vehicle, carrier) {
    genericParam.addParam();
    setVehicle(vehicle);
    return setCarrier(carrier);
};

function setVehicle(vehicle) {
    return addTextTags("[name='Veículo']", vehicle);
};

function setCarrier(carrier) {
    return addTextTags("[name='Transportadora']", carrier);
};

function assertParamIncompatiblesProductsByRiskClassIsFilled(vehicle, carrier) {
    return filterAndGetCount(vehicle, carrier)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + ", porém  foram encontrados [" + result + "].");
        })
};

function setForbidAllVehiclesExceptOne(vehicle, carrier) {
    return genericParam.navigateToParamEditingPage("Veículos proibidos por transportadora")
        .then(function () {
            genericParam.changeShaftTo("Veículo");
            utils.addTextTags("[name='entity']", carrier);
            utils.elementClick("[name='syncButton']");
            forbiddenAllVehicles();
            setAllowedVehicle(vehicle);
            utils.elementClick("[name='saveTransfer']");
            utils.elementClick("[name='genericParamEditionConfirmationOk']");
            genericParam.clickOkButton();
            return genericParam.cancelParam();
        });
};

function setAllowedVehicle(vehicle) {
    return transf.moveRigthToLeft("[name='transferedEntities']", vehicle);
};

function forbiddenAllVehicles() {
    transf.moveAllToRight();
    utils.elementClick("[name='saveTransfer']");
    utils.elementClick("[name='genericParamEditionConfirmationOk']");
    return genericParam.clickOkButton();
};

module.exports = {
    setVehicle,
    setCarrier,
    searchParam,
    assertParamIncompatiblesProductsByRiskClassIsFilled,
    fillForbiddenVehicleOnCarrierGenericParam,
    setForbidAllVehiclesExceptOne
}