"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    taginput = require("../../scripts/taginput"),
    genericParam = require("./genericParamPage");

module.exports = {
    setVehicle,
    setLocality,
    searchParam,
    fillLocalityAttribute,
    fillBlockedVehiclesOnLocalityGenericParamPage,
    assertParamSmallVehiclesIsFilled,
    removeBlockedVehiclesOnLocalityGenericParamPage
}

function fillBlockedVehiclesOnLocalityGenericParamPage(locality, vehicle) {
    return genericParam.navigateToParamEditingPage("Restrição de veículos bloqueados por localidade")
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(locality, vehicle)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillParam(locality, vehicle, "1");
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeBlockedVehiclesOnLocalityGenericParamPage(vehicle) {
    return genericParam.navigateToParamEditingPage("Restrição de veículos bloqueados por localidade")
        .then(function () {
            return filterAndGetCount(vehicle)
                .then(function (regCount) {
                    if (regCount === 1) {
                        genericParam.removeDataParam()
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterAndGetCount(locality, vehicle) {
    customizeFilter();
    fillLocalityAttribute(locality);
    fillVehicleAttribute(vehicle);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillLocalityAttribute(locality) {
    return utils.addTextTags("[name='Localidade-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", locality);
};

function fillVehicleAttribute(vehicle) {
    return utils.addTextTags("[name='Veículo-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", vehicle);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Localidade", "Localidade");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Veículo", "Veículo");
    return utils.elementClick("[name='buttonApply']");
};

function fillParam(locality, vehicle) {
    genericParam.addParam();
    setLocality(locality);
    return setVehicle(vehicle);
};

function setVehicle(vehicle) {
    taginput.clearCombo("[name='tag-" + vehicle + "'] [name='nlgTagInputRemoveTag']");
    return utils.addTextTags("[name='Veículo']", vehicle, vehicle);
};

function setLocality(locality) {
    return utils.addTextTags("[name='Localidade']", locality);
};

function searchParam(locality, vehicle) {
    return filterAndGetCount(locality, vehicle);
};

function assertParamSmallVehiclesIsFilled(locality, vehicle) {
    return searchParam(locality, vehicle)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};