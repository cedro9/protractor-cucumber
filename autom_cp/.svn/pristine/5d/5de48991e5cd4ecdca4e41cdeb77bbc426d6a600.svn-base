"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var assert = chai.assert;

const utils = require('../../scripts/utils'),
    fillNumber = utils.fillNumber,
    filterButton = "[name='syncButton']",
    transferPanel = require("../../scripts/transferPanel"),
    addTextTags = utils.addTextTags,
    filterGenericParamByNameAndGetCount = require("../../scripts/filter").filterGenericParamByNameAndGetCount,
    filterAllowedShipmentUnitWrapperCategoryByContextGenericParamAndGetCount = require("../../scripts/filter").filterAllowedShipmentUnitWrapperCategoryByContextGenericParamAndGetCount,
    navigate = require('../../scripts/navigate'),
    editParam = require("./genericParamPage").editParam,
    addParam = require("./genericParamPage").addParam,
    saveParam = require("./genericParamPage").saveParam,
    clickOkButton = require("./genericParamPage").clickOkButton,
    saveSummaryButton = "[name='genericParamEditionConfirmationOk']",
    saveModalButton = "[name='saveTransfer']",
    cancelParam = require("./genericParamPage").cancelParam,
    tableViewParam = require("./genericParamPage").tableViewParam;

module.exports = {
    fillAllowedShipmentUnitWrapperCategoryByContextGenericParam,
    fillAllowedExceptionShipmentUnitWrapperCategoryByContextGenericParam,
    fillAllowedShipmentUnitWrapperCategoryByContext,
    fillWrapperCodeCategory,
    fillUnitizationContext,
    searchParam,
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsFilled,
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsNotFilled
};

function fillAllowedShipmentUnitWrapperCategoryByContextGenericParam(unitizationContext, wrapperCodeCategory) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Categorias de invólucro permitidas por contexto de unitização");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            tableViewParam();
            var countBeforeInsertionPromise = filterAllowedShipmentUnitWrapperCategoryByContextGenericParamAndGetCount(unitizationContext, wrapperCodeCategory);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    fillAllowedShipmentUnitWrapperCategoryByContext(unitizationContext, wrapperCodeCategory);
                    saveParam();
                    clickOkButton();
                }
                return cancelParam();
            })
        }
    });
};

function fillAllowedExceptionShipmentUnitWrapperCategoryByContextGenericParam(unitizerConfigsCode, shipmentUnitWrapperCategorieCode) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Categorias de invólucro permitidas por contexto de unitização");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            filterByUnitizerConfigs(unitizerConfigsCode);
            selectAllItems();
            unblockExceptionItem(shipmentUnitWrapperCategorieCode);
            saveInEditionModal();
            saveInEditionSummary();
            clickOkButton();
            return cancelParam();
        }
    });
};

function filterByUnitizerConfigs(unitizerConfigsCode) {
    setUnitizerConfigs(unitizerConfigsCode);
    return search();
};

function setUnitizerConfigs(unitizerConfigsCode) {
    return utils.addTextTags("[name='entity']", unitizerConfigsCode);
};

function selectAllItems() {
    return transferPanel.moveAllToRight();
};

function search() {
    return utils.elementClick(filterButton);
};

function unblockExceptionItem(shipmentUnitWrapperCategorieCode) {
    return transferPanel.moveRigthToLeft("[class='nlgDualListPanelRight col-xs-12 col-sm-6']", shipmentUnitWrapperCategorieCode);
};

function saveInEditionModal() {
    return utils.elementClick(saveModalButton);
};

function saveInEditionSummary() {
    return utils.elementClick(saveSummaryButton);
};

function fillAllowedShipmentUnitWrapperCategoryByContext(unitizationContext, wrapperCodeCategory) {
    addParam();
    fillUnitizationContext(unitizationContext);
    return fillWrapperCodeCategory(wrapperCodeCategory);
};

function fillWrapperCodeCategory(wrapperCodeCategory) {
    return addTextTags("[name='Categoria_de_involucro']", wrapperCodeCategory);
};

function fillUnitizationContext(unitizationContext) {
    return addTextTags("[name='Contexto de Unitização']", unitizationContext);
};

function searchParam(unitizationContext, wrapperCodeCategory) {
    return filterAllowedShipmentUnitWrapperCategoryByContextGenericParamAndGetCount(unitizationContext, wrapperCodeCategory);
};

function assertParamAllowedShipmentUnitWrapperCategoryByContextIsFilled(unitizationContext, wrapperCodeCategory) {
    return searchParam(unitizationContext, wrapperCodeCategory)
        .then(function (result) {
            const expectedResult = "1";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};

function assertParamAllowedShipmentUnitWrapperCategoryByContextIsNotFilled(unitizationContext, wrapperCodeCategory) {
    return searchParam(unitizationContext, wrapperCodeCategory)
        .then(function (result) {
            const expectedResult = "0";
            return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
        })
};