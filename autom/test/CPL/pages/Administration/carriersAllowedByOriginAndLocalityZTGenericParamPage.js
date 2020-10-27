"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    addTextTags = utils.addTextTags,
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

function fillCarriersAllowedByOriginAndLocalityZTGenericParam(origin, carrier) {
    return genericParam.navigateToParamEditingPage("Transportadoras permitidas por origem e localidade/zt")
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(origin, carrier)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillCarriersAllowedByOriginAndLocalityZT(origin, carrier);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        });
};

function filterAndGetCount(origin, carrier) {
    customizeFilter();
    fillOriginAttribute(origin);
    fillCarrierAttribute(carrier);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Origem", "Origem");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Transportadora", "Transportadora");
    return utils.elementClick("[name='buttonApply']");
};

function fillOriginAttribute(origin) {
    return utils.addTextTags("[name='Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", origin);
};

function fillCarrierAttribute(carrier) {
    return utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrier);
};

function searchParam(origin, carrier) {
    return filterAndGetCount(origin, carrier);
};

function fillCarriersAllowedByOriginAndLocalityZT(origin, carrier) {
    genericParam.addParam();
    setOrigin(origin);
    return setCarrier(carrier);
};

function setOrigin(origin) {
    return addTextTags("[name='Origem']", origin);
};

function setCarrier(carrier) {
    return addTextTags("[name='Transportadora']", carrier);
};

function assertParamIncompatiblesProductsByRiskClassIsFilled(origin, carrier) {
    return filterAndGetCount(origin, carrier)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + ", porém  foram encontrados [" + result + "].");
        })
};

module.exports = {
    setOrigin,
    setCarrier,
    searchParam,
    assertParamIncompatiblesProductsByRiskClassIsFilled,
    fillCarriersAllowedByOriginAndLocalityZTGenericParam
}