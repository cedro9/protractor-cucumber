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
    assertParamRestrictedCompatibilityProductCategoryIsFilled,
    fillRestrictedCompatibilityProductCategoryGenericParam,
    removeRestrictedCompatibilityProductCategoryGenericParam,
    fillCategory1,
    fillCategory2
}

function fillRestrictedCompatibilityProductCategoryGenericParam(category1, category2) {
    return navigateToParamEditingPage()
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(category1, category2)
                .then(function (regCount) {
                    if (regCount === 0) {
                        fillGenericParam(category1, category2);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeRestrictedCompatibilityProductCategoryGenericParam(category1) {
    return navigateToParamEditingPage()
        .then(function () {
            return filterAndGetCount(category1)
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

function navigateToParamEditingPage() {
    return genericParam.navigateToParamEditingPage("Categoria de produto com compatibilidade restrita");
};

function filterAndGetCount(category1, category2) {
    customizeFilter();
    fillCategoria1Attribute(category1);
    fillCategoria2Attribute(category2);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillCategoria2Attribute(category) {
    return utils.addTextTags("[name='Categoria de produto 2-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", category);
};

function fillCategoria1Attribute(category) {
    return utils.addTextTags("[name='Categoria de produto 1-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", category);
};

function customizeFilter() {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Categoria de produto 1", "Categoria de produto 1");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Categoria de produto 2", "Categoria de produto 2");
    return utils.elementClick("[name='buttonApply']");
};

function fillGenericParam(category1, category2) {
    genericParam.addParam();
    fillCategory1(category1);
    return fillCategory2(category2);
};

function fillCategory1(category1) {
    taginput.clearCombo("[name='tag-" + category1 + "'] [name='nlgTagInputRemoveTag']");
    return utils.addTextTags("[name='Categoria de produto 1']", category1, category1);
};

function fillCategory2(category2) {
    return utils.addTextTags("[name='Categoria de produto 2']", category2, category2);
};

function searchParam(category1, category2) {
    return filterAndGetCount(category1, category2);
};

function assertParamRestrictedCompatibilityProductCategoryIsFilled(category1, category2) {
    return genericParam.tableViewParam()
        .then(function () {
            searchParam(category1, category2)
                .then(function (result) {
                    const expectedResult = "1";
                    return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
                })
        })
};