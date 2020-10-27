"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage"),
    utils = require('../../scripts/utils');

module.exports = {
    removeOrigin,
    setOrgin,
    setUser,
    fillChangeTripUserAutomaticOptimization
}

function removeOrigin(originCode) {
    return genericParam.navigateToParamEditingPage("Troca o usuário da viagem - Otimização automática")
        .then(function () {
            genericParam.tableViewParam();
            return filterParamAndGetCount(originCode)
                .then(function (regCount) {
                    if (regCount === 2) {
                        genericParam.removeDataParam();
                        genericParam.removeDataParam();
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        });
};

function fillChangeTripUserAutomaticOptimization(origin, user) {
    return genericParam.navigateToParamEditingPage("Troca o usuário da viagem - Otimização automática")
        .then(function () {
            genericParam.tableViewParam();
            genericParam.addParam();
            setOrgin(origin);
            setUser(user);
            genericParam.saveParam();
            genericParam.confirmParam();
            return genericParam.cancelParam();
        });
};

function setOrgin(origin) {
    return utils.addTextTags("[name='Origem']", origin);
};

function setUser(user) {
    return utils.addTextTags("[name='Usuário']", user);
};

function filterParamAndGetCount(originCode) {
    customizeFilter();
    fillOriginAttribute(originCode);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillOriginAttribute(value) {
    return utils.addTextTags("[name='Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", value);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Origem", "Origem");
    return utils.elementClick("[name='buttonApply']");
};
