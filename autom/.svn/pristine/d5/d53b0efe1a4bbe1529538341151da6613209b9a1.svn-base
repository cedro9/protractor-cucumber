"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('../../pages/Administration/genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setTypeClassification,
    setClassification,
    fillRuleToDestroyTripGenericParam,
    filterRuleToDestroyTripAndGetCount,
    removeRuleToDestroyTripGenericParam
}

function setTypeClassification(typeclassification) {
    return utils.addTextTags("[name='Tipo de classificação']", typeclassification);

};

function setClassification(classification) {
    return utils.addTextTags("[name='Classificação']", classification);

};

function fillRuleToDestroyTripGenericParam(typeclassification, classification) {
    return genericParam.navigateToParamEditingPage('Regra para destruição de viagens')
        .then(function () {
            genericParam.tableViewParam();
            return filterRuleToDestroyTripAndGetCount(typeclassification, classification)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setTypeClassification(typeclassification);
                        setClassification(classification);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function removeRuleToDestroyTripGenericParam(typeclassification, classification) {
    return genericParam.navigateToParamEditingPage('Regra para destruição de viagens')
        .then(function () {
            genericParam.tableViewParam();
            return filterRuleToDestroyTripAndGetCount(typeclassification, classification)
                .then(function (regCount) {
                    if (regCount === 1) {
                        genericParam.removeDataParam();
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterRuleToDestroyTripAndGetCount(typeclassification, classification) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Tipo de classificação", "Tipo de classificação");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Classificação", "Classificação");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Tipo de classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", typeclassification);
    utils.addTextTags("[name='Classificação-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classification);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};