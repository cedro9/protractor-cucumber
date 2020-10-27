"use strict";

const cadastreButton = "[name='cadastreButton']",
okButton = "[name='buttonOk']",
saveButton = "[name='buttonSubmit']";

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick,
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages"),
    navigate = require("../../scripts/navigate");

module.exports = {
    cadastre,
    fillProductCategoryClassification
}

function cadastre(code, name, description) {
    navigate.to("Cadastro", "Categorias de produto");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick(okButton);
        }
    });
};

function fillProductCategoryClassification(classification, productCategoryCode) {
    navigate.to("Cadastro", "Categorias de produto");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(productCategoryCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick("[name='editButton']");
            elementClick("[name='classifications']");
            fillPaletização(classification);
            elementClick(saveButton);
            // messages.validaMensagem("A entidade foi salva com sucesso.");
            return elementClick(okButton);
        }
    });
};

function fillPaletização(classificationFilter) {
    const classificationType = "Paletização",
        classificationSelection = "(Paletização) Paletizado - Paletizado";
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};