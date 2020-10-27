"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('./genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setRateDefault,
    editClassificationRulesGenericParam,
    filterClassificationRuleAndGetCount,
    
};

function setRateDefault(ratedefault) {
    return utils.fillNumber("[name='Taxa default']", ratedefault);
};

function editClassificationRulesGenericParam(carrierzonegrouper, carrierzone, ratedefault) {
    return genericParam.navigateToParamEditingPage('Regras para classificação')
        .then(function () {
            return filterClassificationRuleAndGetCount(carrierzonegrouper, carrierzone)
                .then(function (regCount) {
                    if (regCount === 1) {
                        setRateDefault(ratedefault);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterClassificationRuleAndGetCount(carrierzonegrouper, carrierzone) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de Zona de Transporte", "Agrupador de Zona de Transporte");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de Transporte", "Zona de Transporte");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Agrupador de Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzonegrouper);
    utils.addTextTags("[name='Zona de Transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};