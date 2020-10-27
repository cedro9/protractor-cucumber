"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    addTextTags = utils.addTextTags,
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

function fillIncompatiblesProductsByRiskClassGenericParam(classification, incompatibleClassification) {
    return genericParam.navigateToParamEditingPage("Incompatibilidade de produtos perigosos por classe de risco")
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(classification, incompatibleClassification)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillIncompatiblesProductsByRiskClass(classification, incompatibleClassification);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        });
};

function filterAndGetCount(classification, incompatibleClassification) {
    customizeFilter();
    fillClassificationAttribute(classification);
    fillIncompatibleClassificationAttribute(incompatibleClassification);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Classificação", "Classificação");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Classificação incompatível", "Classificação incompatível");
    return utils.elementClick("[name='buttonApply']");
};

function fillClassificationAttribute(classification) {
    return utils.addTextTags("[name='Classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classification);
};

function fillIncompatibleClassificationAttribute(incompatibleClassification) {
    return utils.addTextTags("[name='Classificação incompatível-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", incompatibleClassification);
};

function searchParam(classification, incompatibleClassification) {
    return filterAndGetCount(classification, incompatibleClassification);
};

function fillIncompatiblesProductsByRiskClass(classification, incompatibleClassification) {
    genericParam.addParam();
    setClassification(classification);
    return setIncompatibleClassification(incompatibleClassification);
};

function setClassification(classification) {
    return addTextTags("[name='Classificação']", classification);
};

function setIncompatibleClassification(incompatibleClassification) {
    return addTextTags("[name='Classificação incompatível']", incompatibleClassification);
};

function assertParamIncompatiblesProductsByRiskClassIsFilled(classification, incompatibleClassification) {
    return filterAndGetCount(classification, incompatibleClassification)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + ", porém  foram encontrados [" + result + "].");
        })
};

module.exports = {
    setClassification,
    setIncompatibleClassification,
    searchParam,
    assertParamIncompatiblesProductsByRiskClassIsFilled,
    fillIncompatiblesProductsByRiskClassGenericParam
}