"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;

const utils = require('../../scripts/utils'),
    addTextTags = utils.addTextTags,
    fillNumber = utils.fillNumber,
    navigate = require("../../scripts/navigate"),
    filterGenericParamByNameAndGetCount = require("../../scripts/filter").filterGenericParamByNameAndGetCount,
    editParam = require("./genericParamPage").editParam,
    addParam = require("./genericParamPage").addParam,
    saveParam = require("./genericParamPage").saveParam,
    clickOkButton = require("./genericParamPage").clickOkButton,
    cancelParam = require("./genericParamPage").cancelParam;

const { moveRigthToLeft,
    moveAllToRight } = require("../../scripts/transferPanel");

module.exports = {
    fillUserCarrierRestrictionGenericParam
};

function fillUserCarrierRestrictionGenericParam(carrier, user) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount("Transportadoras restringidas para o usuário");
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            editParam();
            changeTransferAxisToCarrier();
            filterByUser(user);
            blockAllItems();
            unblockItem(carrier);
            saveInEditionModal();
            saveInEditionSummary();
            clickOkButton();
            return cancelParam();
        }
    });
};

function saveInEditionSummary() {
    utils.elementClick("[name='genericParamEditionConfirmationOk']");
};

function saveInEditionModal() {
    utils.elementClick("[name='saveTransfer']");
};

function unblockItem(carrier) {
    moveRigthToLeft("[class='nlgDualListPanelRight col-xs-12 col-sm-6']", carrier);
};

function blockAllItems() {
    moveAllToRight();
};

function filterByUser(user) {
    setUser(user);
    search();
};

function search() {
    utils.elementClick("[name='syncButton']");
};

function setUser(user) {
    utils.addTextTags("[name='entity']", user);
};

function changeTransferAxisToCarrier() {
    changeTransferAxis();
    selectCarrierAxis();
};

function selectCarrierAxis() {
    utils.elementClick("[name='transferable-Transportadora']");
};

function changeTransferAxis() {
    utils.elementClick("[name='viewType']");
};