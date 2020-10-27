"use strict";

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick,
    navigate = require("../../scripts/navigate"),
    filter = require("../../scripts/filter"),
    messages = require('../../scripts/messages'),
    cadastreButton = "[name='cadastreButton']",
    saveButton = "[name='buttonSave']",
    okButton = "[name='buttonOk']",
    nameField = "[name='name']",
    nextStatusField = "[name='occurrenceStatusPossibleNextStatuses']",
    typeStatusField = "[name='occurrenceStatusAllowedStatusTypes']";

module.exports = {
    cadastreInitialStatus,
    cadastreFinalStatus
};

function cadastre(statusType, name) {
    navigate.to("Monitoramento", "Status de ocorrência");
    var countBeforeInsertionPromise = filter.filterByNameAndGetCount(name);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            setName(name);
            setStatusType(statusType);
            if (statusType !== "Final") {
                setNextStatus();
            }
            elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick(okButton);
        }
    });
};

function cadastreInitialStatus(statusType, name) {
    return cadastre(statusType, name);
};

function cadastreFinalStatus(statusType, name) {
    return cadastre(statusType, name);
};

function setNextStatus() {
    return utils.addTextTags(nextStatusField, "Informativa");
};

function setStatusType(statusType) {
    return utils.addTextTags(typeStatusField, statusType);
};

function setName(name) {
    return utils.fillText(nameField, name);
};