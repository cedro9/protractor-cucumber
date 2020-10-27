"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    fillNumber = utils.fillNumber,
    addTextTags = utils.addTextTags,
    filterGenericParamByNameAndGetCount = require("../../scripts/filter").filterGenericParamByNameAndGetCount,
    filterMinWrapperQuantityByCompositeWrapperGenericParamAndGetCount = require("../../scripts/filter").filterMinWrapperQuantityByCompositeWrapperGenericParamAndGetCount,
    navigate = require('../../scripts/navigate'),
    editParam = require("./genericParamPage").editParam,
    addParam = require("./genericParamPage").addParam,
    saveParam = require("./genericParamPage").saveParam,
    clickOkButton = require("./genericParamPage").clickOkButton,
    cancelParam = require("./genericParamPage").cancelParam;;

module.exports = {
    fillMinWrapperQuantityByCompositeWrapperGenericParamPage,
    fillMinWrapperQuantityByCompositeWrapper,
    fillWrapperCode,
    fillComposityWrapperCode,
    setQuantity,
    searchParam,
    assertParamMinWrapperQuantityByCompositeWrapperIsFilled,
    assertParamMinWrapperQuantityByCompositeWrapperIsNotFilled
};

function fillMinWrapperQuantityByCompositeWrapperGenericParamPage(wrapperCode, composityWrapperCode, quantity) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Quantidade mínima de invólucros por invólucro composto");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            var countBeforeInsertionPromise = filterMinWrapperQuantityByCompositeWrapperGenericParamAndGetCount(wrapperCode, composityWrapperCode, quantity);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    fillMinWrapperQuantityByCompositeWrapper(wrapperCode, composityWrapperCode, quantity);
                    saveParam();
                    clickOkButton();
                }
                return cancelParam();
            })
        }
    });
};

function fillMinWrapperQuantityByCompositeWrapper(wrapperCode, composityWrapperCode, quantity) {
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
    return fillNumber("[name='Quantidade Mínima']", quantity);
};

function searchParam(wrapperCode, composityWrapperCode, quantity) {
    return filterMinWrapperQuantityByCompositeWrapperGenericParamAndGetCount(wrapperCode, composityWrapperCode, quantity);
};

function assertParamMinWrapperQuantityByCompositeWrapperIsFilled(wrapperCode, composityWrapperCode, quantity) {
    return searchParam(wrapperCode, composityWrapperCode, quantity)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};

function assertParamMinWrapperQuantityByCompositeWrapperIsNotFilled(wrapperCode, composityWrapperCode, quantity) {
    return searchParam(wrapperCode, composityWrapperCode, quantity)
        .then(function (result) {
            const expectedResult = "0";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};