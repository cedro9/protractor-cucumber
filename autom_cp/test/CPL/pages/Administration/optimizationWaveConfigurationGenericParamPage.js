"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('./genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    setPreviousContext,
    setIteration,
    setOtimizationGroup,
    setCarrierZoneGrouper,
    setCarrierZone,
    setNextSplitterContext,
    setNextContext,
    fillOptimizationWaveConfigurationGenericParam,
    fillOptimizationWaveConfiguration,
    filterOptimizationWaveConfiguration,
    removeOptimizationWaveConfigurationGenericParam
};

function setPreviousContext(context) {
    return utils.addTextTags("[name='previousContext']", context)
};

function setIteration(iteration) {
    return utils.fillNumber("[name='iteration']", iteration)
};

function setOtimizationGroup(group) {
    return utils.fillNumber("[name='optimizationGroup']", group)
};

function setCarrierZoneGrouper(carrierzonegrouper) {
    return utils.addTextTags("[name='carrierZoneGrouper']", carrierzonegrouper)
};

function setCarrierZone(carrierzone) {
    return utils.addTextTags("[name='carrierZone']", carrierzone)
};

function setNextSplitterContext(nextsplittercontext) {
    return utils.addTextTags("[name='nextSplitterContext']", nextsplittercontext)
};

function setNextContext(nextcontext) {
    return utils.addTextTags("[name='nextContext']", nextcontext)
};

function fillOptimizationWaveConfigurationGenericParam(context, iteration, group, carrierzonegrouper, carrierzone, nextsplittercontext, nextcontext) {
    return genericParam.navigateToParamEditingPage('Configuração de ondas de otimização')
        .then(function () {
            return filterRuleToDestroyTripAndGetCount(carrierzonegrouper, carrierzone)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        fillOptimizationWaveConfiguration(context, iteration, group, carrierzonegrouper, carrierzone, carrierzone, nextsplittercontext, nextcontext);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function fillOptimizationWaveConfiguration(context, iteration, group, carrierzonegrouper, carrierzone, nextsplittercontext, nextcontext) {
    setPreviousContext(context);
    setIteration(iteration);
    setOtimizationGroup(group);
    setCarrierZoneGrouper(carrierzonegrouper);
    setCarrierZone(carrierzone);
    setNextSplitterContext(nextsplittercontext);
    return setNextContext(nextcontext);
};

function removeOptimizationWaveConfigurationGenericParam(carrierzonegrouper, carrierzone) {
    return genericParam.navigateToParamEditingPage('Configuração de ondas de otimização')
        .then(function () {
            genericParam.tableViewParam();
            return filterOptimizationWaveConfiguration(carrierzonegrouper, carrierzone)
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

function filterOptimizationWaveConfiguration(carrierzonegrouper, carrierzone) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Agrupador de ZT", "Agrupador de ZT");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Zona de transporte", "Zona de transporte");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Agrupador de ZT-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzonegrouper);
    utils.addTextTags("[name='Zona de transporte-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrierzone);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};