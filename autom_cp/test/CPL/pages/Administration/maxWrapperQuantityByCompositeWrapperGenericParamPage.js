"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    fillNumber = utils.fillNumber,
    addTextTags = utils.addTextTags,
    filterGenericParamByNameAndGetCount = require("../../scripts/filter").filterGenericParamByNameAndGetCount,
    filterMaxWrapperQuantityByCompositeWrapperGenericParamAndGetCount = require("../../scripts/filter").filterMaxWrapperQuantityByCompositeWrapperGenericParamAndGetCount,
    navigate = require('../../scripts/navigate'),
    editParam = require("./genericParamPage").editParam,
    addParam = require("./genericParamPage").addParam,
    saveParam = require("./genericParamPage").saveParam,
    clickOkButton = require("./genericParamPage").clickOkButton,
    cancelParam = require("./genericParamPage").cancelParam;;

module.exports = {
    fillMaxWrapperQuantityByCompositeWrapperGenericParamPage,
    fillMaxWrapperQuantityByCompositeWrapper,
    fillWrapperCode,
    fillComposityWrapperCode,
    setQuantity,
    searchParam,
    assertParamMaxWrapperQuantityByCompositeWrapperIsFilled
};

function fillMaxWrapperQuantityByCompositeWrapperGenericParamPage(wrapperCode, composityWrapperCode, quantity) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Quantidade máxima de invólucros por invólucro composto");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            var countBeforeInsertionPromise = filterMaxWrapperQuantityByCompositeWrapperGenericParamAndGetCount(wrapperCode, composityWrapperCode, quantity);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    fillMaxWrapperQuantityByCompositeWrapper(wrapperCode, composityWrapperCode, quantity);
                    saveParam();
                    clickOkButton();
                }
                return cancelParam();
            })
        }
    });
};

function fillMaxWrapperQuantityByCompositeWrapper(wrapperCode, composityWrapperCode, quantity) {
    addParam();
    fillWrapperCode(wrapperCode);
    fillComposityWrapperCode(composityWrapperCode);
    return setQuantity(quantity);
};
function fillWrapperCode(wrapperCode) {
    return addTextTags("[name='Invólucro Simples']", wrapperCode);
};

function fillComposityWrapperCode(composityWrapperCode) {
    return addTextTags("[name='Invólucro Composto']", composityWrapperCode);
};

function setQuantity(quantity) {
    return fillNumber("[name='Quantidade Máxima']", quantity);
};

function searchParam(wrapperCode, composityWrapperCode, quantity) {
    return filterMaxWrapperQuantityByCompositeWrapperGenericParamAndGetCount(wrapperCode, composityWrapperCode, quantity);
};

function assertParamMaxWrapperQuantityByCompositeWrapperIsFilled(wrapperCode, composityWrapperCode, quantity) {
    return searchParam(wrapperCode, composityWrapperCode, quantity)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};