"use strict";

const editButton = "[name='editButton']",
    editGenericParamDataButton = "[name='genericParamDefinitionEditData']",
    tableViewButton = "[name='tableViewType']",
    cancelButton = "[name='buttonCancel']",
    addButton = "[name='addButton']",
    okButton = "[name='buttonOk']",
    removeButton = "[name='removeButton']",
    importButton = "[name='importButton']",
    saveButton = "[name='nlgGenericParamDataSaveButton']",
    saveTransferButton = "[name='saveTransfer']";

const utils = require('../../scripts/utils'),
    fillNumber = utils.fillNumber,
    elementClick = utils.elementClick,
    addTextTags = utils.addTextTags,
    filterGenericParamByNameAndGetCount = require('../../scripts/filter').filterGenericParamByNameAndGetCount,
    importSpreadsheets = require('../../scripts/utils').importSpreadsheets,
    validaMensagem = require('../../scripts/messages'),
    navigate = require('../../scripts/navigate'),
    validaAtributoXpath = require('../../scripts/messages');

module.exports = {
    tableViewParam,
    addParam,
    editParam,
    saveParam,
    cancelParam,
    removeDataParam,
    importParam,
    confirmParam,
    clickOkButton,
    setPreValidator,
    navigateToParamEditingPage,
    changeShaftTo,
    saveTransferParam
};

function tableViewParam() {
    return elementClick(tableViewButton);
};

function addParam() {
    return elementClick(addButton);
};

function editParam() {
    elementClick(editButton);
    return elementClick(editGenericParamDataButton);
};

function saveParam() {
    return elementClick(saveButton);
};

function clickOkButton() {
    return elementClick(okButton);
}

function importParam() {
    addParam();
    return elementClick(importButton);
};

function cancelParam() {
    return elementClick(cancelButton);
};

function removeDataParam() {
    return elementClick(removeButton);
};

function confirmParam() {
    return elementClick(okButton);
};

function fillOrdem(order) {
    return fillNumber("[name='Ordem']", order);
};

function fillPreValidator(validatorName) {
    return addTextTags("[name='Pré-validador']", validatorName);
};

function fillOptimitazionContext(contextCode) {
    return addTextTags("[name='Contexto de Otimização']", contextCode);
};

function navigateToParamEditingPage(genericParam) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.genericParamDefinitions']");
    var countBeforeEditionPromise = filterGenericParamByNameAndGetCount(genericParam);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            return editParam();
        }
    });
};

function setPreValidator(genericParamName, validatorName, contextCode) {
    navigateToParamEditingPage(genericParamName);
    addParam();
    fillOrdem("100");
    fillPreValidator(validatorName);
    fillOptimitazionContext(contextCode);
    saveParam();
    elementClick(okButton);
    return cancelParam();
};

function changeShaftTo(shaft) {
    utils.elementClick("[name='viewType']");
    return utils.elementClick("[name='transferable-" + shaft + "']");
};

function saveTransferParam() {
    return elementClick(saveTransferButton);
};