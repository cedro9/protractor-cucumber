"use strict";

const cadastreButton = "[name='cadastreButton']";

const utils = require('../../scripts/utils'),
    fillCombo = utils.fillCombo,
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    addTextTags = utils.addTextTags,
    present = require("../../scripts/wait").present,
    dblClick = require("../../scripts/events").dblClick,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../../scripts/scroll"),
    taginput = require("../../scripts/taginput"),
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages"),
    transfer = require('../../scripts/transferPanel'),
    moveLeftToRigth = transfer.moveLeftToRigth,
    moveRigthToLeft = transfer.moveRigthToLeft,
    moveToPreValidator = transfer.moveToPreValidator;

module.exports = {
    cadastre
}

function cadastre(code, name, description) {
    navigate.to("Cadastro", "Embarcadores");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};