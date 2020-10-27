"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    addTextTags = utils.addTextTags,
    navigate = require("../../scripts/navigate"),
    filterGenericParamByNameAndGetCount = require("../../scripts/filter").filterGenericParamByNameAndGetCount,
    filterIncompatiblesProductsByRiskClassGenericParamAndGetCount = require("../../scripts/filter").filterIncompatiblesProductsByRiskClassGenericParamAndGetCount,
    filterTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamAndGetCount = require("../../scripts/filter").filterTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamAndGetCount,
    editParam = require("./genericParamPage").editParam,
    tableViewParam = require("./genericParamPage").tableViewParam,
    addParam = require("./genericParamPage").addParam,
    saveParam = require("./genericParamPage").saveParam,
    cancelParam = require("./genericParamPage").cancelParam,
    clickOkButton = require("./genericParamPage").clickOkButton;

module.exports = {
    fillTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParam,
    assertParamTransportadorasBloqueadasPorLocalidadecomALocalidadeIsFilled
}

function fillTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParam(locality, carrier) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Transportadoras bloqueadas por localidade");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            tableViewParam();
            var countBeforeInsertionPromise = filterTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamAndGetCount(locality, carrier);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    fillIncompatiblesProductsByRiskClass(locality, carrier);
                    saveParam();
                    clickOkButton();
                }
                return cancelParam();
            })
        }
    });
};

function searchParam(locality, carrier) {
    return filterTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamAndGetCount(locality, carrier);
};

function fillIncompatiblesProductsByRiskClass(locality, carrier) {
    addParam();
    setLocality(locality);
    return setCarrier(carrier);
};

function setLocality(locality) {
    return addTextTags("[name='Localidade']", locality);
};

function setCarrier(carrier) {
    return addTextTags("[name='Transportadora']", carrier);
};

function assertParamTransportadorasBloqueadasPorLocalidadecomALocalidadeIsFilled(locality, carrier) {
    return searchParam(locality, carrier)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + ", porém  foram encontrados [" + result + "].");
        })
};