"use strict";
const { Given, When, Then } = require("cucumber");

const {
    cadastre,
    setArrangementContext,
    setUnitizerScript,
    setObjectiveFunction,
    setWrapperSelection,
    setPreValidatorsOptimization,
    setManualUnitizerPreRestrictionsValidator,
    getSaveButton,
    getTabObjectiveFunction,
    getTabWrapperSelection,
    getTabRestrictions,
    removeUnitizationContext,
    setPreRestrictionValidatorUnitizerConfigs,
    setManualUnitizerPreRestrictionValidatorUnitizerConfigs,
    setPosRestrictionValidatorUnitizerConfigs,
    setManualUnitizerPosRestrictionValidatorUnitizerConfigs,
    setSelectionValidatorUnitizerConfigs,
    setMaxUnitizationLevelUnitizerConfigs,
    setUnitizationScriptUnitizerConfigs,
    removeContextoDeUnitizaçãodoContextoDeOtimizacaoDefault,
    cadastreWithNameCodeAndDescription,
    disablePreRestrictionValidatorUnitizerConfigs } = require('../pages/unitizerConfigsPage');

var utils = require("../scripts/utils"),
    navigate = require("../scripts/navigate"),
    fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
    filterBySourceIdAndGetCount = require("../scripts/filter").filterBySourceIdAndGetCount,
    elementRemove = utils.elementRemove,
    elementClick = utils.elementClick,
    validaMensagem = require("../scripts/messages").validaMensagem;

Given('que cadastro um contexto de unitização {string}', function (context) {
    return cadastreWithNameCodeAndDescription(context);
}
);

Given('que cadastro um contexto de unitização', function () {
    return cadastre();
});

Given('que excluo o contexto de unitização {string}', function (context) {
    return removeUnitizationContext(context);
});

Given('que configuro o validador de pré-restrição {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return setPreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig);
});

Given('que configuro o validador de pré-restrição manual {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return setManualUnitizerPreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig);
});

Given('que configuro o validador de pós-restrição {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return setPosRestrictionValidatorUnitizerConfigs(validator, unitizerConfig);
});

Given('que configuro o validador de pós-restrição manual {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return setManualUnitizerPosRestrictionValidatorUnitizerConfigs(validator, unitizerConfig);
});

Given('que configuro o validador de seleção {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return setSelectionValidatorUnitizerConfigs(validator, unitizerConfig);
});

Given('que configuro o Nível Máximo de Unitização {string} no contexto de unitização {string}', function (valor, unitizerConfig) {
    return setMaxUnitizationLevelUnitizerConfigs(valor, unitizerConfig);
});

Given('que configuro o Script de Unitização {string} no contexto de unitização {string}', function (scriptUnitization, unitizerConfig) {
    return setUnitizationScriptUnitizerConfigs(scriptUnitization, unitizerConfig);
});

Given('que removo o contexto de unitização do contexto de otimização', function () {
    return removeContextoDeUnitizaçãodoContextoDeOtimizacaoDefault();
});

Given('que desconfiguro o validador de pré-restrição {string} no contexto de unitização {string}', function (validator, unitizerConfig) {
    return disablePreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig);
});