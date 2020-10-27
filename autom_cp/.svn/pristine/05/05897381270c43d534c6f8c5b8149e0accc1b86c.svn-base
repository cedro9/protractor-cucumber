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
    setOrdem,
    searchParam,
    fillOrdemAttribute,
    fillSmallVehiclesGenericParamWithRepeteVehicle,
    fillSmallVehiclesGenericParam,
    assertParamSmallVehiclesIsFilled,
    removeSmallVehiclesGenericParam
}

function fillSmallVehiclesGenericParam(vehicle) {
    return genericParam.navigateToParamEditingPage("Veículos pequenos que permitem carga desunitizada")
        .then(function () {
            return filterAndGetCount(vehicle)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillSmallVehicle(vehicle, "1");
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeSmallVehiclesGenericParam(vehicle) {
    return genericParam.navigateToParamEditingPage("Veículos pequenos que permitem carga desunitizada")
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

function filterAndGetCount(vehicle, ordem) {
    customizeFilter();
    fillVehicleAttribute(vehicle);
    fillOrdemAttribute(ordem || "");
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillOrdemAttribute(ordem) {
    return utils.fillText("[name='Ordem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", ordem);
};

function fillVehicleAttribute(vehicle) {
    return utils.addTextTags("[name='Veículo-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", vehicle);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Veículo", "Veículo");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Ordem", "Ordem");
    return utils.elementClick("[name='buttonApply']");
};

function fillSmallVehicle(vehicle, ordem) {
    genericParam.addParam();
    setVehicle(vehicle);
    return setOrdem(ordem);
};

async function fillSmallVehicles(vehicles) {
    for (const [idx, vehicle] of vehicles.entries()) {
        const ordem = idx + 1;
        await searchParam(vehicle, ordem)
            .then(async function () {
                await genericParam.addParam()
            })
            .then(async function () {
                await setVehicle(vehicle);
            })
            .then(async function () {
                await setOrdem(ordem);
            });
        if (ordem < vehicles.length) {
            genericParam.saveParam();
            genericParam.clickOkButton();
        }
    }
};

function setVehicle(vehicle) {
    taginput.clearCombo("[name='tag-" + vehicle + "'] [name='nlgTagInputRemoveTag']");
    return utils.addTextTags("[name='Veículo']", vehicle, vehicle);
};

function setOrdem(ordem) {
    return utils.fillNumber("[name='Ordem']", ordem);
};

function searchParam(vehicle, ordem) {
    return filterAndGetCount(vehicle, ordem);
};

function assertParamSmallVehiclesIsFilled(product, ordem) {
    return searchParam(product, ordem)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};

async function fillSmallVehiclesGenericParamWithRepeteVehicle(vehicle) {
    return fillSmallVehicles([vehicle, vehicle]);
};