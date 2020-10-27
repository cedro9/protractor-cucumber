"use strict";

const okButton = "[name='buttonOk']",
    saveButton = "[name='buttonSave']",
    cadastreButton = "[name='createButton']",
    backButton = "[name='occurrenceCategoryEditionBack']";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick,
    navigate = require("../../scripts/navigate"),
    messages = require("../../scripts/messages"),
    filter = require("../../scripts/filter"),
    transfer = require('../../scripts/transferPanel');

module.exports = {
    cadastreUser,
    deleteUser
};

function cadastreUser(email, profile) {
    let self;
    navigate.to("Monitoramento", "Usuários");
    var countBeforeInsertionPromise = filter.webFilterByEmailAndGetCount(email);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            setEmail(email);
            setProfile(profile);
            setPassword("neolog");
            setConfirmationPassword("neolog");
            elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.", self);
            elementClick(okButton);
            return elementClick(backButton);
        }
    });
};

function deleteUser(email) {
    navigate.to("Monitoramento", "Usuários");
    var countBeforeDeletionPromise = filter.webFilterByEmailAndGetCount(email);
    return countBeforeDeletionPromise.then(function (regCount) {
        if (regCount === 1) {
            return filter.excluirPosFiltro(email);
        }
    });
};

function setConfirmationPassword(password) {
    utils.fillText("[name='passwordFields.confirmation']", password);
};

function setPassword(password) {
    utils.fillText("[name='passwordFields.password']", password);
};

function setProfile(profile) {
    utils.addTextTags("[name='userProfile']", profile);
};

function setEmail(email) {
    utils.fillText("[name='user.email']", email);
};