"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    filter = require('../../scripts/filter'),
    navigate = require("../../scripts/navigate"),
    editButton = "[name='editButton']",
    submitButton = "[name='buttonSubmit']",
    okButton = "[name='buttonOk']",
    carriersRestrictionActive = "[name='restrictionSwitch.carriersRestrictionActive']";

module.exports = {
    setCarrierRestrictiontoToUser,
    unsetCarrierRestrictiontoToUser
};

function setCarrierRestrictiontoToUser(user) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.users']");
    // navigate.to("Administração", "Cadastros gerais");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(user);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick(editButton);
            utils.selectCheckbox(carriersRestrictionActive);
            utils.elementClick(submitButton);
            return utils.elementClick(okButton);
        };
    });
};

function unsetCarrierRestrictiontoToUser(user) {
    navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.users']");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(user);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick(editButton);
            utils.unselectCheckbox(carriersRestrictionActive);
            utils.elementClick(submitButton);
            return utils.elementClick(okButton);
        };
    });
};