"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

module.exports = {
    setProduct,
    setQuantity,
    searchParam,
    fillMaxExemptionQuantityGenericParamWithRepeteProduct,
    fillMaxExemptionQuantityGenericParam,
    assertParamMaxExemptionQuantityIsFilled
}

function fillMaxExemptionQuantityGenericParam(productCode, exemptionQuantity) {
    return genericParam.navigateToParamEditingPage("Quantidade máxima de isenção")
        .then(function () {
            return filterAndGetCount(productCode, exemptionQuantity)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillMaxExemptionQuantity(productCode, exemptionQuantity);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterAndGetCount(productCode, exemptionQuantity) {
    customizeFilter();
    fillProductAttribute(productCode);
    fillQuantityAttribute(exemptionQuantity);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillQuantityAttribute(exemptionQuantity) {
    return utils.fillText("[name='Quantidade de isenção (kg)-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", exemptionQuantity);
};

function fillProductAttribute(productCode) {
    return utils.addTextTags("[name='Produto-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", productCode);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Produto", "Produto");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Quantidade de isenção (kg)", "Quantidade de isenção (kg)");
    return utils.elementClick("[name='buttonApply']");
};

function fillMaxExemptionQuantity(productCode, exemptionQuantity) {
    genericParam.addParam();
    setProduct(productCode);
    return setQuantity(exemptionQuantity);
};

function setProduct(code) {
    return utils.addTextTags("[name='Produto']", code);
};

function setQuantity(quantity) {
    return utils.fillNumber("[name='Quantidade de isenção (kg)']", quantity);
};


function searchParam(productCode, exemptionQuantity) {
    return filterAndGetCount(productCode, exemptionQuantity);
};

function assertParamMaxExemptionQuantityIsFilled(product, exemptionQuantity) {
    return searchParam(product, exemptionQuantity)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};

function fillMaxExemptionQuantityGenericParamWithRepeteProduct(productCode) {
    fillMaxExemptionQuantity(productCode, "20");
    return fillMaxExemptionQuantity(productCode, "10");
}