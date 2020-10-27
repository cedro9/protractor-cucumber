"use strict";

const utils = require("../scripts/utils"),
    messages = require("../scripts/messages"),
    filter = require("../scripts/filter"),
    fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo;

module.exports = {
    cadastre,
    setclassificationType
};

function cadastre(code, name, description, classificationType) {
    navigate.to("Administração", "Classificações");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick("[name='cadastreButton']");
            fillBasicInfo(code, name, description);
            setclassificationType(classificationType);
            utils.elementClick("[name='buttonSubmit']");
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        }
    });
};

function setclassificationType(classificationType) {
    return utils.addTextTags("[name='classificationTypetagInput']", classificationType);
};